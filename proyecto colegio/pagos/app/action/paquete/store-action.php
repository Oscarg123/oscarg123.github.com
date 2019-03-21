<?php
	if(isset($_SESSION["user_id"])){
		if(count($_POST)>0){
			$paquete = new PaqueteData();
			$paquete->paquete = Database::cleanChain($_POST["paquete"]);
			$paquete->precio = Database::cleanChain($_POST["precio"]);
			$paquete->add();
			Core::alert('success','¡Bien hecho!','Servicio agregado exitosamente!');
			Core::redir("paquete/create");
		}
	}
?>