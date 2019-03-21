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


	$id=intval($_GET["id"]);
	$slider = mysqli_query($con,"select * from slide where id=$id");
	while ($rows=mysqli_fetch_array($slider)) {
			$id_slider=$rows['id'];
			$title_slider=$rows['title'];
			$img_slider=$rows['image'];
			$is_public=$rows['is_public'];
	}
	$url = "img/slides/$img_slider";

	    //evitar inyecciones sql
    if (mysqli_num_rows($slider)==null) {
        print "<script>window.location='sliders.php'</script>";
    }
?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-plus"></i> Editar Slider</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-tasks"></i><a href="sliders.php">Sliders</a></li>		
						<li><i class="fa fa-plus"></i>Editar Slider</li>		
					</ol>
				</div>
			</div>		
			  
			<div class="row">
				<div class="col-md-12">
					<?php
		            	//print_r($_SESSION);
		            	if(isset($_SESSION["slide_upd"])):

		            ?>
		              	<p class="alert alert-info"><i class="fa fa-check"></i> Slide Actualizado Exitosamente</p>
	            	<?php 
		           		unset($_SESSION["slide_upd"]);
		            endif; ?>
				</div>
				<div class="col-md-4">
					<div class="">
		                <img src="<?php echo $url; ?>" class="img-responsive">
		            </div>
				</div>

				<div class="col-md-2"></div>

				<div class="col-lg-6 col-md-6">	
					<div class="panel panel-default">
						<section class="panel">
		                    <header class="panel-heading">
		                          Editar Slider
		                    </header>
		                    <div class="panel-body">
		                    	<div id="result"></div>
		                        <form method="post" enctype="multipart/form-data" action="action/updslide.php">
		                            <div class="form-group  col-md-12">
		                                <label for="title">Titulo</label>
		                                <input type="text" id="title" name="title" class="form-control" placeholder="Titulo del slider" value="<?php echo $title_slider ?>">
		                                <br>
								
		                                <span class="btn btn-my-button btn-file" style="width: 100%; margin-top: 5px;">
					                       
					                        Cambiar Imagen del slider: <input type="file" name="image">
					                      
					                    </span>
					                    <div class="checkbox">
                                      	<label>
                                          	<input type="checkbox" name="is_public" <?php if($is_public){ echo "checked";} ?> > Es Visible
                                      	</label>
                                  		</div>

                                  		<input type="hidden" name="id" value="<?php echo $_GET["id"];?>">
					                    <br><br>
		                                <button type="submit" class="btn btn-success">Actualizar Slider</button>
		                            </div>
		                        </form>
		                    </div>
			            </section>
					</div>	
				</div><!--/col-->
			</div><!-- statics end -->
		</section>

<?php include "footer.php" ?>
