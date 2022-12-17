<?php

session_start();

if (isset($_POST['submit'])) {
    # code...

    $name = $_POST['name'];
    $pass = $_POST['pass'];

    $_SESSION['sname'] = $name;
    $_SESSION['spass'] = $pass;
    header('location: test1.php');
}

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <form action="test.php" method="POST">


        <input type="text" name="name" placeholder="name">
        <input type="password" name="pass" placeholder="pass">

        <button name="submit">Submit</button>

    </form>

</body>

</html>