<?php
include "../config/config.php";

$id=intval($_GET["team_id"]);
$alumns=mysqli_query($con,"select * from alumn_team where team_id=$id");

	if(mysqli_num_rows($alumns)>0){
	// si hay alumnos
?>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h2><i class="fa fa-flag-o red"></i><strong>Registro de Asistencia</strong></h2>
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

						$getAlumn = mysqli_query($con,"select * from alumn where id=$alumn_id");

						$team=$_GET["team_id"];
						$date_at=$_GET["date_at"];

						$asist = mysqli_query($con,"select * from assistance where alumn_id=$alumn_id and team_id=$team and date_at=\"$date_at\"");
						while ($row=mysqli_fetch_array($asist)) {
							$kind_id=$row['kind_id'];
						}

						$values = array(""=>"Sin seleccion","1"=>"Asistencia","2"=>"Falta","3"=>"Retardo","4"=>"Justificacion");
				?>
				<tr>
				<?php foreach ($getAlumn as $alumn){?>
					<td style="width:250px;"><?php echo $alumn['name']." ".$alumn['lastname']; ?></td>
					<td>
						<form id="form-<?php echo $al['id']; ?>">
							<input type="hidden" name="alumn_id" value="<?php echo $alumn['id']; ?>">
							<input type="hidden" name="date_at" value="<?php echo $_GET["date_at"]; ?>">
							<input type="hidden" name="team_id" value="<?php echo $_GET["team_id"]; ?>">
							<select class="form-control input-sm"  name="kind_id" id="select-<?php echo $al['id']; ?>">
								<?php foreach($values as $k=>$v):?>
								<option value="<?php echo $k; ?>"  <?php if(mysqli_num_rows($asist)!=0 && $kind_id==$k){ echo "selected"; }?>> <?php echo $v;?> </option>
								<?php endforeach; ?>
							</select>

							<?php// print_r($values) ?>
						</form>
						<script>
						$("#select-<?php echo $al['id']; ?>").change(function(){
							$.post("action/addassistance.php",$("#form-<?php echo $al['id']; ?>").serialize(), function(data){
							});
						});
						</script>
					</td>
					<?php } //end foreach ?>	
				</tr>
				<?php } //en foreach?>	
			</tbody>	
			</table>
			<?php
			}else{
				echo "<p class='alert alert-danger'>No hay Grupos</p>";
			}
			?>
		</div>
	</div>	