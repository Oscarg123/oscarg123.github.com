<?php
	session_start();

	include "../config/config.php";

	if(!isset($_SESSION['user_id']) && $_SESSION['user_id'] == null){
		header("location: ../");
	}

	$id=intval($_GET["id"]);
	$del = mysqli_query($con,"delete from team where id=$id");
	if ($del) {
		//echo "eliminado";
	} else {
		//echo "hubo un error al eliminar";
	}
	
	print "<script>window.location='../teams.php';</script>";

?>