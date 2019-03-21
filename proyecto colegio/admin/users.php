<?php 
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	$active3="active";
	include "header.php";
	include "sidebar.php";

	$users=mysqli_query($con, "select * from user");
?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-child"></i> Catedraticos</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-users"></i>Catedraticos</li>
					</ol>
				</div>
			</div>		
			 <div class="pull-right">
			 	<?php include "modal/adduser.php" ?>
			 </div>
			 <br><br>
			<div class="row">
				<div class="col-lg-12 col-md-12">	
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2><i class="fa fa-flag-o red"></i><strong>Registro de grados</strong></h2>
						</div>
						<div class="panel-body">
							<table id="example1" class="table table-hover bootstrap-datatable countries">
								<thead>
									<tr>
										<th>Nombre Completo</th>
										<th>Usuario</th>
										<th>Correo Electrónico</th>
										<th>Añadido</th>
										<th></th>
									</tr>
								</thead>   
								<tbody>
									<?php 
										foreach($users as $user){
									?>
									<tr>
										<td><?php echo $user['name']." ".$user['lastname'] ?></td>
										<td><?php echo $user['username'] ?></td>
										<td><?php echo $user['email'] ?></td>
										<td><?php echo $user['created_at'] ?></td>
										<?php if($is_admin==1){?>
										<td class="text-right">
											<div class="btn-group">
		                                      	<a class="btn btn-success" href="edituser.php?id=<?php echo $user['id']?>"><i class="fa fa-pencil"></i></a>
		                                      	<a class="btn btn-danger" href="action/deluser.php?id=<?php echo $user['id']?>"><i class="fa fa-trash-o"></i></a>
                                  			</div>
                                  		</td>	
                                  	<?php } //end if ?>	
									</tr>
								<?php } //end foreach?>	
								</tbody>
							</table>
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
		            url: "action/adduser.php",
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