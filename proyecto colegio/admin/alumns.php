<?php 
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	$active2="active";
	include "header.php";
	include "sidebar.php";

	$id_team = intval($_GET["id"]);
	$id_alumns = intval($_GET["id"]);
	$team =  mysqli_query($con, "select * from team where id=$id_team");
	$alumns = mysqli_query($con, "select * from alumn_team where team_id=$id_alumns");

	if($row=mysqli_fetch_array($team)){
		$team_id=$row['id'];
		$name_team = $row['name'];
	}

	    //evitar inyecciones sql
    if (mysqli_num_rows($team)==null) {
        print "<script>window.location='teams.php'</script>";
    }
?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-child"></i> Alumnos <small style="color:#000"><?php echo $name_team;?></small> </h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-cubes"></i><a href="teams.php">Grados</a></li>
						<li><i class="fa fa-child"></i>Alumnos</li>				  	
					</ol>
				</div>
			</div>		
			  
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div>
						<input type="hidden" id="id_team" value="<?php echo $_GET["id"]; ?>">
						<?php if(mysqli_fetch_array($alumns)>0):?>
						<a href="assistance.php?team_id=<?php echo $_GET["id"]; ?>" class="btn btn-default"><i class='fa fa-check'></i> Asistencia</a>
						<a href="behavior.php?team_id=<?php echo $_GET["id"]; ?>" class="btn btn-default"><i class='fa fa-smile-o'></i> Comportamiento</a>
						<a href="califications.php?team_id=<?php echo $_GET["id"]; ?>" class="btn btn-default"><i class='fa fa-tasks'></i> Calificaciones</a>
						<a href="blocks.php?team_id=<?php echo $_GET["id"]; ?>" class="btn btn-default"><i class='fa fa-th-large'></i> Cursos</a>
						<!-- Single button -->
						<div class="btn-group">
						  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						    <i class='fa fa-print'></i> Listas <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a href="list.php?team_id=<?php echo $_GET["id"]; ?>">Asistencia</a></li>
						    <li><a href="behaviorlist.php?team_id=<?php echo $_GET["id"]; ?>">Comportamiento</a></li>
						    <li><a href="calificationlist.php?team_id=<?php echo $_GET["id"]; ?>">Calificaciones</a></li>
						  </ul>
						</div>

						<div class="btn-group">
						  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						    <i class='fa fa-download'></i> Descargar <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a target="_blank" href="pdf/documentos/alumns_pdf.php?team_id=<?php echo $_GET["id"]; ?>"><i class="fa fa-file-pdf-o"></i> PDF</a></li>
						    <li><a href="report/alumns-word.php?team_id=<?php echo $_GET["id"]; ?>"> <i class="fa fa-file-word-o"></i> WORD</a></li>
						  </ul>
						</div>
					<?php endif; ?>	
						<?php include "modal/addalumn.php" ?>
						<br>
					</div>	
						<br>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2><i class="fa fa-flag-o red"></i><strong>Registro de alumnos</strong></h2>
						</div>
						<div class="panel-body">
							<section class="panel">
							<?php if(mysqli_num_rows($alumns)>0){ ?>
							<table id="example1" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th><i class="icon_profile"></i> Nombre Completo</th>
										<th><i class="icon_calendar"></i> Fecha</th>
										<!-- <th><i class="icon_mail_alt"></i> Correo Electrónico</th> -->
										<!-- <th><i class="icon_pin_alt"></i> Domicilio</th> -->
										<!-- <th><i class="icon_mobile"></i> Telefóno</th> -->
										<th class="text-center"><i class="icon_cogs"></i></th>
									</tr>
								</thead>
								<tbody>
								<?php
									foreach($alumns as $al){
									$alumn_id=$al['alumn_id'];
									$alumn = mysqli_query($con,"select * from alumn where id=$alumn_id");
								?>
									<tr>
										<?php foreach($alumn as $getAlumns){?>
										 	<td><?php echo $getAlumns['name']." ".$getAlumns['lastname']; ?></td>
										 	<td><?php echo $getAlumns['created_at']?></td>
										 	<!-- <td><?php echo $getAlumns['email']?></td> -->
										 	<!-- <td><?php echo $getAlumns['address']?></td> -->
										 	<!-- <td><?php echo $getAlumns['phone']?></td> -->
										 	<td class="text-right">
												<div class="btn-group">
<a class="btn btn-warning" target="_blank" href="reporte_matricula.php?id=<?php echo $getAlumns['id'];?>&tid=<?php echo $team_id;?>"><i class="fa fa-print"></i></a>

<a class="btn btn-primary" href="openalumn.php?id=<?php echo $getAlumns['id'];?>&tid=<?php echo $team_id;?>"><i class="fa fa-eye"></i></a>
<a class="btn btn-success" href="editalumn.php?id=<?php echo $getAlumns['id'];?>&tid=<?php echo $team_id;?>"><i class="fa fa-pencil"></i></a>
<a class="btn btn-danger" href="action/delalumn.php?id=<?php echo $getAlumns['id'];?>&tid=<?php echo $team_id;?>"><i class="icon_close_alt2"></i></a>
												</div>
											</td>
										<?php } //end foreach ?>
									</tr>
								<?php } //end foreach 
								?>	
								</tbody>
							</table>
							<?php
								}else{
									echo "<p class='alert alert-danger'>No hay Alumnos</p>";
								}
							?>
                      </section>
						</div>
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
		            url: "action/addalumn.php",
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
		//obtiene los datos
		var id = $("#id_team").val();
		$("#team_id").val(id);
	});
</script>