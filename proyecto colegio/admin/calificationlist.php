<?php 
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	$active2="active";
	include "header.php";
	include "sidebar.php";

	$t_id=intval($_GET['team_id']);
	$sql = mysqli_query($con, "select * from team where id=$t_id");
	while ($row=mysqli_fetch_array($sql)) {
		$name=$row['name'];
	}

	$blocks = mysqli_query($con,"select * from block where team_id=$t_id");

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
					<h3 class="page-header"><i class="fa fa-bar-chart-o"></i> Calificaiones <small style="color:#000"><?php echo $name; ?></small></h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-cubes"></i><a href="teams.php">Grados</a></li>
						<li><i class="fa fa-users"></i><a href="alumns.php?id=<?php echo $t_id ?>"><?php echo $name; ?></a></li>
						<li><i class="fa fa-bar-chart-o"></i>Calificaciones</li>				  	
					</ol>
				</div>
			</div>		
			  
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div>
					<?php if(mysqli_num_rows($blocks)>0){?>
						<!-- <a href="report/califications-word.php?team_id=<?php echo $t_id ?>" class="btn btn-default pull-right"><i class='fa fa-download'></i> Descargar</a> -->
						<div class="btn-group pull-right">
						  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						    <i class='fa fa-download'></i> Descargar <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a target="_blank" href="pdf/documentos/califications_pdf.php?team_id=<?php echo $t_id ?>"><i class="fa fa-file-pdf-o"></i> PDF</a></li>
						    <li><a href="report/califications-word.php?team_id=<?php echo $t_id ?>"> <i class="fa fa-file-word-o"></i> WORD</a></li>
						  </ul>
						</div>
					<?php  } ?>
					</div>	
					<br><br>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2><i class="fa fa-flag-o red"></i><strong>Registro de alumnos</strong></h2>
						</div>
						<div class="panel-body" style="overflow: auto;"><!-- utilizo "overflow auto" para solucionar el problema que la tabla no se salga de las columnas by abisoft -->
							<section class="panel">
							<?php
								$alumns = mysqli_query($con, "select * from alumn_team where team_id=$t_id");
								if(mysqli_num_rows($alumns)>0){
									// si hay alumnos
							?>
								<div class="table table-responsive">
								<table id="example1" class="table table-datable table-bordered table-hover"> 
								<!-- <table class="table table-bordered table-hover">-->
									<thead>
										<tr>
											<th>Nombre</th>
											<?php foreach($blocks as $block):?>
											<th><?php echo $block['name']; ?></th>
											<?php endforeach; ?>
										</tr>
									</thead>
									<tbody>
										<?php
										foreach($alumns as $al){
											$alumn_id=$al['alumn_id'];
											$getAlumn=mysqli_query($con, "select * from alumn where id=$alumn_id");
											foreach($getAlumn as $alumn){
										?>
										<tr>
											 <td>
											 	<?php echo $alumn['name']." ".$alumn['lastname'];?>
											 </td>
												<?php foreach($blocks as $block){
													$block_id=$block['id'];
													$al_id=$alumn['id'];

												$val = mysqli_query($con, "select * from calification where alumn_id=$al_id and block_id=$block_id");
												?>
											 <td><?php foreach($val as $calification){ if(mysqli_num_rows($val)!=0 ){ echo $calification['val']; } } ?></td>

									<?php  //end foreach calification ?>		 
										<?php } //ENd FOREACH ?>
										</tr>
									<?php 
										}	//end foreach
									} //end foreach ?>	
									</tbody>
								</table>
								</div>
							<?php 	
								}else{
								echo "<p class='alert alert-danger'>No hay alumnos</p>";
								}
							?>	
                      		</section>
						</div>
					</div>	
				</div><!--/col-->
			</div><!-- statics end -->
		</section>

<?php include "footer.php" ?>