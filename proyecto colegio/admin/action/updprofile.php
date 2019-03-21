<?php
	session_start();

	if (!isset($_SESSION['user_id']) && $_SESSION['user_id']==null) {
		header("location: ../");
	}

	include "../config/config.php";


	$name = $_POST['name'];
	$lastname = $_POST['lastname'];
	$email = $_POST['email'];
	$id=$_SESSION['user_id'];

	if(isset($_POST['token'])){
		$update=mysqli_query($con,"UPDATE user set name=\"$name\",lastname=\"$lastname\",email=\"$email\" where id=$id");
		if ($update) {
			$success=sha1(md5("datos actualizados"));
            header("location: ../profile.php?success=$success");
	   	}else{
	   		// echo "error";
	   	}

	   	// CHANGE PASSWORD
		if($_POST['password']!=""){

			$password = sha1(md5($_POST['password']));
			$new_password = sha1(md5($_POST['newpassword']));
			$confirm_new_password = sha1(md5($_POST['confirmpassword']));	

			if($_POST['newpassword']==$_POST['confirmpassword']){

				$sql = mysqli_query($con,"SELECT * from user where id=$id");
				while ($row = mysqli_fetch_array($sql)) {
			    	$p = $row['password'];
				}

				if ($p==$password){ //comprobamos que la contraseña sea igual ala anterior

					$update_passwd=mysqli_query($con,"UPDATE user set password=\"$password\" where id=$id");
					if ($update_passwd) {
						$success_pass=sha1(md5("contrasena actualizada"));
            			header("location: ../profile.php?success_pass=$success_pass");
					}
				}else{
					$invalid=sha1(md5("la contrasena no coincide la contraseña con la anterior"));
            		header("location: ../profile.php?invalid=$invalid");
				}
			}else{
				$error=sha1(md5("las nuevas  contraseñas no coinciden"));
            	header("location: ../profile.php?error=$error");
			}
		}
	}else{
		header("location: ../");
	}

?>
