<?php
	session_start();

	include "../config/config.php";

	if(!isset($_SESSION['user_id']) && $_SESSION['user_id'] == null){
		header("location: ../");
	}

	$id=intval($_GET["id"]);
	$del = mysqli_query($con, "delete from user where id=$id");
	print "<script>window.location='../users.php';</script>";
?>