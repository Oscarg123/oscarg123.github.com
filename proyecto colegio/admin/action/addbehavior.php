<?php

if(!empty($_POST)){
	include "../config/config.php";

	$alumn=intval($_POST["alumn_id"]);
	$team=intval($_POST["team_id"]);
	$date_at=$_POST["date_at"];

	$sql=mysqli_query($con, "select * from behavior where alumn_id=$alumn and team_id=$team and date_at=\"$date_at\"");
	while ($row=mysqli_fetch_array($sql)) {
		$id=$row['id'];

	}

	if(mysqli_num_rows($sql)==0 && $_POST["kind_id"]!=""){
		$alumn_id = $_POST["alumn_id"];
		$team_id = $_POST["team_id"];
		$kind_id = $_POST["kind_id"];
		$date_at = $_POST["date_at"];

		$sql = mysqli_query($con, "insert into behavior (date_at,alumn_id,team_id,kind_id) value (\"$date_at\",$alumn_id,$team_id,$kind_id)");


	}else if(mysqli_num_rows($sql)!=0 && $_POST["kind_id"]!=""){

		$kind_id = $_POST["kind_id"];
		$update = mysqli_query($con, "update behavior set kind_id=\"$kind_id\" where id=$id");
	}else if($_POST["kind_id"]==""){

		$del = mysqli_query($con, "delete from behavior where id=$id");
	}
}

?>