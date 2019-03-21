<?php	
	session_start();
	/*Inicia validacion del lado del servidor*/
	if (empty($_POST['alumn_id'])) {
           $errors[] = "Alumno vacío";
        }elseif (empty($_POST['team_id'])) {
        	$errors[] = "Grado vacío";
        } else if (
			!empty($_POST['alumn_id']) 
		){

		include "../config/config.php";//Contiene funcion que conecta a la base de datos

		$alumn_id=$_POST['alumn_id'];
		//$user_id=$_SESSION['user_id'];
		$team_id=$_POST['team_id'];
		$description=$_POST['description'];
		$created_at="NOW()";


		$sql="INSERT INTO alumn_dest (team_id, alumn_id, description, created_at) VALUES ($team_id,$alumn_id, \"$description\", \"$created_at\")";
		$query_new_insert = mysqli_query($con,$sql);
			if ($query_new_insert){
				$messages[] = "Tu Alumno destacado ha sido ingresado satisfactoriamente.";
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