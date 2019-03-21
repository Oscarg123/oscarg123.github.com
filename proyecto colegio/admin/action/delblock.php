<?php
	session_start();

	include "../config/config.php";

	if(!isset($_SESSION['user_id']) && $_SESSION['user_id'] == null){
		header("location: ../");
	}

	$id=intval($_GET["id"]);

	$sql = mysqli_query($con, "select * from block where id=$id");
	while ($row=mysqli_fetch_array($sql)) {
		$team_id=$row['team_id'];
	}

	$del = mysqli_query($con, "delete from block where id=$id");
	if ($del) {
		//echo "eliminado";
	} else {
		//echo "hubo un error al eliminar";
	}
	
	print "<script>window.location='../blocks.php?team_id=$team_id';</script>";

?>