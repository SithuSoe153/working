<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();

if (!isset($_SESSION['cid'])) {
    
    header('location: accountchoose.php');
    exit();

}

$id = $_SESSION['cid'];
$name = $_SESSION['cusname'];
$email = $_SESSION['cusmail'];
?>

<h1>
    <?php echo $id; ?>
</h1>

<h1>
    <?php echo $name; ?>
</h1>

<h1>
    <?php echo $email; ?>
</h1>

<img src="images/_1.jpg" alt="">