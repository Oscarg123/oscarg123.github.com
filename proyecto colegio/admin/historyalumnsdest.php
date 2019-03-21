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

	$alumns_dest=mysqli_query($con, "select * from alumn_dest");
?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-child"></i> Alumnos Destacados</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-plus"></i><a href="alumnsdest.php">Agregar Alumno destacado</a></li>
						<li><i class="fa fa-users"></i>Alumnos Destacados</li>
					</ol>
				</div>
			</div>		
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="col-md-12">
						<?php
			            	//print_r($_SESSION);
			            	if(isset($_SESSION["del_alumn"])):

			            ?>
			              	<p class="alert alert-success"><i class="fa fa-check"></i> Alumno eliminado exitosamente</p>
		            	<?php 
			           		unset($_SESSION["del_alumn"]);
			            endif; ?>
					</div>	
					<?php if (mysqli_num_rows($alumns_dest)) { ?>
					
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2><i class="fa fa-flag-o red"></i><strong>Registro de grados</strong></h2>
						</div>
						<div class="panel-body">
							<table id="example1" class="table table-hover bootstrap-datatable countries">
								<thead>
									<tr>
										<th>Nombre Completo</th>
										<th>Grado</th>
										<th>Comentario</th>
										<th>Añadido</th>
										<th></th>
									</tr>
								</thead>   
								<tbody>
									<?php 
										foreach($alumns_dest as $al){
											$team_id = $al['team_id'];
											$alumn_id=$al['alumn_id'];

											$getAlumns = mysqli_query($con, "select * from alumn where id=$alumn_id");
											$getTeams=mysqli_query($con, "select * from team where id=$team_id");
									?>
									<tr>
										<?php foreach ($getAlumns as $alumn){?>
										<td><?php echo $alumn['name']." ".$alumn['lastname'] ?></td>
										<?php } ?>
										<?php foreach ($getTeams as $team){?>
										<td><?php echo $team['name'] ?></td>
										<?php } ?>
										<td><?php echo $al['description'] ?></td>
										<td><?php echo $al['created_at'] ?></td>

										<td class="text-right">
											<div class="btn-group">
		                                      	<a class="btn btn-danger" href="action/delalumndest.php?id=<?php echo $al['id']?>"><i class="fa fa-trash-o"></i></a>
                                  			</div>
                                  		</td>	

									</tr>
								<?php } //end foreach?>	
								</tbody>
							</table>
						</div>
					</div>	
					<?php }else{
						echo "<br><br>";
						echo "<p class='alert alert-danger'>No hay alumnos destacados, por favor agregalos!</p>";
					}
					?>
				</div><!--/col-->
			</div><!-- statics end -->
		</section>

<?php include "footer.php" ?>
