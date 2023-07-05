<!DOCTYPE html>
<html lang="en">

<?php
include("connection/connect.php");
include_once 'product-action.php';
error_reporting(0);
session_start();

function function_alert()
{
    echo "<script>alert('Thank you. Your Order has been placed!');</script>";
    echo "<script>window.location.replace('your_orders.php');</script>";
}

if (empty($_SESSION["user_id"])) {
    header('Location: login.php');
    exit();
} else {
    foreach ($_SESSION["cart_item"] as $item) {
        // Sanitize input values
        $title = mysqli_real_escape_string($db, $item["title"]);
        $quantity = mysqli_real_escape_string($db, $item["quantity"]);
        $price = mysqli_real_escape_string($db, $item["price"]);

        $item_total += ($price * $quantity);

        if (isset($_POST['submit'])) {
            $SQL = "INSERT INTO users_orders (u_id, title, quantity, price) VALUES ('" . mysqli_real_escape_string($db, $_SESSION["user_id"]) . "','" . $title . "','" . $quantity . "','" . $price . "')";
            mysqli_query($db, $SQL);

            unset($_SESSION["cart_item"]);

            // Insert credit card information into the database if payment method is "Pay By Credit Card"
            $paymentMethod = mysqli_real_escape_string($db, $_POST['mod']);
            if ($paymentMethod === 'paypal') {
                $cardNumber = mysqli_real_escape_string($db, $_POST['card-number']);
                $cardHolderName = mysqli_real_escape_string($db, $_POST['card-holder-name']);
                $expiryMonth = mysqli_real_escape_string($db, $_POST['expiry-month']);
                $expiryYear = mysqli_real_escape_string($db, $_POST['expiry-year']);
                $cvv = mysqli_real_escape_string($db, $_POST['cvv']);

                // Encryption key for AES encryption
                $encryptionKey = "YourEncryptionKey";

                // Encrypt credit card data
                $encryptedCardNumber = encryptData($cardNumber, $encryptionKey);
                $encryptedCardHolderName = encryptData($cardHolderName, $encryptionKey);
                $encryptedCardMonth = encryptData($expiryMonth, $encryptionKey);
                $encryptedCardYear = encryptData($expiryYear, $encryptionKey);
                $encryptedCardCvv = encryptData($cvv, $encryptionKey);

                $insertSql = "INSERT INTO credit_cards (user_id, card_number, card_holder_name, expiry_month, expiry_year, cvv) VALUES ('" . mysqli_real_escape_string($db, $_SESSION['user_id']) . "', '" . $encryptedCardNumber . "', '" . $encryptedCardHolderName . "', '" . $encryptedCardMonth . "', '" . $encryptedCardYear . "', '" . $encryptedCardCvv . "')";
                mysqli_query($db, $insertSql);
            }

            $success = "Thank you. Your order has been placed!";
            function_alert();
        }
    }
}


// Encryption function using AES
function encryptData($data, $key)
{
    $cipher = "aes-256-cbc";
    $ivLength = openssl_cipher_iv_length($cipher);
    $iv = openssl_random_pseudo_bytes($ivLength);
    $encryptedData = openssl_encrypt($data, $cipher, $key, OPENSSL_RAW_DATA, $iv);
    $encryptedData = base64_encode($iv . $encryptedData);
    return $encryptedData;
}

