<?php

	include "../config/config.php";
	include "../lib/class.upload.php";

		$handle = new Upload($_FILES['image']);
    	if ($handle->uploaded) {
    		$url="../img/slides/";
        	$handle->Process($url);

            $image = $handle->file_dst_name;
		}
		if(isset($_POST["is_public"])) { 
			$is_public=1; 
		}else{ 
			$is_public=0; 
		}

		$title=$_POST['title'];
		$created_at = "NOW()";

		$sql = mysqli_query($con,"insert into slide (title,image,is_public,created_at) value (\"$title\",\"$image\",$is_public,$created_at)");


		if ($sql) {
			//echo "slider insertado";
		} else {
			//echo "hubo un error al cargar el slider";
		}
		

 		header("location: ../sliders.php");

?>