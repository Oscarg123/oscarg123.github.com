<?php
if(!empty($_GET)){
	include "../config/config.php";

	$team_id = intval($_GET["t_id"]);
	$alumn_id = intval($_GET["al_id"]);

	$at = mysqli_query($con, "select * from alumn_team where alumn_id=$alumn_id and team_id=$team_id");
	if(mysqli_num_rows($at)==0){

		$sql = mysqli_query($con,"insert into alumn_team (alumn_id,team_id) value (\"$alumn_id\",$team_id)");

		if ($sql) {
			//echo "datos insertados";
		} else {
			//echo "hubo un error al insertar los datos";
		}

		print "<script>alert('Asignacion de grupo exitosa!');</script>";
		print "<script>window.location='../openalumn.php?id=$alumn_id';</script>";
	}
}
?>