<?php 
	if(isset($_SESSION["user_id"])){
		unset($_SESSION["user_id"]);
		unset($_SESSION["is_admin"]);
		//session_destroy();
		Core::redir("index");
		Core::alert('success','¡Bien hecho!','Has sido desconectado.');
	}
?>