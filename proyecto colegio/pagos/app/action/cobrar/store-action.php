<?php
	if(isset($_SESSION["user_id"])){
		if(count($_POST)>0){
			$month = Database::cleanChain($_POST["date"]);
			$pago = new PagoData();
			$pago->idcliente = Database::cleanChain($_POST["idcliente"]);
			$pago->idpaquete = Database::cleanChain($_POST["idpaquete"]);
			// $pago->fecha = Database::cleanChain($_POST["fecha_inicio"]);

			if(date("m")==$month){
				$pago->fecha = Database::cleanChain(date("Y-".$month."-d"));
			}else{
				$pago->fecha = Database::cleanChain(date("Y-".$month."-5"));
			}
			

			$pago->efectivo = Database::cleanChain($_POST["efectivo"]);
			$pago->hora = Database::cleanChain($_POST["hora"]);
			$pago->pago = Database::cleanChain($_POST["pago"]);

			if ($_POST["metodo_pago"]==1) {
				$pago->forma_pago = Database::cleanChain($_POST["metodo_pago"]);
				$pago->numero_deposito = null;
			}else{
				$pago->forma_pago = Database::cleanChain($_POST["metodo_pago"]);
				$pago->numero_deposito = Database::cleanChain($_POST["num_deposito"]);
			}

			$numero_deposito = $pago->numero_deposito;
			// echo $numero_deposito;


			// echo $pago->fecha;
			// $date = date("Y/".$date."/d");
			$date = date("d/".$month."/Y");

			// $daterange = "01/12/2018 - 29/12/2018";
			// $daterange = "01".date('/m/Y').' - '.date('d/m/Y');
			$daterange = "01".date('/'.$month.'/Y').' - '.$date;
			// echo $daterange;
			$pagosClientes = PagoData::getClientDaterange($pago->idcliente,$daterange);
			$pagarEsteMes = false;
			//si hay pagos en el rango
			if (count($pagosClientes)>0) {
				$pagarEsteMes=true;
				// echo "si entre";
			}


			//si ya hay pago ese mes, ese año
			$pagoExists=false;
			$existePagoCliente = PagoData::ExistPayment_MonthDay($month,$_POST["idcliente"]);
			if (count($existePagoCliente)>0) {
				$pagoExists = true;
			}
			// echo count($existePagoCliente);


			//consulta para comprobar si hay un deposito con el mismo numero
			$depositosClientes = PagoData::getBy('numero_deposito',$numero_deposito);

			if($pagoExists){
				Core::alert('warning','¡Error!','No puedes cobrar dos veces en el mismo mes!');
				Core::redir("cobrar/edit/$id");
			}else if($pagarEsteMes){
				Core::alert('danger','¡Error!','No puedes cobrar dos veces en el mismo mes!');
				Core::redir("cobrar/edit/$id");
			}else if ($pago->efectivo<$pago->pago) {
				Core::alert('warning','¡Error!','El efectivo no debe de ser menor que el pago!');
				Core::redir("cobrar/edit/$id");
			}else if(count($depositosClientes)==1){
				Core::alert('danger','¡Error!','El numero de deposito ya existe!');
				Core::redir("cobrar/edit/$id");
			}else{
				// echo $daterange;
				$pago->add();
				$UltimoPago = PagoData::lastById();
				// echo $UltimoPago->last;
				Core::alert('success','¡Bien hecho!','cobro agregado exitosamente!');
				Core::redir("cobrar/show/$UltimoPago->last");
			}
		}
	}
?>