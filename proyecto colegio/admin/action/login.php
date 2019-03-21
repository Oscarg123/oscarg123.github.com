<?php
	session_start();

	if (isset($_POST['token'])) {
			
		//Contiene las variables de configuracion para conectar a la base de datos
		include_once "../config/config.php";


		$email=$_POST["email"];
		$password=sha1(md5($_POST["password"]));

		$sql = "SELECT * FROM user WHERE email=\"$email\" or username=\"$email\"  AND password =\"$password\";";
            $query = mysqli_query($con,$sql);
			$numrows = mysqli_num_rows($query);

		if ($row = mysqli_fetch_array($query)) 
		{
			if ($row['is_active']>0) { //comprovamos que el usuario este activo

					$_SESSION['user_id'] = $row['id'];

					print "Cargando ... $email";
					print "<script>window.location='../dashboard.php';</script>";
				
				
			}else{
				$error=sha1(md5("cuenta inactiva"));
				header("location: ../index.php?error=$error");
			}
		}else{
			$invalid=sha1(md5("contrasena y email invalido"));
			header("location: ../index.php?invalid=$invalid");
		}
	}
?>