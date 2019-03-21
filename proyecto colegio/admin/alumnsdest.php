<?php 
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	$active4="active";
	$active6="active";
	include "header.php";
	include "sidebar.php";
	$teams=mysqli_query($con, "select * from team");
?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-tasks"></i> Alumnos Destacados</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-tasks"></i>Alumnos Destacados</li>	
					</ol>
				</div>
			</div>		
			 <div class="pull-right">
			 	<a href="historyalumnsdest.php" class="btn btn-default">Historial</a>
			 </div> 
			 <br><br>
			<div class="row">
				<div class="col-md-12">
					<?php if(mysqli_num_rows($teams)>0){?>
					<form class="form-horizontal" id="loadlist" role="form">
					  	<div class="form-group">
					    	<label for="inputEmail1" class="col-lg-2 control-label">Seleccionar Grado:</label>
					    	<div class="col-lg-7">
					    		<select class="form-control" name="team_id" required>
					    			<option value="">-- SELECCIONE --</option>
					    			<?php foreach($teams as $team):?>
					    			<option value="<?php echo $team['id']; ?>"><?php echo $team['name']; ?></option>
					    			<?php endforeach; ?>
					    		</select>
					    	</div>
					    	<div class="col-lg-offset-3">
					      		<button type="submit" class="btn btn-default">Seleccionar</button>
					    	</div>
					  	</div>
					</form>
					<?php }else{?>
						<br><br><br>
					    <p class="alert alert-danger">No hay grados, por favor añade grados.</p> 
					<?php }?>
					<br>
					<br>
					<br>
					<div id="data">
						<p class="alert alert-info">No hay datos, por favor selecciona una fecha.</p>
					</div>

				</div><!--/col-->
			</div>
	</section>

<?php include "footer.php" ?>
<script>
	$("#loadlist").submit(function(e){
		e.preventDefault();
		var d = $("#loadlist").serialize();
		$.get("action/loadalumnsdest.php",d,function(data){
			console.log(data);
			$("#data").html(data);

		});
	});
</script>