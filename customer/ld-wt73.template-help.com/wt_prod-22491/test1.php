<?php

session_start();

$name = $_SESSION['sname'];
$pass = $_SESSION['spass'];

?>

<h3><?php echo $name ?></h3>
<h3><?php echo $pass ?></h3>