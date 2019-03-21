<?php 
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	$active1="active";
	include "header.php";
	include "sidebar.php";


	$teams = mysqli_query($con, "select * from team");
	$alumns = mysqli_query($con, "select * from alumn");
	$alumns_dest=mysqli_query($con, "select * from alumn_dest");
	$users = mysqli_query($con, "select * from user");
?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-dashboard"></i> Dashboard</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="dashboard.php">Inicio</a></li>
						<li><i class="fa fa-dashboard"></i>Dashboard</li>						  	
					</ol>
				</div>
			</div>
			  
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="info-box blue-bg">
						<i class="fa fa-cubes"></i>
						<div class="count"><?php echo mysqli_num_rows($teams) ?></div>
						<div class="title">Grados</div>						
					</div><!--/.info-box-->			
				</div><!--/.col-->
				
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="info-box brown-bg">
						<i class="fa fa-child"></i>
						<div class="count"><?php echo mysqli_num_rows($alumns) ?></div>
						<div class="title">Alumnos</div>						
					</div><!--/.info-box-->			
				</div><!--/.col-->	
				
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="info-box green-bg">
						<i class="fa fa-users"></i>
						<div class="count"><?php echo mysqli_num_rows($users) ?></div>
						<div class="title">Catedraticos</div>						
					</div><!--/.info-box-->			
				</div><!--/.col-->

				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="info-box dark-bg">
						<i class="fa fa-thumbs-o-up"></i>
						<div class="count"><?php echo mysqli_num_rows($alumns_dest) ?></div>
						<div class="title">Alumnos destacados</div>						
					</div><!--/.info-box-->			
				</div><!--/.col-->

			</div><!--/.row-->
				
			<div class="row">
				<div class="col-lg-12 col-md-12">	
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2><i class="fa fa-flag-o red"></i><strong>Grados Registrados</strong></h2>
						</div>
						<div class="panel-body">
							<table id="example1" class="table bootstrap-datatable countries">
								<thead>
									<tr>
										<th>Grado</th>
										<th>Estudiantes</th>
										<th>Grafica</th>
									</tr>
								</thead>   
								<tbody>
								<?php
									foreach ($teams as $team): 
									$id_team = $team['id'];
									$alumns_team=mysqli_query($con, "select * from alumn_team where team_id=$id_team");
								?>
									<tr>
										<td><?php echo $team['name'] ?></td>
											<td><?php echo mysqli_num_rows($alumns_team)?></td>
										<td>
											<div class="progress thin">
												<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="<?php echo mysqli_num_rows($alumns_team) ?>" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo mysqli_num_rows($alumns_team) ?>%">
												</div>
												<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
												</div>
											</div>
											<span class="sr-only"><?php echo mysqli_num_rows($alumns_team) ?>%</span>   	
										</td>
									</tr>
								<?php endforeach; ?>	
								</tbody>
							</table>
						</div>
					</div>	
				</div><!--/col-->
			</div><!-- statics end -->
		</section>

<?php include "footer.php" ?>