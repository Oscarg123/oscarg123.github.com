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
	while ($row=mysqli_fetch_array($alumn)) {
		$id_alumn=$row['id'];
		$image_alumn=$row['image'];
		$name_alumn=$row['name'];
		$lastname_alumn=$row['lastname'];
		$address_alumn=$row['address'];
		$email_alumn=$row['email'];
		$phone_alumn=$row['phone'];
		$c1_fullname=$row['c1_fullname'];
		$c1_address=$row['c1_address'];
		$c1_phone=$row['c1_phone'];
		$c1_note=$row['c1_note'];
	}

	$team=mysqli_query($con, "select * from team where id=$tid");
	while ($rows=mysqli_fetch_array($team)) {
		$id_team=$rows['id'];
		$name_team=$rows['name'];
	}

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
		                                <label for="name">Nombre: </label>
		                                <input type="text" name="name" class="form-control" id="name" placeholder="Nombre" value="<?php echo $name_alumn ?>">
		                            </div>
		                            <div class="form-group  col-md-12">
		                                <label for="lastname">Apellido:</label>
		                                <input type="text" name="lastname" class="form-control" id="lastname" placeholder="Apellido" value="<?php echo $lastname_alumn ?>">
		                            </div>
		                            <div class="form-group  col-md-12">
		                                <label for="address">Domicilio: </label>
		                                <input type="text" name="address" class="form-control" id="address" placeholder="Domicilio" value="<?php echo $address_alumn ?>">
		                            </div>
		                            <div class="form-group  col-md-12">
		                                <label for="email">Correo Electrónico</label>
		                                <input type="text" name="email" class="form-control" id="email" placeholder="Correo Electrónico" value="<?php echo $email_alumn ?>">
		                            </div>
		                            <div class="form-group  col-md-12">
		                                  <label for="phone">Telefóno</label>
		                                  <input type="text" name="phone" class="form-control" id="phone" placeholder="Telefóno" value="<?php echo $phone_alumn ?>">
		                            </div>
		                            <header class="panel-heading">
		                                  <h1>Contacto</h1>
		                            </header>
		                            <div class="form-group  col-md-12">
		                                <label for="fullname">Nombre Completo</label>
		                                <input type="text" name="c1_fullname" class="form-control" id="fullname" placeholder="Nombre Completo" value="<?php echo $c1_fullname ?>">
		                            </div>
		                            <div class="form-group  col-md-12">
		                                <label for="c1_address">Domicilio</label>
		                                <input type="text" name="c1_address" class="form-control" id="c1_address" placeholder="Domicilio" value="<?php echo $c1_address ?>">
		                            </div>
		                            <div class="form-group  col-md-12">
		                                <label for="c1_phone">Telefóno</label>
		                                <input type="text" name="c1_phone" class="form-control" id="c1_phone" placeholder="Telefóno" value="<?php echo $c1_phone ?>">
		                            </div> 
		                            <div class="form-group  col-md-12">
		                                <label for="c1_note">Nota</label>
		                                <textarea class="form-control" name="c1_note" id="c1_note" placeholder="Nota....."><?php echo $c1_note ?></textarea>
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