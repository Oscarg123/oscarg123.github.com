<?php	
	session_start();
	/*Inicia validacion del lado del servidor*/
	if (empty($_POST['team_id'])) {
           $errors[] = "ID vacío";
        } else if (
			!empty($_POST['team_id']) 
		){


		include "../config/config.php";//Contiene funcion que conecta a la base de datos

		//datos generales
		$codigo = $_POST["codigo"];
		$name = $_POST["name"];
		$lastname = $_POST["lastname"];
		$matricula = $_POST["matricula"];
		$anos = $_POST["anos"];
		$sexo = $_POST["sexo"];
		$lugar_hermanos = $_POST["lugar_hermanos"];
		$factor_sangre = $_POST["factor_sangre"];
		$rh = $_POST["rh"];
		$marcar = (isset($_POST["marcar"])) ? 1 : 0;
		

		//datos de nacimiento
		$fecha_nacimiento = $_POST["fecha_nacimiento"];
		$departamento = $_POST["departamento"];
		$municipio = $_POST["municipio"];


		//datos de identificacion
		$extendida_en_departamento = $_POST["extendida_en_departamento"];
		$extendida_en_municipio = $_POST["extendida_en_municipio"];
		$clase_identificacion = $_POST["clase_identificacion"];
		$numero_identificacion = $_POST["numero_identificacion"];


		
		//datos de localizacion
		$depto_residencia = $_POST["depto_residencia"];
		$localizacion_municipio = $_POST["localizacion_municipio"];
		$barrio = $_POST["barrio"];
		$estrato = $_POST["estrato"];
		$direccion = $_POST["direccion"];


		//datos de afiliacion
		$sisben = $_POST["sisben"];
		$nivel = $_POST["nivel"];
		$otras_eps = $_POST["otras_eps"];

		//datos academicos
		$situacion_ano_anterior = $_POST["situacion_ano_anterior"];
		$procedencia = $_POST["procedencia"];
		$reincidente = $_POST["reincidente"];
		$historial = $_POST["historial"];
		$padres = $_POST["padres"];

		//datos de comunicacion
		$telefono_fijo = $_POST["telefono_fijo"];		
		$celular = $_POST["celular"];		
		$retiro_alumno = $_POST["retiro_alumno"];	
		

		//datos de la madre
		$madre_nombre = $_POST["madre_nombre"];	
		$madre_acudiente = $_POST["madre_acudiente"];	
		$madre_telefono = $_POST["madre_telefono"];	
		$madre_celular = $_POST["madre_celular"];	
		$madre_ocupacion = $_POST["madre_ocupacion"];	
		$madre_empresa = $_POST["madre_empresa"];	
		$madre_tel_empresa = $_POST["madre_tel_empresa"];	

		//datos del padre
		$padre_nombre = $_POST["padre_nombre"];	
		$padre_acudiente = $_POST["padre_acudiente"];	
		$padre_telefono = $_POST["padre_telefono"];	
		$padre_celular = $_POST["padre_celular"];	
		$padre_ocupacion = $_POST["padre_ocupacion"];	
		$padre_empresa = $_POST["padre_empresa"];	
		$padre_tel_empresa = $_POST["padre_tel_empresa"];	

		//otro acudiente
		$acudiente_nombre = $_POST["acudiente_nombre"];	
		$acudiente_telefono = $_POST["acudiente_telefono"];	
		$acudiente_tel_empresa = $_POST["acudiente_tel_empresa"];	
		$acudiente_parentesco = $_POST["acudiente_parentesco"];	

		//responsable de los costos
		$responsable_costos_nombre = $_POST["responsable_costos_nombre"];	
		$responsable_costos_parentesco = $_POST["responsable_costos_parentesco"];	


		$observaciones = $_POST["observaciones"];	



		$user_id = $_SESSION["user_id"];
		$created_at = "NOW()";
		$team_id = $_POST["team_id"];
		$image="default.png";
		$now = date("Y-m-01");


		//inserción
		$insert = "insert into alumn ";
		//campos de la bd
		$insert.= "
		(
			codigo,
			name,
			lastname,
			matricula,
			anos,
			sexo,
			lugar_hermanos,
			factor_sangre,
			rh,
			marcar,
	
			fecha_nacimiento,
			departamento,
			municipio,

			extendida_en_departamento,
			extendida_en_municipio,
			clase_identificacion,
			numero_identificacion,

			depto_residencia,
			localizacion_municipio,
			barrio,
			estrato,
			direccion,

			sisben,
			nivel,
			otras_eps,

			situacion_ano_anterior,
			procedencia,
			reincidente,
			historial,
			padres,

			telefono_fijo,
			celular,
			retiro_alumno,			

			madre_nombre,
			madre_acudiente,
			madre_telefono,
			madre_celular,
			madre_ocupacion,
			madre_empresa,
			madre_tel_empresa,

			padre_nombre,
			padre_acudiente,
			padre_telefono,
			padre_celular,
			padre_ocupacion,
			padre_empresa,
			padre_tel_empresa,
			
			acudiente_nombre,
			acudiente_telefono,
			acudiente_tel_empresa,
			acudiente_parentesco,

			responsable_costos_nombre,
			responsable_costos_parentesco,


			observaciones,



			image,
			user_id,
			created_at,
			fecha_mensualidad,
			idpaquete
		)
		";

		//variables donde estan almacenados los datos enviados por post
		$insert.= "value (
			\"$codigo\",
			\"$name\",
			\"$lastname\",
			\"$matricula\",
			\"$anos\",
			\"$sexo\",
			\"$lugar_hermanos\",
			\"$factor_sangre\",
			\"$rh\",
			\"$marcar\",
			\"$fecha_nacimiento\",
			\"$departamento\",
			\"$municipio\",
			\"$extendida_en_departamento\",
			\"$extendida_en_municipio\",
			\"$clase_identificacion\",
			\"$numero_identificacion\",
			\"$depto_residencia\",
			\"$localizacion_municipio\",
			\"$barrio\",
			\"$estrato\",
			\"$direccion\",
			\"$sisben\",
			\"$nivel\",
			\"$otras_eps\",
			\"$situacion_ano_anterior\",
			\"$procedencia\",
			\"$reincidente\",
			\"$historial\",
			\"$padres\",
			\"$telefono_fijo\",
			\"$celular\",
			\"$retiro_alumno\",
			\"$madre_nombre\",
			\"$madre_acudiente\",
			\"$madre_telefono\",
			\"$madre_celular\",
			\"$madre_ocupacion\",
			\"$madre_empresa\",
			\"$madre_tel_empresa\",
			\"$padre_nombre\",
			\"$padre_acudiente\",
			\"$padre_telefono\",
			\"$padre_celular\",
			\"$padre_ocupacion\",
			\"$padre_empresa\",
			\"$padre_tel_empresa\",
			\"$acudiente_nombre\",
			\"$acudiente_telefono\",
			\"$acudiente_tel_empresa\",
			\"$acudiente_parentesco\",
			\"$responsable_costos_nombre\",
			\"$responsable_costos_parentesco\",

			\"$observaciones\",

			\"$image\",
			$user_id,
			$created_at,
			\"$now\",
			\"$team_id\"

		)";
		//$nuevaConsulta = mysqli_query($con,$insert);






		/*$name = $_POST["name"];
		$lastname = $_POST["lastname"];
		$address = $_POST["address"];
		$email = $_POST["email"];
		$phone = $_POST["phone"];
		$c1_fullname = $_POST["c1_fullname"];
		$c1_address = $_POST["c1_address"];
		$c1_phone = $_POST["c1_phone"];
		$c1_note = $_POST["c1_note"];*/



		

		// $sql = "insert into alumn (image,name,lastname,address,phone,email,user_id,created_at,c1_fullname,c1_address,c1_phone,c1_note,fecha_mensualidad,idpaquete) value (\"$image\",\"$name\",\"$lastname\",\"$address\",\"$phone\",\"$email\",$user_id,$created_at,\"$c1_fullname\",\"$c1_address\",\"$c1_phone\",\"$c1_note\",\"$now\",\"$team_id\")";

		// $query_new_insert = mysqli_query($con,$sql);
		$query_new_insert = mysqli_query($con,$insert);
		if (!$query_new_insert) {
			$errors []= "Lo siento algo ha salido mal intenta nuevamente.";
		}

		/*$u = mysqli_query($con, "select count(id) as count from alumn");
		if ($row=mysqli_fetch_array($u)) {
			$count = $row['count'];
		} 
		$alumn_id = $count++;*/
		$last=mysqli_query($con,"select LAST_INSERT_ID(id) as last from alumn order by id desc limit 0,1 ");
		$rw=mysqli_fetch_array($last);
		$alumn_id=$rw['last'];

		$sql2 = "insert into alumn_team (alumn_id,team_id) value ($alumn_id,$team_id)";
		$query_new_insert2 = mysqli_query($con,$sql2);
			if ($query_new_insert){
				if($query_new_insert2){
					$messages[] = "Tu alumno ha sido ingresado satisfactoriamente.";
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