<?php
	if(isset($_SESSION["user_id"])){
		if(count($_POST)>0){
			$user = new UserData();
			$user->nombre = Database::cleanChain($_POST["nombre"]);
			$user->usuario = Database::cleanChain($_POST["usuario"]);
			$user->perfil = Database::cleanChain($_POST["perfil"]);
			$user->password = Database::cleanChain(CryptoHelper::encrypt($_POST['password']));
			$user->add();
			Core::alert('success','¡Bien hecho!','Usuario agregado exitosamente!');
			Core::redir("usuario/create");
		}
	}
?>