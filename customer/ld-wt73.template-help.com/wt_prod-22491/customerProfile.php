<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();
include('connect.php');

if (!isset($_SESSION['cid'])) {
    
    header('location: accountchoose.php');
    exit();

}

$id = $_SESSION['cid'];
$name = $_SESSION['cusname'];
$email = $_SESSION['cusmail'];
?>

<a href="CLogOut.php">
    <button>Logout</button>
</a>

<h1>
    <?php echo $id; ?>
</h1>

<h1>
    <?php echo $name; ?>
</h1>

<h1>
    <?php echo $email; ?>
</h1>

<?php
// global $id;

$select = "Select * From customer Where customerid = '$id'";
$query = mysqli_query($connection,$select);
$data = mysqli_fetch_array($query);

$img = $data['customerprofile'];

?>

<img src="<?php echo $img ?>" alt="">


