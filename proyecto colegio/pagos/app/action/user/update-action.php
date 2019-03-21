<?php
	if(isset($_SESSION["user_id"])){
		if(count($_POST)>0){
			$user = UserData::getById($id);
			$user->nombre = Database::cleanChain($_POST["nombre"]);
			$user->usuario = Database::cleanChain($_POST["usuario"]);
			$user->perfil = Database::cleanChain($_POST["perfil"]);
			$user->update();
			if($_POST["password"]!=""){
				$user->password = Database::cleanChain(CryptoHelper::encrypt($_POST['password']));
				$user->update_passwd();
				Core::alert('success','¡Bien hecho!','Se ha actualizado la contraseña!');
			}
			Core::alert('success','¡Bien hecho!','Usuario actualizado con exitó!');
			Core::redir("usuario/edit/$id");
		}
	}
?>