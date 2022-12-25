<?php

function Imagef($name, $paths, $echo)
{

    global $nam, $ser, $paths, $echo;
    $nam = $_FILES[$name]['name'];
    $ser = $_FILES[$name]['tmp_name'];
}

function Imagedo()
{

    global $nam, $ser, $filename, $paths, $echo;

    $Image = $nam;
    $Folder = $paths;

    $filename = $Folder . '_' . $Image;
    $image = copy($ser, $filename);
    if (!$image) {
        echo "<p>$echo</p>";
        exit();
    }
}
