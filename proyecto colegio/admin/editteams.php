<?php 
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	include "header.php";
	include "sidebar.php";

	$id=intval($_GET['id']);
	$sql = mysqli_query($con, "select * from team where id=$id");
	while ($row=mysqli_fetch_array($sql)) {
		$id_team=$row['id'];
		$name_team=$row['name'];
		$price_team=$row['price'];
	}

	    //evitar inyecciones sql
    if (mysqli_num_rows($sql)==null) {
        print "<script>window.location='teams.php'</script>";
    }
?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-pencil"></i> Editar Grado <small style="color: #000"><?php echo $name_team ?></small></h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-cubes"></i><a href="teams.php">Grados</a></li>		
						<li><i class="fa fa-pencil"></i>Editar Grado</li>		
					</ol>
				</div>
			</div>		
			  
			<div class="row">
				<div class="col-lg-8 col-md-8 col-md-offset-2">	
					<div class="panel panel-default">
						<section class="panel">
		                    <header class="panel-heading">
		                          Editar Grado
		                    </header>
		                    <div class="panel-body">
		                    	<div id="result"></div>
		                        <form role="form" id="upd" name="upd">
		                            <div class="form-group  col-md-12">
		                                <label for="mod_name">Nombre</label>
		                                <!-- <input type="hidden" name="mod_id" value="<?php echo $id_team ?>"> -->
		                                <input type="text" id="mod_name" name="mod_name" class="form-control" placeholder="Nombre grado" value="<?php echo $name_team ?>">
		                                <!-- <br> -->
		                                <!-- <button type="submit" id="upd_data" class="btn btn-success">Actualizar</button> -->
		                            </div>
		                            <div class="form-group  col-md-12">
		                                <label for="mod_price">Colegiatura</label>
		                                <input type="hidden" name="mod_id" value="<?php echo $id_team ?>">
		                                <input type="text" id="mod_price" name="mod_price" class="form-control" placeholder="Colegiatura grado" value="<?php echo $price_team ?>">
		                                <br>
		                                <button type="submit" id="upd_data" class="btn btn-success">Actualizar</button>
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
		            url: "action/updteams.php",
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