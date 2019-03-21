<?php 
	#codigo para eliminar
	if (isset($_REQUEST["id"])){
		$id=$_REQUEST["id"];
		$id=intval($id);

		$delete = UserData::getById($id);
		if($delete->id!=$_SESSION["user_id"]){
			$del = $delete->del();
			//print_r($del);
			if($del[0]==1){
				$aviso="Bien hecho!";
				$msj="Datos eliminados satisfactoriamente.";
				$classM="alert alert-success";
				$times="&times;";
			}else{
				$aviso="Aviso!";
				$msj="Error al eliminar los datos.";
				$classM="alert alert-danger";
				$times="&times;";
			}
		}else{
			$aviso="Aviso!";
			$msj="Error al eliminar los datos.";
			$classM="alert alert-danger";
			$times="&times;";
		}
	}
?>
<?php
	$query = Database::cleanChain($_REQUEST['query']);
	
	$sWhere=" nombre LIKE '%".$query."%' ";
	$sWhere.=" order by fecha desc";

	include "app/pagination.php"; //incluyo el archivo de paginación

	$page = (isset($_REQUEST['page']) && !empty($_REQUEST['page']))?$_REQUEST['page']:1;
	$per_page = intval($_REQUEST['per_page']); //how much records you want to show
	$adjacents  = 4; //gap between pages after number of adjacents
	$offset = ($page - 1) * $per_page;

	$count_query=UserData::countQuery($sWhere);
	$numrows = $count_query->numrows;
	$total_pages = ceil($numrows/$per_page);
	$reload = "user/index";

	$query=UserData::query($sWhere, $offset,$per_page);
?>
<?php 
	if (isset($_REQUEST["id"])){
?>
	<div class="<?php echo $classM;?>">
		<button type="button" class="close" data-dismiss="alert"><?php echo $times;?></button>
		<strong><?php echo $aviso?> </strong>
		<?php echo $msj;?>
	</div>	
<?php 
	}
	// si hay registro
	if(count($query)>0){ 
?>
<div class="table-responsive">
	<table class="table table-striped table-bordered table-condensed table-hover">
		<thead>
			<th>Nombre completo</th>
			<th>Usuario</th>
			<th>Registro</th>
			<th>Perfil</th>
			<th></th>
		</thead>
		<tbody>
			<?php
			 	$finales=0;
			 	foreach($query as $cat){

			 	$created_at=$cat->fecha;
	            list($date,$time)=explode(" ",$created_at);
	            list($Y,$m,$d)=explode("-",$date);
	            $date=$d."/".$m."/".$Y;

				$finales++;
			?>
			<tr>
				<td><?php echo $cat->nombre; ?></td>
				<td><?php echo $cat->usuario; ?></td>
				<td><?php echo $date." ".$time; ?></td>
				<td><?php echo ($cat->perfil==1) ? 'Administrador' : 'Cajero' ; ?></td>
				<td class="text-right">
					<a href="usuario/show/<?php echo $cat->id;?>" class="btn btn-info">Detalles</a>
					<a href="usuario/edit/<?php echo $cat->id;?>" class="btn btn-warning">Editar</a>
	                <button type="button" class="btn btn-danger" onclick="eliminar('<?php echo $cat->id;?>')">Eliminar</button>
	            </td>
			</tr>
			<?php } ?>
		</tbody>
		<tfoot>
	        <tr>
				<td colspan='10'> 
					<?php 
						$inicios=$offset+1;
						$finales+=$inicios -1;
						echo "Mostrando $inicios al $finales de $numrows registros";
						echo paginate($reload, $page, $total_pages, $adjacents);
					?>
				</td>
			</tr>
		</tfoot>
	</table>
</div>
<?php
	}else{
?>
	<div class="alert alert-info alert-dismissable">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
		<strong>Sin Resultados!</strong> No se encontraron resultados en la base de datos!.
	</div>
<?php
	}
?>