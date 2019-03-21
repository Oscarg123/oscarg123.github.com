<?php 
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	$active4="active";
	$active5="active";
	include "header.php";
	include "sidebar.php";

	$sliders=mysqli_query($con, "select * from slide order by created_at desc");
?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-tasks"></i> Slider</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-tasks"></i>Slider</li>
					</ol>
				</div>
			</div>		
			 <div class="pull-right">
			 	<a href="addslider.php" class="btn btn-primary"><i class="fa fa-plus"></i> Añadir slider</a>
			 </div>
			 <br><br>
			<div class="row">
				<div class="col-lg-12 col-md-12">	
						<?php
							 if(mysqli_num_rows($sliders)>0){
						?>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2><i class="fa fa-flag-o red"></i><strong>Registro de slider</strong></h2>
						</div>
						<div class="panel-body">
							<table id="example1" class="table table-hover bootstrap-datatable countries">
								<thead>
									<tr>
										<th>Nombre</th>
										<th>Visible</th>
										<th></th>
									</tr>
								</thead>   
								<tbody>
									<?php 
										foreach($sliders as $slider){
									?>
									<tr>
										<td><?php echo $slider['title']; ?></td>
										<td>
											<?php if($slider['is_public']){?><i class="fa fa-check"></i><?php }else{ ?><i class="fa fa-remove"></i><?php } ?>
										</td>
										<td class="text-right">
											<div class="btn-group">
		                                      	<a class="btn btn-success" href="editslide.php?id=<?php echo $slider['id']?>"><i class="fa fa-pencil"></i></a>
		                                      	<a class="btn btn-danger" href="action/delslide.php?id=<?php echo $slider['id']?>"><i class="fa fa-trash-o"></i></a>
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
							echo "<p class='alert alert-info'>No hay Slider</p>";
						}	
					?>	
				</div><!--/col-->
			</div><!-- statics end -->
		</section>

<?php include "footer.php" ?>