<?php

if(!empty($_POST)){
	include "../config/config.php";

	$alumn_id = $_POST["alumn_id"];
	$block_id = $_POST["block_id"];
	$val = $_POST["val"];


	$sql = mysqli_query($con, "select * from calification where alumn_id=$alumn_id and block_id=$block_id");
	while ($row=mysqli_fetch_array($sql)) {
		$id=$row['id'];
	}

	if(mysqli_num_rows($sql)==0 && $_POST["val"]!=""){


		$add = mysqli_query($con,"insert into calification (val,alumn_id,block_id) value (\"$val\",$alumn_id,$block_id)");

	}else if(mysqli_num_rows($sql)!=0 && $_POST["val"]!=""){

		$update=mysqli_query($con,"update calification set val=\"$val\" where id=$id");

	}else if($_POST["val"]==""){

		$del=mysqli_query($con, "delete from calification where id=$id");
	}
}

?>