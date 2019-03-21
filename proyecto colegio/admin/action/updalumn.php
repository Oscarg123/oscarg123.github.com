<?php
	if (empty($_POST['alumn_id'])) {
           $errors[] = "ID vacío";
        } else if (
			!empty($_POST['alumn_id'])
		){

		include "../config/config.php";//Contiene funcion que conecta a la base de datos

		/*$name = $_POST["name"];
		$lastname = $_POST["lastname"];
		$address = $_POST["address"];
		$email = $_POST["email"];
		$phone = $_POST["phone"];
		$c1_fullname = $_POST["c1_fullname"];
		$c1_address = $_POST["c1_address"];
		$c1_phone = $_POST["c1_phone"];
		$c1_note = $_POST["c1_note"];*/

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

		$id=$_POST['alumn_id'];
		// $sql = "update alumn set name=\"$name\",lastname=\"$lastname\",address=\"$address\",phone=\"$phone\",email=\"$email\",c1_fullname=\"$c1_fullname\",c1_address=\"$c1_address\",c1_phone=\"$c1_phone\",c1_note=\"$c1_note\" where id=$id";

		$sql = "update alumn set ";

		//inserción
		// $insert = "insert into alumn ";
		//campos de la bd
		$sql.= "
		
			codigo=\"$codigo\",
			name=\"$name\",
			lastname=\"$lastname\",
			matricula=\"$matricula\",
			anos=\"$anos\",
			sexo=\"$sexo\",
			lugar_hermanos=\"$lugar_hermanos\",
			factor_sangre=\"$factor_sangre\",
			rh=\"$rh\",
			marcar=\"$marcar\",
	
			fecha_nacimiento=\"$fecha_nacimiento\",
			departamento=\"$departamento\",
			municipio=\"$municipio\",

			extendida_en_departamento=\"$extendida_en_departamento\",
			extendida_en_municipio=\"$extendida_en_municipio\",
			clase_identificacion=\"$clase_identificacion\",
			numero_identificacion=\"$numero_identificacion\",

			depto_residencia=\"$depto_residencia\",
			localizacion_municipio=\"$localizacion_municipio\",
			barrio=\"$barrio\",
			estrato=\"$estrato\",
			direccion=\"$direccion\",

			sisben=\"$sisben\",
			nivel=\"$nivel\",
			otras_eps=\"$otras_eps\",

			situacion_ano_anterior=\"$situacion_ano_anterior\",
			procedencia=\"$procedencia\",
			reincidente=\"$reincidente\",
			historial=\"$historial\",
			padres=\"$padres\",

			telefono_fijo=\"$telefono_fijo\",
			celular=\"$celular\",
			retiro_alumno=\"$retiro_alumno\",			

			madre_nombre=\"$madre_nombre\",
			madre_acudiente=\"$madre_acudiente\",
			madre_telefono=\"$madre_telefono\",
			madre_celular=\"$madre_celular\",
			madre_ocupacion=\"$madre_ocupacion\",
			madre_empresa=\"$madre_empresa\",
			madre_tel_empresa=\"$madre_tel_empresa\",

			padre_nombre=\"$padre_nombre\",
			padre_acudiente=\"$padre_acudiente\",
			padre_telefono=\"$padre_telefono\",
			padre_celular=\"$padre_celular\",
			padre_ocupacion=\"$padre_ocupacion\",
			padre_empresa=\"$padre_empresa\",
			padre_tel_empresa=\"$padre_tel_empresa\",
			
			acudiente_nombre=\"$acudiente_nombre\",
			acudiente_telefono=\"$acudiente_telefono\",
			acudiente_tel_empresa=\"$acudiente_tel_empresa\",
			acudiente_parentesco=\"$acudiente_parentesco\",

			responsable_costos_nombre=\"$responsable_costos_nombre\",
			responsable_costos_parentesco=\"$responsable_costos_parentesco\",


			observaciones=\"$observaciones\"
		
		";
		$sql .= " where id=$id";


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