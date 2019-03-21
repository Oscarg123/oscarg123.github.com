<?php
	session_start();

	include "../config/config.php";

	if(!isset($_SESSION['user_id']) && $_SESSION['user_id'] == null){
		header("location: ../");
	}

	$id=intval($_GET["id"]);
	$tid=intval($_GET["tid"]);


		$teams = mysqli_query($con, "select * from alumn_team where alumn_id=$id");
		foreach ($teams as $t) {

			$alumn_id=$t['alumn_id'];
			$team_id=$t['team_id'];
			$t=mysqli_query($con, "delete from alumn_team where alumn_id=$alumn_id and team_id=$team_id");
		}

		$alumn = mysqli_query($con, "select * from alumn where id=$id");
		if ($r=mysqli_fetch_array($alumn)) {
			$id_a=$r['id'];
		}
		
		$del = mysqli_query($con, "delete from alumn where id=$id_a");


	print "<script>window.location='../alumns.php?id=$tid';</script>";
	//echo "<br> eliminado del grupo $tid";
?>