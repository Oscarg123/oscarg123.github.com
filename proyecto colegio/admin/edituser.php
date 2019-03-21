<?php 
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	$active3 = "active";
	include "header.php";
	include "sidebar.php";

	$id=intval($_GET['id']);
	$sql = mysqli_query($con, "select * from user where id=$id");
	while ($row=mysqli_fetch_array($sql)) {
		$id_user=$row['id'];
		$name_user=$row['name'];
		$lastname_user=$row['lastname'];
		$username_user=$row['username'];
		$email_user=$row['email'];
	}
	    //evitar inyecciones sql
    if (mysqli_num_rows($sql)==null) {
        print "<script>window.location='users.php'</script>";
    }
?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-pencil"></i> Editar Catedratico <small style="color: #000"><?php echo $name_user." ".$lastname_user?></small></h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-users"></i><a href="users.php">Catedraticos</a></li>		
						<li><i class="fa fa-pencil"></i>Editar Catedratico</li>		
					</ol>
				</div>
			</div>		
			  
			<div class="row">
				<div class="col-lg-8 col-md-8 col-md-offset-2">	
					<div class="panel panel-default">
						<section class="panel">
		                    <header class="panel-heading">
		                          Editar Usuario
		                    </header>
		                    <div class="panel-body">
		                    	<div id="result"></div>
		                         <form role="form" id="upd" name="upd">
				                    <div class="panel-body">
				                        <div class="form-group  col-md-12">
				                            <label for="name">Nombre:</label>
				                            <input type="text" name="name" class="form-control" id="name" placeholder="Nombre" value="<?php echo $name_user ?>">
				                        </div>
				                        <div class="form-group  col-md-12">
				                            <label for="lastname">Apellido:</label>
				                            <input type="text" name="lastname" class="form-control" id="lastname" placeholder="Apellido" value="<?php echo $lastname_user ?>">
				                        </div>
				                        <div class="form-group  col-md-12">
				                            <label for="username">Usuario:</label>
				                            <input type="text" name="username" class="form-control" id="username" placeholder="Usuario" value="<?php echo $username_user ?>">
				                        </div>
				                        <div class="form-group  col-md-12">
				                            <label for="email">Correo Electrónico:</label>
				                            <input type="text" name="email" class="form-control" id="email" placeholder="Correo Electrónico" value="<?php echo $email_user ?>">
				                        </div>
				                        <div class="form-group  col-md-12">
				                            <label for="password">Contraseña:</label>
				                            <input type="password" name="password" class="form-control" id="password" placeholder="Correo Electrónico">
				                            <p class="text-info">La contraseña solo se modificara si escribes algo, en caso contrario no se modifica.</p>
				                        </div>
						                 
						                <input type="hidden" name="mod_id" value="<?php echo $id_user ?>">
				                        <br><br>
				                        <button id="upd_data" class="btn btn-success" type="submit">Actualizar</button>
				                    </div>
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
		            url: "action/upduser.php",
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