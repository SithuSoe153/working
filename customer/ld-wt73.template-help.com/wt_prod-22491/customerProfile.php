<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();
include('connect.php');
include('cheadera.php');


if (!isset($_SESSION['cid'])) {

    // header('location: accountchoose.php');
    // exit();

    echo "<script>window.location='accountchoose.php'</script>";
} else {
    $id = $_SESSION['cid'];
    $name = $_SESSION['cusname'];
    $email = $_SESSION['cusmail'];


    $select = "SELECT * FROM customer where customerid='$id'";
    $query = mysqli_query($connection, $select);
    $count = mysqli_num_rows($query);
    if ($count > 0) {
        $data = mysqli_fetch_array($query);
        $cusid = $data['customerid'];
        $cusname = $data['customername'];
        $cusemail = $data['customeremail'];
        $password = $data['customerpassword'];
        $phonenumber = $data['customerphonenumber'];
        $address = $data['customeraddress'];
        $cusprofile = $data['customerprofile'];
    }
}



if (isset($_POST['btnregister'])) {
    $txtcusid = $_POST['txtcusid'];
    $txtcusname = $_POST['txtcusname'];
    $txtcusemail = $_POST['txtcusemail'];
    $txtcuspassword = $_POST['txtcuspassword'];
    $txtcusphonenumber = $_POST['txtcusphonenumber'];
    $txtcusaddress = $_POST['txtcusaddress'];


    //////////////////////////////////Image/////////////////////////////////

    $tet = $_FILES['cusprofile']['name'];

    if (!$tet) {
        $filename = $cusprofile;
    } else{
        echo "<script>alert('Change')</script>";

        $Image = $_FILES['cusprofile']['name'];
        $Folder = "../../../work/images/";
        $filename = $Folder . '_' . $Image;
        $image = copy($_FILES['cusprofile']['tmp_name'], $filename);


        if (!$image) {
            echo "<p>Cannot Upload  cus Profile</p>";
            exit();
        }
    }

    /////////////////////////////////////////////////////////////////////////

    $update = "UPDATE customer 
	set customername='$txtcusname',customeremail='$txtcusemail',customerpassword='$txtcuspassword',customerphonenumber='$txtcusphonenumber',customeraddress='$txtcusaddress',customerprofile='$filename' 
	where customerid='$txtcusid'";
    $query = mysqli_query($connection, $update);
    if ($query) {
        echo "<script>alert('Profile Update Successfully')</script>";
        echo "<script>window.location='../wt_prod-22491'</script>";
    }
}


?>

<form action="customerProfile.php" method="POST" enctype="multipart/form-data">

    <section class="breadcrumbs-custom">
        <div class="parallax-container" data-parallax-img="../../../work/images/bg-blog-22.jpg">
            <div class="breadcrumbs-custom-body parallax-content context-dark">
                <div class="container">
                    <h2 class="breadcrumbs-custom-title"> User Profile</h2>
                </div>
            </div>
        </div>
        <div class="breadcrumbs-custom-footer">
            <div class="container">
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.php">Account</a></li>
                    <li class="active"><a href="customerProfile.php">Profile</a></li>
                </ul>
            </div>
        </div>
    </section>
    <!-- Section Shop-->
    <section class="section section-xxl bg-default text-md-start" style="background-color:#efefef;">


        <div class="container d-flex flex-column">
            <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
                <div class="d-table-cell align-middle">
                    <div class="text-center mt-4">
                        <h3 class="fw-medium">Customer Profile</h3>

                        <td>Update Your Information Here !</td>
                    </div>

                    <div class="card">
                        <div class="card-body">
                            <div class="m-sm-4">

                                <div class="mb-3">
                                    <label class="form-label">Name</label>
                                    <input type="hidden" name="txtcusid" value="<?php echo $cusid ?>">
                                    <input class="form-control form-control-lg" type="text" name="txtcusname" required value="<?php echo $cusname ?>" />
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Email Address</label>
                                    <input class="form-control form-control-lg" type="text" name="txtcusemail" required value="<?php echo $cusemail ?>" />
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Phone Number</label>
                                    <input class="form-control form-control-lg" type="text" name="txtcusphonenumber" required value="<?php echo $phonenumber ?>" />
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Password</label>
                                    <input class="form-control form-control-lg" type="text" name="txtcuspassword" required value="<?php echo $password ?>" />
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Address</label>
                                    <textarea name="txtcusaddress" class="form-control" rows="2">
											<?php echo $address ?>
											</textarea>
                                </div>


                                <div class="mb-3" style="margin-right: 40%">
                                    <div class="mb-3" id="selectedBanner" style="margin-left: 52%;margin-bottom: 52%"></div>
                                    <div class="form-control form-control-lg">
                                        <div id="forfile">
                                            <input name="cusprofile" class="img" id="file" type="file" accept="image/*" />
                                            <label for="file">
                                                <i class="fa fa-image"></i> &nbsp
                                                Choose Picture


                                            </label>
                                        </div>
                                    </div>
                                </div>

                                Current Profile <br>
                                <img src="<?php echo $cusprofile ?>" width="100px" height="100px">


                                <script>
                                    <?php
                                    include('js/selectedBanner.js');
                                    ?>
                                </script>

                                <div class="text-center mt-3">
                                    <button name="btnregister" class="btn btn-lg btn-primary btn-zakaria" style="top: 15px;">Register</button>
                                    <a href="../wt_prod-22491" class="btn btn-lg btn-primary btn-zakaria">Logout</a>
                                </div>

                                <div class="text-center mt-3">
                                    <a href="../wt_prod-22491" class="btn btn-lg btn-primary btn-zakaria" style="top: 15px;">Back</a>
                                    <input type="reset" class="btn btn-lg btn-primary btn-zakaria" value="Reset">
                                </div>

                                <div class="text-center mt-3">
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

    </section>
</form>

<?php
include('cfooter.php');
?>