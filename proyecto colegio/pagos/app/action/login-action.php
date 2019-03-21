<?php
	/**
	* @author abisoft-gt
	*  Proceso de Login
	**/
	if(!empty($_POST)){
		if(!isset($_SESSION["user_id"])){
			if($_POST["email"]!=""&&$_POST["password"]!=""){
				$email = Database::cleanChain($_POST['email']);
				$password = Database::cleanChain(CryptoHelper::encrypt($_POST['password']));
				$user = UserData::getLogin($email,$password);
				if($user!=null){
					$user->ultimo_login();
					$_SESSION["user_id"]=$user->id;
					print "Cargando ... $email";
					Core::redir("home");
				}else{
					Core::alert('warning','¡Aviso!','Usuario y/o contraseña incorrecto!');
					Core::redir("index");
				}
			}else{
				Core::alert('warning','¡Aviso!','Campos Vacios');
				Core::redir("index");
			}
		}else{
			Core::redir("home");	
		}	
	}

?>
