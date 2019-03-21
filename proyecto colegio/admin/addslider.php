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
?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-plus"></i> Nuevo Slider</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-tasks"></i><a href="sliders.php">Sliders</a></li>		
						<li><i class="fa fa-plus"></i>Nuevo Slider</li>		
					</ol>
				</div>
			</div>		
			  
			<div class="row">
				<div class="col-lg-8 col-md-8 col-md-offset-2">	
					<div class="panel panel-default">
						<section class="panel">
		                    <header class="panel-heading">
		                          Nuevo Slider
		                    </header>
		                    <div class="panel-body">
		                    	<div id="result"></div>
		                        <form method="post" enctype="multipart/form-data" action="action/addslide.php">
		                            <div class="form-group  col-md-12">
		                                <label for="title">Titulo</label>
		                                <input type="text" id="title" name="title" class="form-control" placeholder="Titulo del slider">
		                                <br>
		                                <span class="btn btn-my-button btn-file" style="width: 100%; margin-top: 5px;">
					                       
					                        Seleccionar imagen: <input type="file" name="image">
					                      
					                    </span>
					                    <div class="checkbox">
                                      	<label>
                                          	<input type="checkbox" name="is_public"> Es Visible
                                      	</label>
                                  		</div>
					                    <br><br>
		                                <button type="submit" class="btn btn-primary">Agregar Slider</button>
		                            </div>
		                        </form>
		                    </div>
			            </section>
					</div>	
				</div><!--/col-->
			</div><!-- statics end -->
		</section>

<?php include "footer.php" ?>
