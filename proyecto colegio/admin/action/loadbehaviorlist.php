<?php
	include "../config/config.php";
	$range = 0;
	if($_GET["start_at"]<=$_GET["finish_at"]){
		$range= ((strtotime($_GET["finish_at"])-strtotime($_GET["start_at"]))+(24*60*60)) /(24*60*60);
		if($range>31){
			echo "<p class='alert alert-danger'>El Rango Maximo es 31 Dias.</p>";
			exit(0);
		}
	}else{
		echo "<p class='alert alert-danger'>Rango Invalido</p>";
		exit(0);
	}

	$id=intval($_GET["team_id"]);
	$alumns=mysqli_query($con, "select * from alumn_team where team_id=$id");
	if(mysqli_num_rows($alumns)>0){
		// si hay alumnos
?>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h2><i class="fa fa-flag-o red"></i><strong>Lista de Asistencia</strong></h2>

			<!-- <a style="margin-top: 5px; padding: 2px;" href="./report/behavior-word.php?team_id=<?php echo $_GET["team_id"]; ?>&start_at=<?php echo $_GET["start_at"]; ?>&finish_at=<?php echo $_GET["finish_at"]; ?>" class="btn btn-default btn-xs pull-right"><i class="fa fa-download"></i> Descargar &nbsp;</a> -->
			
			<div class="btn-group pull-right">
				<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
				   <i class='fa fa-download'></i> Descargar <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
				    <li><a target="_blank" href="pdf/documentos/behavior_pdf.php?team_id=<?php echo $_GET["team_id"]; ?>&start_at=<?php echo $_GET["start_at"]; ?>&finish_at=<?php echo $_GET["finish_at"]; ?>"><i class="fa fa-file-pdf-o"></i> PDF</a></li>

				    <li><a href="./report/behavior-word.php?team_id=<?php echo $_GET["team_id"]; ?>&start_at=<?php echo $_GET["start_at"]; ?>&finish_at=<?php echo $_GET["finish_at"]; ?>"> <i class="fa fa-file-word-o"></i> WORD</a></li>
				</ul>
			</div>

		</div>
		<div class="panel-body">
			<table id="example1" class="table bootstrap-datatable table-bordered table-hover">
				<thead>
					<th>Nombre</th>
					<?php for($i=0;$i<$range;$i++){?>
						<th><?php echo date("d-M",strtotime($_GET["start_at"])+($i*(24*60*60)));?></th>
					<?php };?>
				</thead>
				<tbody>
				<?php
					foreach($alumns as $al){
						$alumn_id=$al['alumn_id'];
						$getAlumn=mysqli_query($con, "select * from alumn where id=$alumn_id");
						$values = array(""=>"Sin seleccion","1"=>"Asistencia","2"=>"Falta","3"=>"Retardo","4"=>"Justificacion");
				?>
				<tr>
				<?php foreach ($getAlumn as $alumn){?>
					<td style="width:250px;"><?php echo $alumn['name']." ".$alumn['lastname']; ?></td>
					<?php for($i=0;$i<$range;$i++){
						$date_at= date("Y-m-d",strtotime($_GET["start_at"])+($i*(24*60*60)));
						$al_id=$alumn['id'];
						$team_id=$_GET["team_id"];
						$date_at1=$date_at;
						$behavior=mysqli_query($con,"select * from behavior where alumn_id=$al_id and team_id=$team_id and date_at=\"$date_at1\"");
					?>
					<td>
				<?php
					if(mysqli_num_rows($behavior)!=0){
						foreach($behavior as $behavior_list){
							if($behavior_list['kind_id']==1){ echo "B"; }
							else if($behavior_list['kind_id']==2){ echo "E"; }
							else if($behavior_list['kind_id']==3){ echo "M"; }
							else if($behavior_list['kind_id']==4){ echo "MM"; }
						} //end foreach
						
					}else{
						echo "N";
					}
				?>
					</td>
					<?php } //enf for ?>
					<?php  } //end foreach ?>			
				</tr>
				<?php }//en foreach?>	
			</tbody>	
			</table>
			<?php
			}else{
				echo "<p class='alert alert-danger'>No hay Alumnos</p>";
			}
			?>
		</div>
	</div>	