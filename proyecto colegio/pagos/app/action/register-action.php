<?php
	if(count($_POST)>0){
		$user = new UserData();
		$user->nombre = Database::cleanChain($_POST["name"]);
		$user->usuario = Database::cleanChain($_POST["email"]);
		// $user->email = Database::cleanChain($_POST["email"]);
		$user->password = Database::cleanChain(CryptoHelper::encrypt($_POST["password"]));
		$user->add();
		Core::alert('success','¡Bien hecho!','Registrado exitosamente!');
		// Core::redir("index");
	}
?>