<?php
session_start();
session_destroy();
echo "<script>alert('LogOut Succesful')</script>";
echo "<script>window.location='../wt_prod-22491/'</script>";
