<?php 
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	$active2="active";
	include "header.php";
	include "sidebar.php";

	$id=intval($_GET["id"]);
	$id_user=$_SESSION["user_id"];	
	$tid=intval($_GET["tid"]);

  	$alumn = mysqli_query($con, "select * from alumn where id=$id");
  		while ($row=mysqli_fetch_array($alumn)) {
		$alumn_id=$row['id'];
		$name_alumn=$row['name'];
		$lastname_alumn=$row['lastname'];
	}


	$teams = mysqli_query($con, "select * from alumn_team where alumn_id=$id");
	$allteams = mysqli_query($con, "select * from team where user_id=$id_user");
	$found = false;
	  $txs = array();
	  foreach($allteams as $t){ $txs[] = $t['id']; }
	  $tys = array();
	  foreach($teams as $t){ $tys[] = $t['team_id']; }
	  $tzs = array_diff($txs,$tys);
	  if(empty($tzs)){ $found= false; }else { $found=true; }


	//evitar inyecciones sql
    if (mysqli_num_rows($alumn)==null) {
        //header("location: index.php");
        print "<script>window.location='teams.php'</script>";
    }

?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-child"></i> Historial</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard">Dashboard</a></li>
						<li><i class="fa fa-cubes"></i><a href="teams.php">Grados</a></li>
						<li><i class="fa fa-users"></i><a href="alumns.php?id=<?php echo $tid ?>">Alumnos</a></li>	  	
						<li><i class="fa fa-child"></i><?php echo $name_alumn." ".$lastname_alumn; ?></li>	
					</ol>
				</div>
			</div>		
			  
			<div class="row">
				<div class="col-lg-12 col-md-12">	
					<div>
						<div class="btn-group">
							<!-- <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							    Agregar al Grupo <span class="caret"></span>
							</button> -->
							<ul class="dropdown-menu" role="menu">
							<?php if($found):
								  $txs = array();
								  foreach($allteams as $t){ $txs[] = $t['id']; }
								  $tys = array();
								  foreach($teams as $t){ $tys[] = $t['team_id']; }
								  $tzs = array_diff($txs,$tys);


								  	foreach ($tzs as $t) {
								  		$te = null;
								  		foreach ($allteams as $ate) {
								  			if($ate['id']==$t){ $te= $ate; }
								  		}
										echo "<li><a href='action/addalumntoteam.php?al_id=$alumn_id&t_id=$t'>".$te['name']."</a></li>";
									}
							?>
							  <?php else:?>
							    <li><a href="javascript:void()">No hay Grupos</a></li>
							<?php endif;?>
							</ul>
						</div>
					</div>
					<br>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2><i class="fa fa-flag-o red"></i><strong>Historial del alumno (<?php echo $name_alumn." ".$lastname_alumn; ?>)</strong></h2>
						</div>
						<div class="panel-body">
						<?php if(mysqli_num_rows($teams)>0){ ?>
							<table class="table bootstrap-datatable table-bordered countries">
								<thead>
									<tr>
										<th>Nombre</th>
										<th></th>
									</tr>
								</thead>   
								<tbody>
								<?php
								foreach($teams as $al){
									$team_id=$al['team_id'];
									$getalumn=mysqli_query($con,"select * from team where id=$team_id");
								?>
									<tr>
										<?php foreach($getalumn as $get){?>
										<td><?php echo $get['name']; ?></td>
										<td class="text-right">
											<div class="btn-group">
		                                      <a class="btn btn-success" href="alumns.php?id=<?php echo $get['id'];?>"><i class="fa fa-eye"></i> Ver grupo</a>
                                  			</div>
                                  		</td>	
                                  		<?php } //end foreach ?>
									</tr>
								<?php } //end foreach ?>	
								</tbody>
							</table>
							<?php
								}else{
									echo "<p class='alert alert-danger'>No hay Alumnos</p>";
								}
							?>
						</div>
					</div>	
				</div><!--/col-->
			</div><!-- statics end -->
		</section>

<?php include "footer.php" ?>