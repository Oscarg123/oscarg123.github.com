<?php
	if (empty($_POST['mod_id'])) {
           $errors[] = "ID vacío";
        } else if (empty($_POST['name'])){
			$errors[] = "Nombre vacío";
		} else if (
			!empty($_POST['name'])
		){

		include "../config/config.php";//Contiene funcion que conecta a la base de datos

		$username=$_POST['username'];
		$name=$_POST['name'];
		$lastname=$_POST['lastname'];
		$email=$_POST['email'];
		$password=sha1(md5($_POST['password']));
		$id=$_POST['mod_id'];

		$sql="UPDATE user SET username=\"$username\", name=\"$name\", lastname=\"$lastname\", email=\"$email\" WHERE id=$id";
		$query_update = mysqli_query($con,$sql);
			if ($query_update){
				$messages[] = "El catedratico ha sido actualizado satisfactoriamente.";
				if ($_POST['password']!="") {
					$update_password=mysqli_query($con, "update user set password=\"$password\" where id=$id");
					if ($update_password) {
						$messages[] = " Y la contraseña se modifico";
					}
					
				} 
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