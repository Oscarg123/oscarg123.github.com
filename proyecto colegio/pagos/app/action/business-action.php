<?php
	/**
	* @author abisoft-gt
	**/
if(isset($_SESSION["user_id"])){
	if (empty($_POST['business_name'])){
		$errors[] = "Nombre del negocio está vacío";
	}else if (empty($_POST['number_id'])){
		$errors[] = "Número de registro está vacío";
	} else if (empty($_POST['email'])){
		$errors[] = "Email está vacío";
	} elseif (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
        $errors[] = "Su dirección de correo electrónico no está en un formato de correo electrónico válida";
    } else if (empty($_POST['phone'])){
		$errors[] = "Teléfono está vacío";
	} else if (empty($_POST['address1'])){
		$errors[] = "La dirección está vacía";
	}  elseif (empty($_POST['city'])) {
        $errors[] = "La ciudad está vacía";
    } elseif (empty($_POST['state'])) {
        $errors[] = "Región/Provincia está vacío";
    } elseif (empty($_POST['postal_code'])) {
        $errors[] = "Código Postal está vacío";
    } elseif (empty($_POST['country_id'])) {
        $errors[] = "Selecciona el País";
    }    elseif (
		!empty($_POST['address1'])
		&& !empty($_POST['business_name'])
		&& !empty($_POST['number_id'])
		&& !empty($_POST['city'])
		&& !empty($_POST['state'])
		&& !empty($_POST['postal_code'])
		&& !empty($_POST['country_id'])
		&& filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)
		) {
            $business = BusinessData::getById(1);
			$business->name = Database::cleanChain($_POST["business_name"]);
			$business->industry = Database::cleanChain($_POST["industry"]);
			$business->number_id = Database::cleanChain($_POST["number_id"]);
			$business->email = Database::cleanChain($_POST["email"]);
			$business->phone = Database::cleanChain($_POST["phone"]);
			$business->tax = Database::cleanChain($_POST["tax"]);
			$business->currency = Database::cleanChain($_POST["currency"]);
			$business->timezone = Database::cleanChain($_POST["timezone"]);
			$business->address1 = Database::cleanChain($_POST["address1"]);
			$business->city = Database::cleanChain($_POST["city"]);
			$business->state = Database::cleanChain($_POST["state"]);
			$business->postal_code = Database::cleanChain($_POST["postal_code"]);
			$business->country_id = Database::cleanChain($_POST["country_id"]);
			$business->skin_id = Database::cleanChain($_POST["theme"]);
			$business->update();
            $messages[] = "Los datos han sido actualizados exitosamente.";
	} else {
		$errors[] = " Desconocido";	
	}
	if (isset($errors)){
		?>
		<div class="alert alert-danger" role="alert">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>Error!</strong> 
				<?php
					foreach ($errors as $error) {
						echo $error;
					}
				?>
		</div>
		<?php } if (isset($messages)){ ?>
		<div class="alert alert-success" role="alert">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>¡Bien hecho!</strong>
				<?php
					foreach ($messages as $message) {
						echo $message;
					}
				?>
		</div>
<?php
		}

	}else{
		Core::redir("index");	
	}	
?>
