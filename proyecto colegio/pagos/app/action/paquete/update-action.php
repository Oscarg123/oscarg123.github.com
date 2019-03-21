<?php
	if(isset($_SESSION["user_id"])){
		if(count($_POST)>0){
			$paquete = PaqueteData::getById($id);
			$paquete->paquete = Database::cleanChain($_POST["paquete"]);
			$paquete->precio = Database::cleanChain($_POST["precio"]);
			$paquete->update();
			Core::alert('success','¡Bien hecho!','Servicio actualizado con exitó!');
			// echo $id;
			Core::redir("paquete/edit/$id");
		}
	}
?>