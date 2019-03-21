<?php 
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	include "header.php";
	include "sidebar.php";
?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-user"></i> Mi Perfil</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-user"></i>Mi Perfil</li>						  	
					</ol>
				</div>
			</div>		
			  
			<div class="row">
				<div class="col-md-4">	
					<div class="image view view-first">
						<img class="thumb-image" style="width: 100%; display: block;" src="img/profiles/<?php echo $image_pic ?>" alt="image" />
					</div>
					<span class="btn btn-my-button btn-file" style="width: 100%; margin-top: 5px;">
						<form method="post" id="formulario" enctype="multipart/form-data">
						Cambiar Imagen de perfil: <input type="file" name="file">
						</form>
					</span>
					<br><br>
					<div id="respuesta"></div>
				</div><!--/col-->
				<div class="col-md-1"></div>
				<div class="col-md-7">
					<section class="panel">
						<header class="panel-heading">
							  Datos Personales:
						</header>
						<div class="panel-body">
							<?php include "lib/alerts.php";
								profile(); //llamada a la funcion de alertas
							?> 
							<form role="form" method="post" action="action/updprofile.php">
								<div class="form-group">
									  <label for="name">Nombre:</label>
									  <input type="text" name="name" class="form-control" id="name" placeholder="Nombre" value="<?php echo $name ?>">
								</div>
								<div class="form-group">
									  <label for="lastname">Apellido</label>
									  <input type="text" name="lastname" class="form-control" id="lastname" placeholder="Apellido" value="<?php echo $lastname ?>">
								</div>
								<div class="form-group">
									  <label for="username">Usuario</label>
									  <input type="text" name="username" class="form-control" id="username" placeholder="Usuario" value="<?php echo $username ?>">
								</div>
								<div class="form-group">
									  <label for="email">Correo Electrónico</label>
									  <input type="email" name="email" class="form-control" id="email" placeholder="Correo Electrónico" value="<?php echo $email ?>">
								</div>
								<div class="form-group">
									  <label for="password">Contraseña Actual</label>
									  <input type="password" name="password" class="form-control" id="password" placeholder="*********">
								</div>
								<div class="form-group">
									  <label for="newpassword">Nueva Contraseña</label>
									  <input type="password" name="newpassword" class="form-control" id="newpassword" placeholder="*********">
								</div>
								<div class="form-group">
									  <label for="confirmpassword">Confirmar Contraseña</label>
									  <input type="password" name="confirmpassword" class="form-control" id="confirmpassword" placeholder="*********">
								</div>
								<button name="token" type="submit" class="btn btn-success">Actualizar</button>
							</form>
						</div>
					</section>
				</div>
			</div><!-- statics end -->
		</section>

<?php include "footer.php" ?>

<script>
	$(function(){
		$("input[name='file']").on("change", function(){
			var formData = new FormData($("#formulario")[0]);
			var ruta = "action/upload-profile.php";
			$.ajax({
				url: ruta,
				type: "POST",
				data: formData,
				contentType: false,
				processData: false,
				success: function(datos)
				{
					$("#respuesta").html(datos);
				}
			});
		});
	});
</script>