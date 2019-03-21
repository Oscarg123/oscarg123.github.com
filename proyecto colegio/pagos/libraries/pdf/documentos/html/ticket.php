<style type="text/css">
<!--
div.zone
{
    border: solid 0.5mm red;
    border-radius: 2mm;
    padding: 1mm;
    background-color: #FFF;
    color: #440000;
}
div.zone_over
{
    width: 30mm;
    height: 20mm;
    
}
.bordeado
{
	border: solid 0.5mm #eee;
	border-radius: 1mm;
	padding: 0mm;
	font-size:12px;
}
.table {
  border-spacing: 0;
  border-collapse: collapse;
}
.table-bordered td, .table-bordered th {
  padding: 3px;
  text-align: left;
  vertical-align: top;
}
.table-bordered {
  border: 0px solid #eee;
  border-collapse: separate;
  
  -webkit-border-radius: 4px;
     -moz-border-radius: 4px;
          border-radius: 4px;
}
.left{
	border-left: 1px solid #eee;
	
}
.top{
	border-top:dashed 1px;
}
.bottom{
	border-bottom: dashed 1px;
}
table.page_footer {width: 100%; border: none; background-color: white; padding: 2mm;border-collapse:collapse; border: none;}
.page-header {
    margin: 10px 0 20px 0;
    font-size: 16px;
}
-->
</style>
<page backtop="0mm" backbottom="0mm" backleft="4mm" backright="4mm" style="font-size: 11px; font-family: helvetica" backimg="">
		<?php 
			$config = BusinessData::getById(1);
		?>
		<table border=0 style="width:100%;margin:5mm 0px" cellspacing=0>
			<tr>
				<td style="width:100%; text-align:center"><?php echo $config->industry ?></td>
				<!-- TECNOS REDES Y COMPUTO -->
			</tr>
			<tr>
				<td style="width:100%; text-align:center"><?php echo $config->address ?></td>
				<!-- BARRIO DE LA ASUNCIÓN -->
			</tr>
			<tr>
				<td style="width:100%; text-align:center"><?php echo $config->city ?></td>
				 <!-- CALLE UNIÓN 84 S/N -->
			</tr>
			<tr>
				<td style="width:100%; text-align:center"><?php echo $config->phone ?></td>
				<!-- CEL: 954 139 7099 -->
			</tr>
			<tr>
				<td style="width:100%; text-align:center">*** TICKET ***</td>
			</tr>
			<tr>
				<td style="width:100%; text-align:center"><?php echo $config->name ?></td>
			</tr>
			<tr>
				<td style="width:100%; text-align:center">NOTAS DE PAGO</td>
			</tr>
		</table>
		
		<table border=0 style="width:100%;margin:5mm 0px" cellspacing=0>
			<tr>
				<td style="width:100%;">FOLIO:  <?php echo str_pad($pago->pago_id,6,"0",STR_PAD_LEFT) ?>;</td>
			</tr>
			<tr>
				<?php 
					$created_at=$pago->fecha;
		            list($date)=explode(" ",$created_at);
		            list($Y,$m,$d)=explode("-",$date);
		            $date=$d."/".$m."/".$Y;


		            $hora=$pago->hora;
		            list($hora)=explode(" ",$hora);
		            list($h,$i,$s)=explode(":",$hora);
		            // $time=$s."/".$i."/".$H;
		            $time=$h.":".$i;
				?>
				<!-- <td style="width:100%;">FECHA:  <?php echo $pago->fecha.' '.$pago->hora ?>;</td> -->
				<td style="width:100%;">FECHA:  <?php echo $date; ?> - <?php echo $time; ?></td>
			</tr>
			<tr>
				<td style="width:100%;">CLIENTE: <!-- <br> --> <?php echo $pago->getCliente()->c1_fullname ?><br></td>
			</tr>
			
		</table>
		
		<table border=0 style="width:100%;margin:2mm 0px" cellspacing=0>
			<tr>
				<!-- <td style="width:7mm;text-align:center;" class='top bottom'>Cant.</td> -->
				<td style="width:53mm;text-align:left;" class='top bottom'>Descripción</td>
				<td style="width:11mm;text-align:center;" class='top bottom'>IMPORTE</td>
				<!-- <td style="width:10mm;text-align:right;" class='top bottom'>Parcial</td> -->
			</tr>
	
			<tr>
				<!-- <td style="width:7mm;text-align:center;" > $qty;</td> -->
				<td style="width:34mm;text-align:left;" > <?php echo $pago->getPaquete()->name ?></td>
				<td style="width:10mm;text-align:right;" > <?php echo '$ '.$pago->pago;?></td>
				<!-- <td style="width:10mm;text-align:right;"> num;</td> -->
            </tr>	

		<tr>
			<td colspan="2" class='top'></td>
		</tr>
		<tr>
			<td style='text-align:right' colspan="1" ><b>TOTAL:</b> </td>
			<td style='text-align:right' ><b><?php echo '$ '.$pago->pago ?></b> </td>
		</tr>
		<tr>
			<td style='text-align:right' colspan="1" ><b>PAGA CON: </b></td>
			<td style='text-align:right' ><b><?php echo '$ '.$pago->efectivo ?></b></td>
		</tr>
		<tr>
			<?php $cambio = $pago->efectivo - $pago->pago; ?>
			<td style='text-align:right' class='bottom' colspan="1" ><b>SU CAMBIO:</b></td>
			<td style='text-align:right' class='bottom' ><b><?php echo '$ '.number_format($cambio,2,'.','') ?></b></td>
		</tr>
			
		</table>
		
	
		<table border=0 style="width:100%;" cellspacing=0>
			<!-- <tr>
				<td style="width:100%;text-align:left;" >VENDEDOR: get_id('users','fullname','user_id',$seller_id);</td>
			</tr> -->
			<?php $userData = UserData::getById($_SESSION['user_id']) ?>
			<tr>
				<td style="width:100%;text-align:left;" class='bottom'>MES PAGADO: 
					<strong><?php  
						// $pago->fecha
							// $created_at=$cat->fecha;
			            list($date)=explode(" ",$pago->fecha);
			            list($Y,$m,$d)=explode("-",$date);
			            $date=$d."/".$m."/".$Y;
			            // echo $m;
			            switch ($m) {
			            	case '01':
			            		echo 'Enero';
			            		break;
			            	case '02':
			            		echo 'Febrero';
			            		break;
			            	case '03':
			            		echo 'Marzo';
			            		break;
			            	case '04':
			            		echo 'Abril';
			            		break;
			            	case '05':
			            		echo 'Mayo';
			            		break;
			            	case '06':
			            		echo 'Junio';
			            		break;
			            	case '07':
			            		echo 'Julio';
			            		break;
			            	case '08':
			            		echo 'Agosto';
			            		break;
			            	case '09':
			            		echo 'Septiembre';
			            		break;
			            	case '10':
			            		echo 'Octubre';
			            		break;
			            	case '11':
			            		echo 'Noviembre';
			            		break;
			            	case '12':
			            		echo 'Diciembre';
			            		break;
			            	
			            	default:
			            		'';
			            		break;
			            }
					?> </strong>
				</td>
			</tr>
		</table>
		<table border=0 style="width:100%;" cellspacing=0>
			<!-- <tr>
				<td style="width:100%;text-align:left;" >VENDEDOR: get_id('users','fullname','user_id',$seller_id);</td>
			</tr> -->
			<?php $userData = UserData::getById($_SESSION['user_id']) ?>
			<tr>
				<td style="width:100%;text-align:left;" class='bottom'>CAJERO: <strong><?php echo $userData->name," ",$userData->lastname ?></strong> </td>
			</tr>
		</table>
		<br>
		<table border=0 style="width:100%;" cellspacing=0>
			<tr>
				<td style="width:100%;text-align:center;" >CAMBIOS DENTRO DE LOS 7 DÍAS SIGUIENTES PRESENTANDO SU COMPROBANTE DE PAGO</td>
			</tr>
			
		</table>

			<p style="width:100%;text-align:center">*** GRACIAS POR SU PREFRENCIA ***</p>
			<p style="width:100%;text-align:center">*** REGRESE PRONTO ***</p>
	
		
     

   
	
	
	


			
	
	
    
	
	
	
	
	
	  

</page>

