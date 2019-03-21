<?php
	session_start();
	include "../config/config.php";
	include "../lib/class.upload.php";

	$id=intval($_POST['id']);
	$title=$_POST['title'];


	$handle = new Upload($_FILES['image']);
	if ($handle->uploaded) {
		$url="../img/slides/";
		$handle->Process($url);
	    $image = $handle->file_dst_name;
	    $update_image=mysqli_query($con, "update slide set image=\"$image\" where id=$id");

	    if ($update_image) {
	    	//echo "image actualizada";
	    } else {
	    	//echo "error al actuzaliar la imagen";
	    }
	}

	if(isset($_POST["is_public"])) { 
		$is_public=1; 
	}else{ 
		$is_public=0; 
	}

 	$update=mysqli_query($con, "update slide set title=\"$title\",is_public=\"$is_public\" where id=$id");

 	if ($update) {
 		//echo "datos actualizados";
 	} else {
 		//echo "no se pudo actualizar";
 	}
 	
	$_SESSION["slide_upd"]= 1;
 	header("location: ../editslide.php?id=$id");

?>