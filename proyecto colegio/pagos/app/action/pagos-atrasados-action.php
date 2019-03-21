<?php 
	#codigo para eliminar
	if (isset($_REQUEST["id"])){
		$id=$_REQUEST["id"];
		$id=intval($id);

		$delete = ClienteData::getById($id);

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
	
	$sWhere=" is_active=1 and";
/*	$sWhere.=" (c1_fullname LIKE '%".$query."%' ";
	$sWhere.=" or c1_phone LIKE '%".$query."%') ";*/

	#nombre responsable costos: responsable_costos_nombre
	$sWhere.="(responsable_costos_nombre LIKE '%".$query."%' ";
	#nombre alumno: name
	$sWhere.=" or name LIKE '%".$query."%')";
	
	$sWhere.=" order by id asc";

	include "app/pagination.php"; //incluyo el archivo de paginación

	$page = (isset($_REQUEST['page']) && !empty($_REQUEST['page']))?$_REQUEST['page']:1;
	$per_page = intval($_REQUEST['per_page']); //how much records you want to show
	$adjacents  = 4; //gap between pages after number of adjacents
	$offset = ($page - 1) * $per_page;

	$count_query=ClienteData::countQuery($sWhere);
	$numrows = $count_query->numrows;
	$total_pages = ceil($numrows/$per_page);
	$reload = "cobrar/index";

	$query=ClienteData::query($sWhere, $offset,$per_page);
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

<ul class="list-group">
	<?php
      	$finales=0; 
      	foreach ($query as $cliente): 

      		//calcular por el dia si es mayor al actual, si es mayor ya vencio; SI no esta en el rango de fecha de pago

			/*$fecha_f = ClienteData::getByIdDateDiff($cliente->id);
			echo $fecha_f->dias_faltantes;
			if ($fecha_f->dias_faltantes>=1 and $fecha_f->dias_faltantes<=4) {
				$class_txt="danger";
				$icon="<i class='text-red fa fa-lg fa-exclamation-triangle'></i>";
			}*/




            /*$daterange = "01".date('/m/Y').' - '.date('d/m/Y');
            $pagosClientes = PagoData::getClientDaterange($cliente->id,$daterange);
			$pagarEsteMes = false;
			if (count($pagosClientes)>0) {
				$pagarEsteMes=true;
			}*/

			$pagarEsteMes=false;
			$existePagoCliente = PagoData::ExistPayment_MonthDay(date("m"),$cliente->id);
			if (count($existePagoCliente)>0) {
				$pagarEsteMes = true;
			}

			list($date)=explode(" ",$cliente->fecha_mensualidad);
            list($Y,$m,$d)=explode("-",$date);
            $date=$d."/".$m."/".$Y;


            if ($d<date("d") and !$pagarEsteMes) {
            	$spanBg = "bg-red";
            	$spanText = "Vencida";
            /*}else if($d===date("d") and !$pagarEsteMes){
            	$spanBg = "bg-primary";
            	$spanText = "Pago hoy";
            }else if($d>date("d") and !$pagarEsteMes){
            	$spanBg = "bg-yellow";
            	$spanText = "Pendiente";
            }else if($pagarEsteMes){
            	$spanBg = "bg-green";
            	$spanText = "Pagada";*/
            


      		$finales++;
    ?>
    <li class="list-group-item list-group-item- danger <?php echo $class_txt; ?>">
    	
        <!-- <a href="cobrar/edit/<?php echo $cliente->id; ?>" title="Realizar cobro"> -->
          	<h4 class="list-group-item-heading"><?php echo $cliente->responsable_costos_nombre; ?></h4>
          	<p class="list-group-item-text">
            	Alumno: <?php echo $cliente->name," ",$cliente->lastname; ?><br>
            	Grado: <?php echo $cliente->getPaquete()->name; ?> <br>
            	<!-- Dirección: <?php echo $cliente->c1_address; ?><br> -->
            	<!-- Telefono: <?php echo $cliente->c1_phone; ?><br> -->
            	Colegiatura: $<?php echo $cliente->getPaquete()->price; ?><br>
            	<!-- Próximo Pago: <?php $fecha_f->dias_faltantes ?>  -->
            	Estado de pago:&nbsp; <span class="label <?php echo $spanBg ?>"><?php echo $spanText ?></span>
            	<br><br>
            	<a class="btn btn-success btn-xs" href="cobrar/edit/<?php echo $cliente->id; ?>" title="Realizar cobro"> <i class="fa fa-usd"></i> Cobrar</a>
<!--             	<a class="btn btn-primary btn-xs" target="_blank" href="cliente/show/<?php echo $cliente->id; ?>" title="Ver Detalles Cliente"> <i class="fa fa-user"></i> Detalles Cliente</a><br>
 -->          	</p>

        <!-- </a> -->
    </li>
    <br>
<?php } // en if {VENCIDAS} ?>
    <?php endforeach; ?>
</ul>

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