// Decryption function using AES
function decryptData($encryptedData, $key)
{
    $cipher = "aes-256-cbc";
    $encryptedData = base64_decode($encryptedData);
    $ivLength = openssl_cipher_iv_length($cipher);
    $iv = substr($encryptedData, 0, $ivLength);
    $encryptedData = substr($encryptedData, $ivLength);
    $decryptedData = openssl_decrypt($encryptedData, $cipher, $key, OPENSSL_RAW_DATA, $iv);
    return $decryptedData;
}
?>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>Checkout || Online Food Ordering System - Code Camp BD</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>

    <div class="site-wrapper">
        <header id="header" class="header-scroll top-header headrom">
            <nav class="navbar navbar-dark">
                <div class="container">
                    <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse"
                        data-target="#mainNavbarCollapse">&#9776;</button>
                    <a class="navbar-brand" href="index.php"> <img class="img-rounded" src="images/logo.png"
                            alt="" width="18%"> </a>
                    <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"> <a class="nav-link active" href="index.php">Home <span
                                        class="sr-only">(current)</span></a> </li>
                            <li class="nav-item"> <a class="nav-link active" href="restaurants.php">Restaurants
                                    <span class="sr-only"></span></a> </li>

                            <?php
                        if (empty($_SESSION["user_id"])) {
                            echo '<li class="nav-item"><a href="login.php" class="nav-link active">Login</a> </li>
                                  <li class="nav-item"><a href="registration.php" class="nav-link active">Register</a> </li>';
                        } else {
                            echo  '<li class="nav-item"><a href="your_orders.php" class="nav-link active">My Orders</a> </li>';
                            echo  '<li class="nav-item"><a href="logout.php" class="nav-link active">Logout</a> </li>';
                        }
                        ?>

                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <div class="page-wrapper">
            <div class="top-links">
                <div class="container">
                    <ul class="row links">

                        <li class="col-xs-12 col-sm-4 link-item"><span>1</span><a href="restaurants.php">Choose
                                Restaurant</a></li>
                        <li class="col-xs-12 col-sm-4 link-item "><span>2</span><a href="#">Pick Your favorite
                                food</a></li>
                        <li class="col-xs-12 col-sm-4 link-item active"><span>3</span><a href="checkout.php">Order
                                and Pay</a></li>
                    </ul>
                </div>
            </div>

            <div class="container">

                <span style="color:green;">
                    <?php echo $success; ?>
                </span>

            </div>

            <div class="container m-t-30">
                <form action="" method="post">
                    <div class="widget clearfix">

                        <div class="widget-body">
                            <div class="row">

                                <div class="col-sm-12">
                                    <div class="cart-totals margin-b-20">
                                        <div class="cart-totals-title">
                                            <h4>Cart Summary</h4>
                                        </div>
                                        <div class="cart-totals-fields">

                                            <table class="table">
                                                <tbody>
                                                    <tr>
                                                        <td>Cart Subtotal</td>
                                                        <td><?php echo "$" . $item_total; ?></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Delivery Charges</td>
                                                        <td>Free</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-color"><strong>Total</strong></td>
                                                        <td class="text-color"><strong><?php echo "$" . $item_total; ?></strong></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="payment-option">
                                        <ul class="list-unstyled">
                                            <li>
                                                <label class="custom-control custom-radio m-b-20">
                                                    <input name="mod" id="radioStacked1" checked value="COD"
                                                        type="radio" class="custom-control-input">
                                                    <span class="custom-control-indicator"></span>
                                                    <span class="custom-control-description">Cash on Delivery</span>
                                                </label>
                                            </li>
                                            <li>
                                                <label class="custom-control custom-radio m-b-10">
                                                    <input name="mod" id="radioStacked2" value="paypal" type="radio"
                                                        class="custom-control-input">
                                                    <span class="custom-control-indicator"></span>
                                                    <span class="custom-control-description">Pay By Credit Card</span>
                                                </label>
                                            </li>
                                        </ul>
                                        <div id="paypal-form" style="display: none;">
                                            <div class="form-group">
                                                <label for="card-number">Card Credit Number</label>
                                                <input type="text" class="form-control" id="card-number"
                                                    name="card-number" placeholder="Enter card credit number">
                                            </div>
                                            <div class="form-group">
                                                <label for="card-holder-name">Card Holder Name</label>
                                                <input type="text" class="form-control" id="card-holder-name"
                                                    name="card-holder-name" placeholder="Enter card holder name">
                                            </div>
                                            <div class="form-group">
                                                <label for="expiry-month">Expiry Month</label>
                                                <select class="form-control" id="expiry-month" name="expiry-month">
                                                    <option value="">-- Select Month --</option>
                                                    <option value="01">January</option>
                                                    <option value="02">February</option>
                                                    <option value="03">March</option>
                                                    <option value="04">April</option>
                                                    <option value="05">May</option>
                                                    <option value="06">June</option>
                                                    <option value="07">July</option>
                                                    <option value="08">August</option>
                                                    <option value="09">September</option>
                                                    <option value="10">October</option>
                                                    <option value="11">November</option>
                                                    <option value="12">December</option>
                                                    <!-- Add more options for other months -->
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="expiry-year">Expiry Year</label>
                                                <select class="form-control" id="expiry-year" name="expiry-year">
                                                    <option value="">-- Select Year --</option>
                                                    <option value="2023">2023</option>
                                                    <option value="2024">2024</option>
                                                    <option value="2025">2025</option>
                                                    <option value="2026">2026</option>
                                                    <option value="2027">2027</option>
                                                    <option value="2028">2028</option>
                                                    <option value="2029">2029</option>
                                                    <option value="2030">2030</option>
                                                    <option value="2031">2031</option>
                                                    <!-- Add more options for future years -->
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="cvv">CVV</label>
                                                <input type="text" class="form-control" id="cvv" name="cvv"
                                                    placeholder="Enter CVV">
                                            </div>
                                        </div>
                                        <p class="text-xs-center">
                                            <input type="submit" onclick="return validateForm();" name="submit"
                                                class="btn btn-success btn-block" value="Order Now">
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <?php include "include/footer.php" ?>

    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>

    <script>
        $(document).ready(function () {
            $('input[type="radio"]').click(function () {
                if ($(this).attr("value") == "paypal") {
                    $("#paypal-form").show();
                }
                if ($(this).attr("value") == "COD") {
                    $("#paypal-form").hide();
                }
            });
        });
    </script>


<script>
    //validate credit card form
        function validateForm() {
            var paymentMethod = document.querySelector('input[name="mod"]:checked').value;

            if (paymentMethod === 'paypal') {
                var cardNumber = document.getElementById('card-number').value;
                var cardHolderName = document.getElementById('card-holder-name').value;
                var expiryMonth = document.getElementById('expiry-month').value;
                var expiryYear = document.getElementById('expiry-year').value;
                var cvv = document.getElementById('cvv').value;

                if (cardNumber === "" || cardHolderName === "" || expiryMonth === "" || expiryYear === "" || cvv === "") {
                    alert("Please fill in all the credit card details.");
                    return false;
                }
            }
        }

        document.getElementById('radioStacked2').addEventListener('change', function() {
            if (this.checked) {
                document.getElementById('paypal-form').style.display = 'block';
            } else {
                document.getElementById('paypal-form').style.display = 'none';
            }
        });
    </script>

</body>

</html>
