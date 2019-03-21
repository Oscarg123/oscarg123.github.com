<?php 
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	$active2="active";
	include "header.php";
	include "sidebar.php";

	$id=intval($_GET['id']);
	$tid=intval($_GET['tid']);
	$alumn=mysqli_query($con,"select * from alumn where id=$id");
	// while ($row=mysqli_fetch_array($alumn)) {
	$row=mysqli_fetch_array($alumn);
		$id_alumn=$row['id'];
		$image_alumn=$row['image'];
		/*$name_alumn=$row['name'];
		$lastname_alumn=$row['lastname'];
		$address_alumn=$row['address'];
		$email_alumn=$row['email'];
		$phone_alumn=$row['phone'];
		$c1_fullname=$row['c1_fullname'];
		$c1_address=$row['c1_address'];
		$c1_phone=$row['c1_phone'];
		$c1_note=$row['c1_note'];*/



		//datos generales
		$codigo = $row["codigo"];
		$name = $row["name"];
		$lastname = $row["lastname"];
		$matricula = $row["matricula"];
		$anos = $row["anos"];
		$sexo = $row["sexo"];
		$lugar_hermanos = $row["lugar_hermanos"];
		$factor_sangre = $row["factor_sangre"];
		$rh = $row["rh"];
		$marcar = (isset($row["marcar"])) ? 1 : 0;
		

		//datos de nacimiento
		$fecha_nacimiento = $row["fecha_nacimiento"];
		$departamento = $row["departamento"];
		$municipio = $row["municipio"];


		//datos de identificacion
		$extendida_en_departamento = $row["extendida_en_departamento"];
		$extendida_en_municipio = $row["extendida_en_municipio"];
		$clase_identificacion = $row["clase_identificacion"];
		$numero_identificacion = $row["numero_identificacion"];


		
		//datos de localizacion
		$depto_residencia = $row["depto_residencia"];
		$localizacion_municipio = $row["localizacion_municipio"];
		$barrio = $row["barrio"];
		$estrato = $row["estrato"];
		$direccion = $row["direccion"];


		//datos de afiliacion
		$sisben = $row["sisben"];
		$nivel = $row["nivel"];
		$otras_eps = $row["otras_eps"];

		//datos academicos
		$situacion_ano_anterior = $row["situacion_ano_anterior"];
		$procedencia = $row["procedencia"];
		$reincidente = $row["reincidente"];
		$historial = $row["historial"];
		$padres = $row["padres"];

		//datos de comunicacion
		$telefono_fijo = $row["telefono_fijo"];		
		$celular = $row["celular"];		
		$retiro_alumno = $row["retiro_alumno"];	
		

		//datos de la madre
		$madre_nombre = $row["madre_nombre"];	
		$madre_acudiente = $row["madre_acudiente"];	
		$madre_telefono = $row["madre_telefono"];	
		$madre_celular = $row["madre_celular"];	
		$madre_ocupacion = $row["madre_ocupacion"];	
		$madre_empresa = $row["madre_empresa"];	
		$madre_tel_empresa = $row["madre_tel_empresa"];	

		//datos del padre
		$padre_nombre = $row["padre_nombre"];	
		$padre_acudiente = $row["padre_acudiente"];	
		$padre_telefono = $row["padre_telefono"];	
		$padre_celular = $row["padre_celular"];	
		$padre_ocupacion = $row["padre_ocupacion"];	
		$padre_empresa = $row["padre_empresa"];	
		$padre_tel_empresa = $row["padre_tel_empresa"];	

		//otro acudiente
		$acudiente_nombre = $row["acudiente_nombre"];	
		$acudiente_telefono = $row["acudiente_telefono"];	
		$acudiente_tel_empresa = $row["acudiente_tel_empresa"];	
		$acudiente_parentesco = $row["acudiente_parentesco"];	

		//responsable de los costos
		$responsable_costos_nombre = $row["responsable_costos_nombre"];	
		$responsable_costos_parentesco = $row["responsable_costos_parentesco"];	


		$observaciones = $row["observaciones"];	











	// }

	$team=mysqli_query($con, "select * from team where id=$tid");
	// while ($rows=mysqli_fetch_array($team)) {
	$rows=mysqli_fetch_array($team);
		$id_team=$rows['id'];
		$name_team=$rows['name'];
	// }

	    //evitar inyecciones sql
    if (mysqli_num_rows($alumn)==null || mysqli_num_rows($team)==null) {
        print "<script>window.location='teams.php'</script>";
    }

    $img_default="img/profiles/default.png";
    if($image_alumn==""){
	    $img=$img_default;
	}else{
		$img="img/profiles/".$image_alumn;
	}
