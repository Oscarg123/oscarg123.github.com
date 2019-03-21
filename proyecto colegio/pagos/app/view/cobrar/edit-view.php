<?php 
    if(!isset($_SESSION["user_id"])){ Core::redir("./");}
    $user_session= UserData::getById($_SESSION["user_id"]);
    // si el id  del usuario no existe.
    if($user_session==null){ Core::redir("./");}
?>
<?php 
    $cliente = ClienteData::getById(intval($_GET["id"]));
    if($cliente==null){ Core::redir("cliente/index");}
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<section class="content"><!-- Main content -->
		<div class="row">
            <div class="col-md-12">
                <div class="box">
                <!-- <form> -->
                <form role="form" action="./?action=cobrar&type=store&id=<?php echo $cliente->id;?>" method="POST">
                    <div class="box-header with-border">
                        <h1 class="box-title">Cobrar</h1>
                        <div class="box-tools pull-right"></div>
                    </div>
                    <div class="panel-body">
                    	<?php if(isset($_SESSION['data'])){ ?>
                            <div class="alert alert-<?php echo $_SESSION['data']['alert']; ?> fade in">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                <strong><?php echo $_SESSION['data']['notice']; ?></strong> <?php echo $_SESSION['data']['msg']; ?>
                            </div>
                        <?php 
                                unset($_SESSION['data']);//elimino la variable de sesion
                            } 
                        ?>
						<div class="row">
				            <div class="col-md-6">
				              	<div class="well">
				                	<p>
				                  		<strong>Responsable Costo:</strong> <?php echo $cliente->responsable_costos_nombre; ?><br>
				                  		<!-- <strong>DIRECCIÓN:</strong> <?php echo $cliente->c1_address; ?><br> -->
				                  		<!-- <strong>Colegiatura:</strong> <?php echo $cliente->c1_phone; ?><br>-->

				                  		<strong>Grado: </strong> <?php echo $cliente->getPaquete()->name; ?><br>
				                  		<strong>Costo: </strong> <?php echo $cliente->getPaquete()->price; ?>
				                	</p>
				                	
				              	</div>
				            </div>
				            <div class="col-md-6">
				            	<div class="panel panel-default">
  									<div class="panel-heading">
  										Todos los pagos del año <strong><?php echo date("Y")  ?></strong>, Cliente: <strong><?php echo $cliente->c1_fullname; ?></strong>
  									</div>
  									 <div class="panel-body">
    
                                        <div class="col-md-6">



<?php 
    $pagada = '<span class="label label-success">Pagada</span>';
    $vencida = '<span class="label label-warning">Pendiente</span>';
?>
<p>


