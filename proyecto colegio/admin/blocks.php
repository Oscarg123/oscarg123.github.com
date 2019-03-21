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
	$sql=mysqli_query($con, "select * from team where id=$t_id");
	while ($row=mysqli_fetch_array($sql)) {
		$name=$row['name'];
	}

	$blocks = mysqli_query($con, "select * from block where team_id=$t_id");

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
					<h3 class="page-header"><i class="fa fa-th-large"></i> Cursos <small style="color: #000"><?php echo $name ?></small></h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-cubes"></i><a href="teams.php">Grados</a></li>						  	
						<li><i class="fa fa-users"></i><a href="alumns.php?id=<?php echo $_GET['team_id'] ?>"><?php echo $name ?></a></li>						  	
						<li><i class="fa fa-th-large"></i>Cursos</li>						  	
					</ol>
				</div>
			</div>		
			 <div class="pull-right">
			 	<?php include "modal/addblock.php" ?>
			 </div>
			 <br><br>
			<div class="row">
				<div class="col-lg-12 col-md-12">	
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2><i class="fa fa-flag-o red"></i><strong>Registro de cursos</strong></h2>
						</div>
						<div class="panel-body">
						<?php if(mysqli_num_rows($blocks)>0){ //si hay cursos
							?>
							<table id="example1" class="table bootstrap-datatable table-bordered countries">
								<thead>
									<tr>
										<th>Nombre</th>
										<th></th>
									</tr>
								</thead>   
								<tbody>
								<?php
									foreach($blocks as $al){
								?>
									<tr>
										<td><?php echo $al['name']; ?></td>
										<td class="text-right">
											<div class="btn-group">
		                                      
		                                      <a class="btn btn-success" href="editblock.php?id=<?php echo $al['id'];?>&t_id=<?php echo $t_id?>"><i class="fa fa-pencil"></i></a>
		                                      <a class="btn btn-danger" href="action/delblock.php?id=<?php echo $al['id'];?>"><i class="fa fa-trash-o"></i></a>
                                  			</div>
                                  		</td>	
									</tr>
								<?php } //end foreach ?>	
								</tbody>
							</table>
							<?php
								}else{
									echo "<p class='alert alert-danger'>No hay Cursos</p>";
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
		            url: "action/addblock.php",
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