<?php

	include "../config/config.php";
	include "../lib/class.upload.php";


	$id=intval($_POST['alumn_id']);
	$tid = intval($_POST["tid"]); 

	$handle = new Upload($_FILES['image']);
	if ($handle->uploaded) {
		$url="../img/profiles/";
		$handle->Process($url);
	    $image = $handle->file_dst_name;
	    $update_image=mysqli_query($con, "update alumn set image=\"$image\" where id=$id");

	    if ($update_image) {
	    	//echo "image actualizada";
	    } else {
	    	//echo "error al actuzaliar la imagen";
	    }
	}




 		header("location: ../editalumn.php?id=$id&tid=$tid");

?>