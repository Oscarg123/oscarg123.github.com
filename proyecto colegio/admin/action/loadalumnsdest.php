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
					<th>Apellidos</th>
					<th>Correo Electrónico</th>
					<th>Domicilio</th>
					<th>Telefóno</th>

					<th></th>
				</thead>
				<tbody>
				<?php
					foreach($alumns as $al){
					$alumn_id=$al['alumn_id'];
					$getAlumn=mysqli_query($con, "select * from alumn where id=$alumn_id");
					$team_id=$_GET["team_id"];
					$val = mysqli_query($con, "select * from calification where alumn_id=$alumn_id and block_id=$team_id");
			
				 	foreach ($getAlumn as $alumn){
				 ?>
				<tr>
					<td><?php echo $alumn['name'] ?></td>
					<td><?php echo $alumn['lastname']?></td>
					<td><?php echo $alumn['email']?></td>
					<td><?php echo $alumn['address']?></td>
					<td><?php echo $alumn['phone']?></td>
					<td class="text-center">
						<div class="btn-group ">
							<a class="btn btn-primary" href="addalumndest.php?al_id=<?php echo $alumn['id']?>&t_id=<?php echo $id ?>"><i class="fa fa-plus"></i></a>
	          			</div>
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
		echo "<p class='alert alert-danger'>No hay alumnos en este grado</p>";
	}
?>