?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-child"></i> Editar Alumno</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-cubes"></i><a href="teams.php">Grados</a></li>		
						<li><i class="fa fa-users"></i><a href="alumns.php?id=<?php echo $id_team?>"><?php echo $name_team ?></a></li>		
						<li><i class="fa fa-pencil"></i>Editar Alumno</li>		
					</ol>
				</div>
			</div>		
			  
			<div class="row">
				<div class="col-md-4">
					<div class="image view view-first">
                        <img class="thumb-image" style="width: 100%; display: block;" src="<?php echo $img ?>" alt="image" />
                    </div>
                    <form method="post" enctype="multipart/form-data" action="action/upload-profile-alumn.php">
	                    <span class="btn btn-my-button btn-file" style="width: 100%; margin-top: 5px;">
	                        Cambiar Imagen de perfil: <input type="file" name="image">
						</span>
						<br><br>
						<input type="hidden" name="alumn_id" value="<?php echo $id;?>">
    					<input type="hidden" name="tid" value="<?php echo $tid;?>">
                    <button id="upd_data" class="btn btn-success" type="submit">Actualizar Perfil</button>
                     </form>
                    
				</div>
				<div class="col-md-42"></div>
				<div class="col-lg-8 col-md-6">	
					<div class="panel panel-default">
						<section class="panel">
		                    <header class="panel-heading">
		                          Editar Alumno
		                    </header>
		                    <div class="panel-body">
		                    	<div id="result"></div>
		                        <form role="form" name="upd" id="upd">
		                            









							<div class="form-group  col-md-12">
                                <label for="codigo">Código: </label>
                                <input type="text" name="codigo" class="form-control" id="codigo" value="<?php echo $codigo ?>" placeholder="Código">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="name">Nombre: </label>
                                <input type="text" name="name" class="form-control" id="name" value="<?php echo $name ?>" placeholder="Nombre">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="lastname">Apellido:</label>
                                <input type="text" name="lastname" class="form-control" id="lastname" value="<?php echo $lastname ?>" placeholder="Apellido">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="matricula">Matricula: </label>
                                <!-- <input type="text" name="matricula" class="form-control" id="matricula" placeholder="Matricula"> -->
                                <select name="matricula" id="matricula" class="form-control">
                                    <option <?php if($matricula==1){echo"selected";} ?> value="1">Si</option>
                                    <option <?php if($matricula==2){echo"selected";} ?> value="2">No</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="anos">Años: </label>
                                <input value="<?php echo $anos ?>" type="text" name="anos" class="form-control" id="anos" placeholder="Años">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="sexo">Sexo: </label>
                                <select name="sexo" id="sexo" class="form-control">
                                    <option <?php if($sexo==1){echo"selected";} ?> value="1">F</option>
                                    <option <?php if($sexo==2){echo"selected";} ?> value="2">M</option>
                                </select>
                            </div>

                            <div class="form-group  col-md-12">
                                <label for="lugar_hermanos">Lugar entre hermanos: </label>
                                <select name="lugar_hermanos" id="lugar_hermanos" class="form-control">
                                    <option <?php if($lugar_hermanos==1){echo "selected";} ?> value="1">Único</option>
                                    <option <?php if($lugar_hermanos==2){echo "selected";} ?> value="2">Primero</option>
                                    <option <?php if($lugar_hermanos==3){echo "selected";} ?> value="3">Segundo</option>
                                    <option <?php if($lugar_hermanos==4){echo "selected";} ?> value="4">Tercero</option>
                                    <option <?php if($lugar_hermanos==5){echo "selected";} ?> value="5">Cuarto</option>
                                    <option <?php if($lugar_hermanos==6){echo "selected";} ?> value="6">Quinto</option>
                                    <option <?php if($lugar_hermanos==7){echo "selected";} ?> value="7">Sexto</option>
                                    <option <?php if($lugar_hermanos==8){echo "selected";} ?> value="8">Séptimo</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="factor_sangre">Factor sangre: </label>
                                <select name="factor_sangre" id="factor_sangre" class="form-control">
                                    <option <?php if($factor_sangre==1){echo"selected";} ?> value="1">A</option>
                                    <option <?php if($factor_sangre==2){echo"selected";} ?> value="2">B</option>
                                    <option <?php if($factor_sangre==3){echo"selected";} ?> value="3">O</option>
                                    <option <?php if($factor_sangre==4){echo"selected";} ?> value="4">AB</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="rh">R.H: </label>
                                <select name="rh" id="rh" class="form-control">
                                    <option <?php if($rh==1){echo"selected";} ?> value="1">Positivo</option>
                                    <option <?php if($rh==2){echo"selected";} ?> value="2">Negativo</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="marcar">Marcar: </label>
                                <input <?php if(isset($marcar)){echo"checked";} ?> type="checkbox" name="marcar" class="form-control" id="marcar" placeholder="Marcar">
                            </div>

                            <header class="panel-heading">
                                  <h3>Datos de Nacimiento</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="fecha_nacimiento">Fecha Nacimiento</label>
                                <input value="<?php echo $fecha_nacimiento ?>" type="date" name="fecha_nacimiento" class="form-control" id="fecha_nacimiento" placeholder="Fecha Nacimiento">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="departamento">Departamento</label>
                                <input value="<?php echo $departamento ?>" type="text" name="departamento" class="form-control" id="departamento" placeholder="Departamento">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="municipio">Municipio</label>
                                <input value="<?php echo $municipio ?>" type="text" name="municipio" class="form-control" id="municipio" placeholder="Municipio">
                            </div>



                            <header class="panel-heading">
                                  <h3>Datos identificación</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="extendida_en_departamento">Expedida en el departamento</label>
                                <input value="<?php echo $extendida_en_departamento ?>" type="text" name="extendida_en_departamento" class="form-control" id="extendida_en_departamento" placeholder="Extendida en el departamento">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="extendida_en_municipio">Expedida en el Municipio</label>
                                <input value="<?php echo $extendida_en_municipio ?>" type="text" name="extendida_en_municipio" class="form-control" id="extendida_en_municipio" placeholder="Extendida en el Municipio">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="clase_identificacion">Clase identificación</label>
                                <select name="clase_identificacion" id="clase_identificacion" class="form-control">

                                    <option <?php if($clase_identificacion==1){echo "selected";} ?> value="1">Cédula de ciudadanía</option>
                                    <option <?php if($clase_identificacion==2){echo "selected";} ?> value="2">Tarjeta de identidad</option>
                                    <option <?php if($clase_identificacion==3){echo "selected";} ?> value="3">Cédula de extranjería</option>
                                    <option <?php if($clase_identificacion==4){echo "selected";} ?> value="4">Registro civil</option>
                                    <option <?php if($clase_identificacion==5){echo "selected";} ?> value="5">N.I.P</option>
                                    <option <?php if($clase_identificacion==6){echo "selected";} ?> value="6">N.U.I.P</option>
                                    <option <?php if($clase_identificacion==7){echo "selected";} ?> value="7">SED</option>
                                    <option <?php if($clase_identificacion==8){echo "selected";} ?> value="8">Certificado Cabildo</option>
                                    <option <?php if($clase_identificacion==9){echo "selected";} ?> value="9">Pasaporte</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="numero_identificacion">Número</label>
                                <input value="<?php echo $numero_identificacion ?>" type="text" name="numero_identificacion" class="form-control" id="numero_identificacion" placeholder="Número">
                            </div>
    






                            <header class="panel-heading">
                                  <h3>Datos de Localización</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="depto_residencia">Depto Residencia</label>
                                <input value="<?php echo $depto_residencia ?>" type="text" name="depto_residencia" class="form-control" id="depto_residencia" placeholder="Depto Residencia">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="localizacion_municipio">Municipio</label>
                                <input value="<?php echo $localizacion_municipio ?>" type="text" name="localizacion_municipio" class="form-control" id="localizacion_municipio" placeholder="Municipio">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="barrio">Barrio</label>
                                <input value="<?php echo $barrio ?>" type="text" name="barrio" class="form-control" id="barrio" placeholder="Barrio">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="estrato">Estrato</label>
                                <select name="estrato" id="estrato" class="form-control">
                                    <option <?php if($estrato==0){echo "selected";} ?> value="0">0 (Cero)</option>
                                    <option <?php if($estrato==1){echo "selected";} ?> value="1">1 (Uno)</option>
                                    <option <?php if($estrato==2){echo "selected";} ?> value="2">2 (Dos)</option>
                                    <option <?php if($estrato==3){echo "selected";} ?> value="3">3 (Tres)</option>
                                    <option <?php if($estrato==4){echo "selected";} ?> value="4">4 (Cuatro)</option>
                                    <option <?php if($estrato==5){echo "selected";} ?> value="5">5 (Cinco)</option>
                                    <option <?php if($estrato==6){echo "selected";} ?> value="6">6 (Seis)</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="direccion">Dirección</label>
                                <input value="<?php echo $direccion ?>" type="text" name="direccion" class="form-control" id="direccion" placeholder="Dirección">
                            </div>













                        <header class="panel-heading">
                                  <h3>Datos afilicación EPS</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="sisben">Sisben</label>
                                <select name="sisben" id="sisben" class="form-control">
                                    <option <?php if($sisben==1){echo "selected";} ?> value="1">Si</option>
                                    <option <?php if($sisben==2){echo "selected";} ?> value="2">No</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="nivel">Nivel</label>
                                <select name="nivel" id="nivel" class="form-control">
                               
                                    <option <?php if($nivel==1){echo "selected";} ?> value="1">1 (Uno)</option>
                                    <option <?php if($nivel==2){echo "selected";} ?> value="2">2 (Dos)</option>
                                    <option <?php if($nivel==3){echo "selected";} ?> value="3">3 (Tres)</option>
                                    <option <?php if($nivel==4){echo "selected";} ?> value="4">4 (Cuatro)</option>
                                    <option <?php if($nivel==5){echo "selected";} ?> value="5">5 (Cinco)</option>
                                    <option <?php if($nivel==6){echo "selected";} ?> value="6">6 (Seis)</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="otras_eps">Otras EPS</label>
                                <input value="<?php echo $otras_eps ?>" type="text" name="otras_eps" class="form-control" id="otras_eps" placeholder="Otras EPS">
                            </div>
                        




                            <header class="panel-heading">
                                  <h3>Datos academicos</h3>
                            </header>
                        
                            <div class="form-group  col-md-12">
                                <label for="situacion_ano_anterior">Situación año anterior</label>
                                <select name="situacion_ano_anterior" id="situacion_ano_anterior" class="form-control">
                                    <option <?php if($situacion_ano_anterior==1){echo "selected";} ?> value="1">No estudio vigencia anterior</option>
                                    <option <?php if($situacion_ano_anterior==2){echo "selected";} ?> value="2">Aprobó</option>
                                    <option <?php if($situacion_ano_anterior==3){echo "selected";} ?> value="3">Reprobó</option>
                                    <option <?php if($situacion_ano_anterior==4){echo "selected";} ?> value="4">No culminó estudios</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="procedencia">Procedencia </label>

                                <select name="procedencia" id="procedencia" class="form-control">
                                    <option <?php if($procedencia==1){echo "selected";} ?> value="1">Privado</option>
                                    <option <?php if($procedencia==2){echo "selected";} ?> value="2">Público</option>
                
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="reincidente">Reincidente</label>
                                <select name="reincidente" id="reincidente" class="form-control">
                                    <option <?php if($reincidente==1){echo "selected";} ?> value="1">N</option>
                                    <option <?php if($reincidente==2){echo "selected";} ?> value="2">S</option>
                
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="historial">Historial</label>
                                <input value="<?php echo $historial ?>" type="text" name="historial" class="form-control" id="historial" placeholder="Historial">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="padres">Padres</label>
                                <input value="<?php echo $padres ?>" type="text" name="padres" class="form-control" id="padres" placeholder="Padres">
                            </div>




                            <header class="panel-heading">
                                  <h3>Datos de comunicación</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="telefono_fijo">Telefono Fijo</label>
                                <input value="<?php echo $telefono_fijo ?>" type="text" name="telefono_fijo" class="form-control" id="telefono_fijo" placeholder="Telefono Fijo">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="celular">Celular</label>
                                <input value="<?php echo $celular ?>" type="text" name="celular" class="form-control" id="celular" placeholder="Celular">
                            </div>
                        

                            <header class="panel-heading">
                                  <h3>Retiro alumno</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="retiro_alumno">Retiro</label>
                                <select name="retiro_alumno" id="retiro_alumno" class="form-control">
                                    <option <?php if($retiro_alumno==1){echo "selected";} ?> value="1">Si</option>
                                    <option <?php if($retiro_alumno==2){echo "selected";} ?> value="2">No</option>
                                </select>
                            </div>
                            


















                             <header class="panel-heading">
                                  <h3>Datos de la Madre</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="madre_nombre">Nombre Completo</label>
                                <input value="<?php echo $madre_nombre ?>" type="text" name="madre_nombre" class="form-control" id="madre_nombre" placeholder="Nombre Completo">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="madre_acudiente">Acudiente</label>
                                <input value="<?php echo $madre_acudiente ?>" type="text" name="madre_acudiente" class="form-control" id="madre_acudiente" placeholder="Acudiente">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="madre_telefono">Telefóno</label>
                                <input value="<?php echo $madre_telefono ?>" type="text" name="madre_telefono" class="form-control" id="madre_telefono" placeholder="Telefóno">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="madre_celular">Celular</label>
                                <input value="<?php echo $madre_celular ?>" type="text" name="madre_celular" class="form-control" id="madre_celular" placeholder="Celular">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="madre_ocupacion">Ocupación</label>
                                <input value="<?php echo $madre_ocupacion ?>" type="text" name="madre_ocupacion" class="form-control" id="madre_ocupacion" placeholder="Ocupación">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="madre_empresa">Empresa donde trabaja</label>
                                <input value="<?php echo $madre_empresa ?>" type="text" name="madre_empresa" class="form-control" id="madre_empresa" placeholder="Empresa donde trabaja">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="madre_tel_empresa">Telefóno Empresa</label>
                                <input value="<?php echo $madre_tel_empresa ?>" type="text" name="madre_tel_empresa" class="form-control" id="madre_tel_empresa" placeholder="Telefóno Empresa">
                            </div> 



                            <header class="panel-heading">
                                  <h3>Datos del Padre</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="padre_nombre">Nombre Completo</label>
                                <input value="<?php echo $padre_nombre ?>" type="text" name="padre_nombre" class="form-control" id="padre_nombre" placeholder="Nombre Completo">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="padre_acudiente">Acudiente</label>
                                <input value="<?php echo $padre_acudiente ?>" type="text" name="padre_acudiente" class="form-control" id="padre_acudiente" placeholder="Acudiente">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="padre_telefono">Telefóno</label>
                                <input value="<?php echo $padre_telefono ?>" type="text" name="padre_telefono" class="form-control" id="padre_telefono" placeholder="Telefóno">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="padre_celular">Celular</label>
                                <input value="<?php echo $padre_celular ?>" type="text" name="padre_celular" class="form-control" id="padre_celular" placeholder="Celular">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="padre_ocupacion">Ocupación</label>
                                <input value="<?php echo $padre_ocupacion ?>" type="text" name="padre_ocupacion" class="form-control" id="padre_ocupacion" placeholder="Ocupación">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="padre_empresa">Empresa donde trabaja</label>
                                <input value="<?php echo $padre_empresa ?>" type="text" name="padre_empresa" class="form-control" id="padre_empresa" placeholder="Empresa donde trabaja">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="padre_tel_empresa">Telefóno Empresa</label>
                                <input value="<?php echo $padre_tel_empresa ?>" type="text" name="padre_tel_empresa" class="form-control" id="padre_tel_empresa" placeholder="Telefóno Empresa">
                            </div> 



                        <header class="panel-heading">
                                  <h3>Otro Acudiente</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="acudiente_nombre">Nombre Completo</label>
                                <input value="<?php echo $acudiente_nombre ?>" type="text" name="acudiente_nombre" class="form-control" id="acudiente_nombre" placeholder="Nombre Completo">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="acudiente_telefono">Telefóno</label>
                                <input value="<?php echo $acudiente_telefono ?>" type="text" name="acudiente_telefono" class="form-control" id="acudiente_telefono" placeholder="Telefóno">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="acudiente_tel_empresa">Telefóno Empresa</label>
                                <input value="<?php echo $acudiente_tel_empresa ?>" type="text" name="acudiente_tel_empresa" class="form-control" id="acudiente_tel_empresa" placeholder="Telefóno Empresa">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="acudiente_parentesco">Parentesco</label>
                                <input value="<?php echo $acudiente_parentesco ?>" type="text" name="acudiente_parentesco" class="form-control" id="acudiente_parentesco" placeholder="Parentesco">
                            </div>
                           

                           <header class="panel-heading">
                                  <h3>Responsable de los costos</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="responsable_costos_nombre">Nombre Completo</label>
                                <input value="<?php echo $responsable_costos_nombre ?>" type="text" name="responsable_costos_nombre" class="form-control" id="responsable_costos_nombre" placeholder="Nombre Completo">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="responsable_costos_parentesco">Parentesco</label>
                                <input value="<?php echo $responsable_costos_parentesco ?>" type="text" name="responsable_costos_parentesco" class="form-control" id="responsable_costos_parentesco" placeholder="Parentesco">
                            </div>




                            <div class="form-group  col-md-12">
                                <label for="observaciones">Observaciónes</label>
                                <input value="<?php echo $observaciones ?>" type="text" name="observaciones" class="form-control" id="observaciones" placeholder="Observaciónes">
                            </div>
                           

























































		                            <input type="hidden" name="alumn_id" value="<?php echo $id;?>">
    								<input type="hidden" name="tid" value="<?php echo $tid;?>">
		                              &nbsp;&nbsp;&nbsp;
		                            <button id="upd_data" class="btn btn-success" type="submit">Actualizar</button>
	                        	</form>
		                    </div>
			            </section>
					</div>	
				</div><!--/col-->
			</div><!-- statics end -->
		</section>

<?php include "footer.php" ?>

<script>
	$(document).ready(function(){
		$( "#upd" ).submit(function( event ) {
		  $('#upd_data').attr("disabled", true);
		  
		 var parametros = $(this).serialize();
		     $.ajax({
		            type: "POST",
		            url: "action/updalumn.php",
		            data: parametros,
		             beforeSend: function(objeto){
		                $("#result").html("Mensaje: Cargando...");
		              },
		            success: function(datos){
		            $("#result").html(datos);
		            $('#upd_data').attr("disabled", false);
		            load(1);
		          }
		    });
		  event.preventDefault();
		})
	});
</script>