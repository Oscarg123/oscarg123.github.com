<?php 
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	$active4="active";
	$active7="active";
	include "header.php";
	include "sidebar.php";

	$configuration = mysqli_query($con,"select * from configuration where id!=3");
?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-cog"></i> Configuración</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-cog"></i>Configuración</li>						  	
					</ol>
				</div>
			</div>		
			  
			<div class="row">
				<div class="col-lg-12 col-md-12">	
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2><i class="fa fa-flag-o red"></i><strong>Configuración del sistema</strong></h2>
						</div>
						<div class="panel-body">
							<div class="row">
				                <div class="col-lg-12">
				                    <section class="panel">
				                        <div class="panel-body">
				                            <div class="form">
				                                <form class="form-validate form-horizontal " id="register_form" method="post" action="action/updatesettings.php">
				                                    <?php if(mysqli_num_rows($configuration)>0){?>
				                                        <?php foreach($configuration as $config){?>
				                                        <div class="form-group">
				                                            <label for="fullname" class="control-label col-lg-2"><?php echo $config['label']; ?></label>
				                                            <div class="col-lg-10">
				                                              <input class=" form-control" id="fullname" name="<?php echo $config['name']; ?>" type="text" value="<?php echo $config['val'];?>" />
				                                            </div>
				                                        </div>
				                                        <?php } //foreach?>
				                                    <?php } ?>  
				                                    <div class="form-group">
				                                        <div class="col-lg-offset-2 col-lg-10">
				                                        &nbsp;<button class="btn btn-primary" type="submit">Guardar Cambios</button>
				                                        </div>
				                                    </div>
				                                </form>
				                            </div>
				                        </div>
				                    </section>
				                </div>
				            </div>
						</div>
					</div>	
				</div><!--/col-->
			</div><!-- statics end -->

			<!-- <div class="row">
				<div class="col-md-4 col-md-offset-4">	
					<div class="image view view-first">
			                        <img class="thumb-image" style="width: 100%; display: block;" src="img/<?php echo $favicon_name ?>" alt="image" />
			                    </div>
			                    <span class="btn btn-my-button btn-file" style="width: 100%; margin-top: 5px;">
			                        <form method="post" id="formulario" enctype="multipart/form-data">
			                        Cambiar favicon: <input type="file" name="file">
			                        </form>
			                    </span>
			                    <br><br>
			                    <div id="respuesta"></div>
				</div>
				<div class="col-md-1"></div>
			</div> -->
		</section>

<?php include "footer.php" ?>

<script>
    $(function(){
        $("input[name='file']").on("change", function(){
            var formData = new FormData($("#formulario")[0]);
            var ruta = "action/upload-favicon.php";
            $.ajax({
                url: ruta,
                type: "POST",
                data: formData,
                contentType: false,
                processData: false,
                success: function(datos)
                {
                    $("#respuesta").html(datos);
                }
            });
        });
    });
</script>