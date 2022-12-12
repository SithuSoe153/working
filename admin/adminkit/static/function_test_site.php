<?php

session_start();
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include('testconnect.php');
include('function_test.php');


if (isset($_POST['btnregister'])) {
    
    Imagef("staffprofile","images/","Cannot upload test profile");
    
    Imagedo();
            
        
        $insert = "INSERT INTO test_image
        (image) 
        VALUES
        ('$filename')";

		$query = mysqli_query($connection, $insert);
		if ($query) {
			echo "<script>alert('Staff Register Successfully')</script>";
            echo "<script>window.location='function_test_site.php'</script>";
		}
        
}

?>

<form action="function_test_site.php" method="post" enctype="multipart/form-data">
    
    
    <input name="staffprofile" type="file" accept="image/*" />
    
    <button name="btnregister">Register</button>

    <?php

$select = "SELECT * FROM test_image";
	$query = mysqli_query($connection, $select);
	$count = mysqli_num_rows($query);
	if ($count > 0) {

            for ($j = 0; $j < $count; $j++) {
                $arr = mysqli_fetch_array($query);

                $Image = $arr['image'];
                
                ?>
                <br>
                <img src="<?php echo $Image ?>" class="avatar img-fluid rounded me-1" alt="Charles Hall" />

                        <?php
                    
            }
        }
    
?>

</form>