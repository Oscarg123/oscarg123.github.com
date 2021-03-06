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
?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-th-list"></i> Lista de asistencia <small style="color:#000"><?php echo $name; ?></small></h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-dashboard"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-cubes"></i><a href="teams.php">Grados</a></li>
						<li><i class="fa fa-users"></i><a href="alumns.php?id=<?php echo $t_id ?>"><?php echo $name; ?></a></li>
						<li><i class="fa fa-th-list"></i>Lista de asistencia</li>				  	
					</ol>
				</div>
			</div>		
			  
			<div class="row">
				<div class="col-md-12">
				<a href="alumns.php?id=<?php echo $_GET["team_id"]; ?>" class="btn pull-right btn-sm btn-default"><i class='fa fa-arrow-left'></i> Regresar</a>

				<form class="form-horizontal" id="loadlist" role="form">
					<div class="form-group">
						<label for="inputEmail1" class="col-lg-2 control-label">Inicio/Fin:</label>
						<div class="col-lg-3">
						      <input type="date" name="start_at" value="<?php echo date("Y-m-d");?>" required class="form-control" >
						</div>
						<div class="col-lg-3">
						      <input type="date" name="finish_at" value="<?php echo date("Y-m-d");?>" required class="form-control" >
						</div>
						<div class="col-lg-offset-3">
						    <input type="hidden" name="team_id" value="<?php echo $_GET["team_id"];?>">
						      <button type="submit" class="btn btn-primary">Buscar</button>
						</div>
					</div>
				</form>
				<br><br><br>
				<div id="data">
					<p class="alert alert-info">No hay datos, por favor selecciona una fecha.</p>
				</div>
				</div>
			</div><!-- statics end -->
		</section>

<?php include "footer.php" ?>

<script>
	$("#loadlist").submit(function(e){
		e.preventDefault();
		var d = $("#loadlist").serialize();
		$.get("action/loadlist.php",d,function(data){
			console.log(data);
			$("#data").html(data);

		});
	});
</script>