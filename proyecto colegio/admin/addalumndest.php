<?php 
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	$active4="active";
	$active6="active";
	include "header.php";
	include "sidebar.php";

	$al_id =intval($_GET['al_id']);
	$t_id=intval($_GET['t_id']);

	$alumn = mysqli_query($con, "select * from alumn where id=$al_id");
	while ($row = mysqli_fetch_array($alumn)) {
		$name_alumn=$row['name'];
	}

	$team=mysqli_query($con, "select * from team where id=$t_id");
	while ($row=mysqli_fetch_array($team)) {
		$name_team=$row['name'];
	}

	    //evitar inyecciones sql
    if (mysqli_num_rows($team)==null || mysqli_num_rows($alumn)==null) {
        print "<script>window.location='alumnsdest.php'</script>";
    }
?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-plus"></i> Nuevo Alumno Destacado</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-tasks"></i><a href="historyalumnsdest.php">Alumnos Destacados</a></li>
						<li><i class="fa fa-plus"></i>Nuevo Alumno Destacado</li>		
					</ol>
				</div>
			</div>		
			  
			<div class="row">
				<div class="col-lg-8 col-md-8 col-md-offset-2">	
					<div class="panel panel-default">
						<section class="panel">
		                    <header class="panel-heading">
		                          Nuevo Alumno Destacado
		                    </header>
		                    <div class="panel-body">
		                    	<div id="result"></div>
		                        <form method="post" id="add" name="add">
		                            <div class="form-group  col-md-12">
		                                <label for="name_alumn">Nombre del alumno</label>
		                                <input type="text" id="name_alumn" name="name_alumn" class="form-control" placeholder="Nombre del alumno" disabled value="<?php echo $name_alumn ?>">
		                            </div>
		                            <div class="form-group  col-md-12">
		                                <label for="name_team">Nombre del grado</label>
		                                <input type="text" id="name_team" name="name_team" class="form-control" placeholder="Nombre del grado" disabled value="<?php echo $name_team?>">
		                            </div>
		                            <div class="form-group  col-md-12">
		                                <label for="description">Descripción</label>
		                                <textarea id="description" name="description" class="form-control" placeholder="Descripción sobre el alumno">
		                                </textarea>
		                            </div>

		                            <input type="hidden" name="alumn_id" value="<?php echo $al_id ?>">
		                            <input type="hidden" name="team_id" value="<?php echo $t_id ?>">
		                            <button id="save_data" type="submit" class="btn btn-primary">Agregar Alumno</button>
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
		$( "#add" ).submit(function( event ) {
		  $('#save_data').attr("disabled", true);
		  
		 var parametros = $(this).serialize();
		     $.ajax({
		            type: "POST",
		            url: "action/addalumndest.php",
		            data: parametros,
		             beforeSend: function(objeto){
		                $("#result").html("Mensaje: Cargando...");
		              },
		            success: function(datos){
		            $("#result").html(datos);
		            $('#save_data').attr("disabled", false);
		            load(1);
		          }
		    });
		  event.preventDefault();
		})
	});
</script>