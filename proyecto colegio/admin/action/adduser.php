<?php	
	session_start();
	/*Inicia validacion del lado del servidor*/
	if (empty($_POST['name'])) {
           $errors[] = "Nombre vacío";
        } else if (
			!empty($_POST['name']) 
		){


		include "../config/config.php";//Contiene funcion que conecta a la base de datos

		$username=$_POST['username'];
		$name=$_POST['name'];
		$lastname=$_POST['lastname'];
		$email=$_POST['email'];
		$password=sha1(md5($_POST["password"]));
		$created_at="NOW()";
		//$user_id=$_SESSION['user_id'];

		$sql="INSERT INTO user (username,name,lastname,email,password,created_at) VALUES (\"$username\",\"$name\", \"$lastname\",\"$email\",\"$password\",$created_at)";
		$query_new_insert = mysqli_query($con,$sql);
			if ($query_new_insert){
				$messages[] = "El catedratico ha sido ingresado satisfactoriamente.";
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