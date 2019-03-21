<?php
include "../config/config.php";
$id=intval($_GET["team_id"]);
$alumns=mysqli_query($con,"select * from alumn_team where team_id=$id");

	if(mysqli_num_rows($alumns)>0){
	// si hay alumnos
?>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h2><i class="fa fa-flag-o red"></i><strong>Registro de Calificaciónes</strong></h2>
		</div>
		<div class="panel-body">
			<table id="example1" class="table bootstrap-datatable table-bordered table-hover">
				<thead>
					<th>Nombre</th>
					<th></th>
				</thead>
				<tbody>
				<?php
					foreach($alumns as $al){
					$alumn_id=$al['alumn_id'];
					$getAlumn=mysqli_query($con, "select * from alumn where id=$alumn_id");
					$block_id=$_GET["block_id"];
					$val = mysqli_query($con, "select * from calification where alumn_id=$alumn_id and block_id=$block_id");
				 	foreach ($getAlumn as $alumn){
				 ?>
				<tr>
					<td style="width:250px;"><?php echo $alumn['name']." ".$alumn['lastname']; ?></td>
					<td>
						<form id="form-<?php echo $al['id']; ?>">
						<input type="hidden" name="alumn_id" value="<?php echo $alumn['id']; ?>">
						<input type="hidden" name="block_id" value="<?php echo $_GET["block_id"]; ?>">
						<?php foreach ($val as $val_data){
								$values = $val_data['val'];
						 } //end foreach val data ?>
						<input type="text" class="form-control" id="input-<?php echo $al['id']; ?>" required name="val" value="<?php if(mysqli_num_rows($val)!=0){ echo $values;}?>">
						</form>
						<script>
							$("#input-<?php echo $al['id']; ?>").keyup(function(){
								$.post("action/addcalification.php",$("#form-<?php echo $al['id']; ?>").serialize(), function(data){
									console.log(data);
								});
							});
						</script>
					</td>
				</tr>
					<?php } //end foreach ?>	
				<?php } //en foreach?>	
			</tbody>	
			</table>
		</div>
	</div>	
<?php
	}else{
		echo "<p class='alert alert-danger'>No hay Alumnos</p>";
	}
?>