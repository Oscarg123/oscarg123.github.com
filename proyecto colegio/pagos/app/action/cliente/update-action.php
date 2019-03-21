<?php
	if(isset($_SESSION["user_id"])){
		if(count($_POST)>0){
			$cliente = ClienteData::getById($id);
			$cliente->nombre = Database::cleanChain($_POST["nombre"]);
			$cliente->rfc = Database::cleanChain($_POST["rfc"]);
			$cliente->direccion = Database::cleanChain($_POST["direccion"]);
			// $cliente->idpoblacion = Database::cleanChain($_POST["idpoblacion"]);
			$cliente->telefono = Database::cleanChain($_POST["telefono"]);
			$cliente->correo = Database::cleanChain($_POST["correo"]);
			$cliente->fecha_contratacion = Database::cleanChain($_POST["fecha_contratacion"]);
			$cliente->fecha_mensualidad = Database::cleanChain($_POST["fecha_mensualidad"]);
			$cliente->idpaquete = Database::cleanChain($_POST["idpaquete"]);
			// $cliente->idantena = Database::cleanChain($_POST["idantena"]);
			// $cliente->equipo = Database::cleanChain($_POST["equipo"]);
			// $cliente->serie = Database::cleanChain($_POST["serie"]);
			// $cliente->valor_equipo = Database::cleanChain($_POST["valor_equipo"]);
			// $cliente->router = Database::cleanChain($_POST["router"]);
			// $cliente->tubo_mts = Database::cleanChain($_POST["tubo_mts"]);
			// $cliente->cable_mts = Database::cleanChain($_POST["cable_mts"]);
			// $cliente->costo_instalacion = Database::cleanChain($_POST["costo_instalacion"]);
			$cliente->notas = Database::cleanChain($_POST["notas"]);
			$cliente->iva = Database::cleanChain( isset($_POST["iva"]) ? 1 : 0) ;
			$cliente->estado = Database::cleanChain( isset($_POST["estado"]) ? 1 : 0) ;
			$cliente->update();
			Core::alert('success','¡Bien hecho!','Cliente actualizado con exitó!');
			Core::redir("cliente/edit/$id");
		}
	}
?>