<?php 
function CompruebaPago($mes,$cliente_id,$cliente_fecha_mensualidad){
    $pagarEsteMes=false;
    $existePagoCliente = PagoData::ExistPayment_MonthDay($mes,$cliente_id);
    if (count($existePagoCliente)>0) {
        $pagarEsteMes = true;
    }

    list($date)=explode(" ",$cliente_fecha_mensualidad);
    list($Y,$m,$d)=explode("-",$date);
    $date=$d."/".$m."/".$Y;

    // echo $d;

    if ($d<date("d") and date("m")>$mes and !$pagarEsteMes) {
        $spanBg = "bg-red";
        $spanText = "Vencida";
        echo "<span class=\"label $spanBg\">$spanText</span>";
    }else if($d===date("d") and !$pagarEsteMes){
        $spanBg = "bg-primary";
        $spanText = "Pago hoy";
        echo "<span class=\"label $spanBg\">$spanText</span>";
    }else if(date("m")<$mes and !$pagarEsteMes){
        $spanBg = "bg-yellow";
        $spanText = "Pendiente";
        echo "<span class=\"label $spanBg\">$spanText</span>";
    }else if($pagarEsteMes){
        $spanBg = "bg-green";
        $spanText = "Pagada";
        echo "<span class=\"label $spanBg\">$spanText</span>";
    }


    //si estamos en el mismo mes pero ya paso la fecha marque vencida

    if ($d<date("d") and date("m")==$mes and !$pagarEsteMes) {
        $spanBg = "bg-red";
        $spanText = "Vencida";
        echo "<span class=\"label $spanBg\">$spanText</span>";
    }
}
?>

    <strong>Enero <?php CompruebaPago(1,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Febrero <?php CompruebaPago(2,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Marzo <?php CompruebaPago(3,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Abril <?php CompruebaPago(4,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Mayo <?php CompruebaPago(5,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Junio <?php CompruebaPago(6,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    

   
</p>
                                        </div>
                                        <div class="col-md-6">
<p>
    <strong>Julio <?php CompruebaPago(7,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Agosto <?php CompruebaPago(8,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Septiembre <?php CompruebaPago(9,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Octubre <?php CompruebaPago(10,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Noviembre <?php CompruebaPago(11,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Diciembre <?php CompruebaPago(12,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
</p>
                                        </div>
                                    </div>

								</div>
				            </div>
				        </div>
				        <div class="row">
				            <div class="col-md-6 text-center">
				             	<div class="well">
				             		<?php $configTax = BusinessData::getById(1); ?>
				              		<h1>Total a cobrar: <br>
						                <?php
						                	if ($cliente->iva == 1) {
						                  		echo "<span  id='pagoh1'>".number_format($cliente->getPaquete()->price*$configTax->tax,2,'.','')."</span>";
						                ?>
						                	<input type="hidden" id="pago" name="pago" value="<?php echo $cliente->getPaquete()->price*$configTax->tax; ?>">
						                <?php
						                	}else{
						                  	echo "<span  id='pagoh1'>".number_format($cliente->getPaquete()->price,2,'.','')."</span>";
						                ?>
						                <input type="hidden" id="pago" name="pago" value="<?php echo $cliente->getPaquete()->price; ?>">
						                <?php
						                	}
						                ?>
				              		</h1>
			            		</div>
				          	</div>

							
					        <div class="col-md-6">
					            <div class="form-group">
				              		<!-- <label>EFECTIVO</label> -->
				              		<select class="form-control input-lg" name="metodo_pago" id="metodo_pago" required="required">
				              			<option value="">---FORMA DE PAGO---</option>
				              			<option value="1">EFECTIVO</option>
				              			<option value="2">TRANSFERENCIA</option>
				              		</select>

				              		<div  style="display: none" id="container_num_deposito">
					              		<br>
				              			<input type="text" class="form-control" id="num_deposito" name="num_deposito" placeholder="# Deposito">
				              		</div>
					            </div>
					            <!-- <span class="text-muted">Pagos del año <?php echo date("Y") ?></span> -->
					            <div class="form-group">
			              			<select class="form-control input-lg" name="date" required="required">
			              				<option value="01">Enero</option>
			              				<option value="02">Febrero</option>
			              				<option value="03">Marzo</option>
			              				<option value="04">Abril</option>
			              				<option value="05">Mayo</option>
			              				<option value="06">Junio</option>
			              				<option value="07">Julio</option>
			              				<option value="08">Agosto</option>
			              				<option value="09">Septiembre</option>
			              				<option value="10">Octubre</option>
			              				<option value="11">Noviembre</option>
			              				<option value="12">Diciembre</option>
			              			</select>
			              			<br><br>
			              			<input type="text" class="form-control input-lg" name="efectivo" value="<?php echo isset($_POST['efectivo']) ?>" required="" placeholder="$ 0.00" required="required">
							        <input type="hidden" class="form-control" name="fecha_inicio" value="<?php echo date('Y-m-d'); ?>" required="">
							        <input type="hidden" class="form-control" name="hora" value="<?php echo date('H:i:s'); ?>" required="">
							        <input type="hidden" name="idcliente" value="<?php echo $cliente->id; ?>">
							        <input type="hidden" name="idpaquete" value="<?php echo $cliente->idpaquete; ?>">
					            </div>
					            <div class="form-group">
					            	<input type="checkbox" name="mora" id="mora">Interes
					            </div>
					        </div>

					        <!-- </div> -->


				    	</div>
					</div>
					<div class="box-footer">
				        <button type="submit" class="btn btn-primary btn-block btn-lg"><i class="fa fa-spinner"></i> COBRAR</button>
				    </div>
				</form>
				</div>
			</div>
		</div>
	</section><!-- /.content -->
</div><!-- /.content-wrapper -->

<script>
	$(document).ready(function(){
		$("#metodo_pago").change(function(){
			if ($(this).val()==2) {
				$("#container_num_deposito").show();
			}else{
				$("#container_num_deposito").hide();
			}
		})
		if ($(this).val()==2) {
			$("#container_num_deposito").show();
		}else{
			$("#container_num_deposito").hide();
		}


		$("#mora").on( 'change', function() {
		    if($(this).is(':checked')) {
		      	// cantidad = prompt("Ingrese la cantidad a descontar")
		      	cantidad = 2.8
		      	// cantidad = 0.028
				valoractual = $("#pago").val()
		      	// interes = parseInt(valoractual)*1.26
		      	interes = (valoractual*cantidad)/100
		    	
				// mora = valoractual*interes
				mora = parseFloat(valoractual)+parseFloat(interes)
				console.log(interes)

				// moraTotal = parseFloat(valoractual)+parseFloat(mora);
				// moraTotal =parseFloat(mora);
		      	console.log(mora)
			
				$("#pago").val(mora)
				$("#pagoh1").text(mora.toFixed(2))
			
		    }else{
		        location.reload();
		    }
		});
	})
</script>