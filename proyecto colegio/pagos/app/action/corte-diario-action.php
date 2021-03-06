<?php 
	#codigo para eliminar
	if (isset($_REQUEST["id"])){
		$id=$_REQUEST["id"];
		$id=intval($id);

		$delete = PagoData::getById($id);

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
		
	}
?>
<?php
	$query = Database::cleanChain($_REQUEST['query']);
	
	$sWhere=" date(fecha_agregado) = '$query' ";
	$sWhere.=" order by pago_id desc";
	// echo $sWhere;

	include "app/pagination.php"; //incluyo el archivo de paginación

	$page = (isset($_REQUEST['page']) && !empty($_REQUEST['page']))?$_REQUEST['page']:1;
	$per_page = intval($_REQUEST['per_page']); //how much records you want to show
	$adjacents  = 4; //gap between pages after number of adjacents
	$offset = ($page - 1) * $per_page;

	$count_query=PagoData::countQuery($sWhere);
	$numrows = $count_query->numrows;
	$total_pages = ceil($numrows/$per_page);
	$reload = "cobro/index";

	$query=PagoData::query($sWhere, $offset,$per_page);
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
			<th>Folio</th>
			<th>Responsable Costo</th>
			<th>Grado</th>
			<th>Fecha</th>
			<th>Metodo de pago</th>
			<th># Deposito</th>
			<th>Fecha del pago</th>
			<th>Importe</th>
			<!-- <th></th> -->
		</thead>
		<tbody>
			<?php
			 	$finales=0;
			 	$total = 0;
			 	foreach($query as $cat){

			 	$created_at=$cat->fecha;
	            list($date)=explode(" ",$created_at);
	            list($Y,$m,$d)=explode("-",$date);
	            $date=$d."/".$m."/".$Y;

	            if ($cat->activo==1) {
		            $total +=$cat->pago;
	            }


	            //fecha y hora del pago
	            $fecha_pago=$cat->fecha_agregado;
	            list($date02)=explode(" ",$fecha_pago);
	            list($Y,$m,$d)=explode("-",$date02);
	            $date_payment_add=$d."/".$m."/".$Y;

	            /*$time_at=$cat->hora;
	            list($time)=explode(" ",$created_at);
	            list($Y,$m,$d)=explode("-",$date);
	            $date=$d."/".$m."/".$Y;*/


	            if ($cat->activo==0) {
	            	$ClassCancel = "danger";
	            }else{
	            	$ClassCancel="";
	            }

				$finales++;
			?>
			<tr class="<?php echo $ClassCancel ?>">

				<td><a title="Ver ticket" target="_blank" href="?action=reporte-cobro&id=<?php echo $cat->pago_id ?>"><i class="fa fa-ticket"></i>	<?php echo str_pad($cat->pago_id,6,"0",STR_PAD_LEFT); ?></a></td>
				<td><a title="Ver Historial de pagos" href="cliente/history/<?php echo $cat->getCliente()->id ?>"><?php echo $cat->getCliente()->responsable_costos_nombre ?></a></td>
				<td><?php echo $cat->getPaquete()->name ?></td>
				<!-- <td><?php echo $cat->idpaquete; ?></td> -->
				<td><?php echo $date; ?></td>
				<td><?php echo ($cat->forma_pago==1) ? 'Efectivo' : 'Transferencia' ; ?></td>
				<td><?php echo $cat->numero_deposito; ?></td>
				<td><?php echo $date_payment_add; ?></td>
				<td><?php echo $cat->pago; ?></td>
				<!-- <td class="text-right"> -->
					<!-- <a href="cobro/show/<?php echo $cat->pago_id;?>" class="btn btn-info">Detalles</a>
					<a href="cobro/edit/<?php echo $cat->pago_id;?>" class="btn btn-warning">Editar</a>
	                <button type="button" class="btn btn-danger" onclick="eliminar('<?php echo $cat->pago_id;?>')">Eliminar</button> -->
	            <!-- </td> -->
			</tr>
			<?php } ?>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td class="text-right"><strong>Total</strong></td>
				<td class="">$<?php echo $total ?></td>
			</tr>
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