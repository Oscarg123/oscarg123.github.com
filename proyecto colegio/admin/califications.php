<?php 
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	$active2="active";
	include "header.php";
	include "sidebar.php";
	$id=intval($_GET["team_id"]);
	$team=mysqli_query($con, "select * from team where id=$id");
	while ($row=mysqli_fetch_array($team)) {
		$name=$row['name'];
	}

	$blocks=mysqli_query($con, "select * from block where team_id=$id");

	    //evitar inyecciones sql
    if (mysqli_num_rows($team)==null) {
        print "<script>window.location='teams.php'</script>";
    }

?>
	  
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">            
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-tasks"></i> Calificaciónes</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="dashboard.php">Dashboard</a></li>
						<li><i class="fa fa-cubes"></i><a href="teams.php">Grados</a></li>						  	
						<li><i class="fa fa-users"></i><a href="alumns.php?id=<?php echo $id ?>"><?php echo $name ?></a></li>						  	
						<li><i class="fa fa-tasks"></i>Calificaciones</li>						  	
					</ol>
				</div>
			</div>		
			  
			<div class="row">
				<div class="col-md-12">
					<a href="alumns.php?id=<?php echo $_GET["team_id"]; ?>" class="btn pull-right btn-sm btn-default"><i class='fa fa-arrow-left'></i> Regresar</a>
					<?php if(mysqli_num_rows($blocks)>0){?>
					<form class="form-horizontal" id="loadlist" role="form">
					  <div class="form-group">
					    <label for="inputEmail1" class="col-lg-2 control-label">Seleccionar Bloque:</label>
					    <div class="col-lg-7">
					    <select class="form-control" name="block_id" required>
					    <option value="">-- SELECCIONE --</option>
					    	<?php foreach($blocks as $block):?>
					    		<option value="<?php echo $block['id']; ?>"><?php echo $block['name']; ?></option>
					    	<?php endforeach; ?>
					    </select>
					    </div>
					    <div class="col-lg-offset-3">
					    <input type="hidden" name="team_id" value="<?php echo $_GET["team_id"];?>">
					      <button type="submit" class="btn btn-default">Seleccionar</button>
					    </div>

					  </div>
					</form>
					<?php }else{?>
					    <p class="alert alert-danger">No hay bloques, por favor crea bloques de calificaciones.</p>    
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
		$.get("action/loadcalification.php",d,function(data){
			console.log(data);
			$("#data").html(data);

		});
	});
</script>