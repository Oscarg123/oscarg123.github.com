<?php
	if (empty($_POST['alumn_id'])) {
           $errors[] = "ID vacío";
        } else if (
			!empty($_POST['alumn_id'])
		){

		include "../config/config.php";//Contiene funcion que conecta a la base de datos

		$name = $_POST["name"];
		$lastname = $_POST["lastname"];
		$address = $_POST["address"];
		$email = $_POST["email"];
		$phone = $_POST["phone"];
		$c1_fullname = $_POST["c1_fullname"];
		$c1_address = $_POST["c1_address"];
		$c1_phone = $_POST["c1_phone"];
		$c1_note = $_POST["c1_note"];

		$id=$_POST['alumn_id'];

		$sql = "update alumn set name=\"$name\",lastname=\"$lastname\",address=\"$address\",phone=\"$phone\",email=\"$email\",c1_fullname=\"$c1_fullname\",c1_address=\"$c1_address\",c1_phone=\"$c1_phone\",c1_note=\"$c1_note\" where id=$id";

		$query_update = mysqli_query($con,$sql);
			if ($query_update){
				$messages[] = "El alumno ha sido actualizado satisfactoriamente.";
			} else{
				$errors []= "Lo siento algo ha salido mal intenta nuevamente.".mysqli_error($con);
			}
		} else {
			$errors []= "Error desconocido.";
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
			<?php
			}
			if (isset($messages)){
				
				?>
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

?>