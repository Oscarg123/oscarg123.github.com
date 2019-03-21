<?php 
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	$active2="active";
	include "header.php";
	include "sidebar.php";

	$id=$_SESSION["user_id"];
	$teams = mysqli_query($con, "select * from team where user_id=$id");
	
?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-cubes"></i> Grados</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-cubes"></i>Grados</li>						  	
					</ol>
				</div>
			</div>		
			<div class="pull-right">
				<?php include "modal/addteams.php" ?>
			</div>
			<br><br>  
			<div class="row">
				<div class="col-lg-12 col-md-12">	
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2><i class="fa fa-flag-o red"></i><strong>Registro de grados</strong></h2>
						</div>
						<div class="panel-body">
						<?php
						if(mysqli_num_rows($teams)>0){
						// si hay grados
						?>
							<table id="example1" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th></th>
										<th>Nombre</th>
										<th>Alumnos</th>
										<th></th>
									</tr>
								</thead>   
								<tbody>
							<?php
								foreach($teams as $team){

								$id_team = $team['id'];
								$alumns_team=mysqli_query($con, "select * from alumn_team where team_id=$id_team");
							?>
									<tr>
										<td>
											<a href="alumns.php?id=<?php echo $team['id'];?>" class="btn btn-default btn-xs"><i class="fa fa-arrow-right"></i> Ver</a></td>
										<td>
											<a href="alumns.php?id=<?php echo $team['id'];?>" > <?php echo $team['name']; ?></a>
										</td>
										<td><?php echo mysqli_num_rows($alumns_team)?></td>
										<td class="text-right">
											<div class="btn-group">
												<a class="btn btn-warning" href="editteams.php?id=<?php echo $team['id'];?>"><i class="fa fa-pencil"></i></a>
		                                      	<a class="btn btn-danger" href="action/delteams.php?id=<?php echo $team['id'];?>"><i class="fa fa-trash-o"></i></a>
                                  			</div>
                                  		</td>	
									</tr>
								<?php
									 } //end foreach 
								?>	
								</tbody>
							</table>
							<?php
							}else{
								echo "<p class='alert alert-danger'>No hay Grados, empieza a agregar!</p>";
							}
							?>
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
		            url: "action/addteams.php",
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