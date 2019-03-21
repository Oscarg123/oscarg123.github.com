<?php

if(!empty($_POST)){
	include "../config/config.php";

	$alumn=intval($_POST["alumn_id"]);
	$team=intval($_POST["team_id"]);
	$date_at=$_POST["date_at"];

	$assistence = mysqli_query($con, "select * from assistance where alumn_id=$alumn and team_id=$team and date_at=\"$date_at\"");
	while ($row=mysqli_fetch_array($assistence)) {
		$id=$row['id'];
	}

	if(mysqli_num_rows($assistance)==0 && $_POST["kind_id"]!=""){
	$alumn_id = $_POST["alumn_id"];
	$team_id = $_POST["team_id"];
	$kind_id = $_POST["kind_id"];
	$date_at = $_POST["date_at"];

		$sql = mysqli_query($con, "insert into assistance (date_at,alumn_id,team_id,kind_id) value (\"$date_at\",$alumn_id,$team_id,$kind_id)");


	}else if(mysqli_num_rows($assistance)!=0 && $_POST["kind_id"]!=""){
		$kind_id = $_POST["kind_id"];
		$update = mysqli_query($con, "update assistance set kind_id=\"$kind_id\" where id=$id");

	}else if($_POST["kind_id"]==""){
		$del = mysqli_query($con, "delete from assistance where id=$id");
		
	}
}

?>