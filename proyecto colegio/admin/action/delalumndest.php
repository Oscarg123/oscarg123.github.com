<?php
	
	session_start();

	include "../config/config.php";

	if(!isset($_SESSION['user_id']) && $_SESSION['user_id'] == null){
		header("location: ../");
	}

	$id=intval($_GET["id"]);
	$del = mysqli_query($con, "delete from alumn_dest where id=$id");
	if ($del) {
		//echo "eliminado";
	} else {
		//echo "hubo un error al eliminar";
	}

		$_SESSION["del_alumn"]= 1;
	
	print "<script>window.location='../historyalumnsdest.php';</script>";

?>