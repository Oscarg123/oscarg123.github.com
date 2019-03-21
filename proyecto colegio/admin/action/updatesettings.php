<?php
session_start();
include "../config/config.php";
if(isset($_SESSION["user_id"]) && !empty($_POST)){
	foreach ($_POST as $name => $value) {
		$sql = mysqli_query($con,"UPDATE configuration set val=\"$value\" where name=\"$name\"");
   		// echo $value."=>".$name."<br>";
	}
	if ($sql) {
   			$msj=sha1(md5("actualizado correctamente"));
			header("location: ../configuration.php?succes=$msj");
   	}
	// echo "actualizado correectamente";
}else{
	// echo "hubo un error";
	header("location: ../configuration.php?error=$msj");
}

?>
