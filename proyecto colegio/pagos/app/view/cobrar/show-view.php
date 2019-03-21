<?php 
    if(!isset($_SESSION["user_id"])){ Core::redir("./");}
    $user_sesion= UserData::getById($_SESSION["user_id"]);
    // si el id  del usuario no existe.
    if($user_sesion==null){ Core::redir("./");}
?>
<?php $pago = PagoData::getById(intval($_GET["id"]));?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<section class="content-header">
        <h1>Detalle Pago <small>Control panel</small></h1>
    </section>
	<section class="content"><!-- Main content -->
		<div class="box"><!-- Default box -->
			<div class="box-header with-border">
				<h3 class="box-title"><i class="fa fa-users"></i></h3>
				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
					title="Collapse">
					<i class="fa fa-minus"></i></button>
					<button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
						<i class="fa fa-times"></i></button>
					</div>
				</div>
				<div class="box-body">
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
									<strong>Responsable Costo:</strong> <?php echo $pago->getCliente()->responsable_costos_nombre; ?><br>
				                  		<!-- <strong>DIRECCIÓN:</strong> <?php echo $pago->c1_address; ?><br> -->
				                  		<!-- <strong>Colegiatura:</strong> <?php echo $pago->c1_phone; ?><br>-->

				                  		<strong>Grado: </strong> <?php echo $pago->getPaquete()->name; ?><br>
				                  		<strong>Costo: </strong> <?php echo $pago->getPaquete()->price; ?>
								</p>
							</div>

							<table class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>Cant</th>
										<th>Concepto</th>
										<th>Importe</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td><?php echo $pago->getPaquete()->name; ?></td>
										<td>$<?php echo $pago->pago; ?></td>
									</tr>
									<tr>
										<td></td>
										<td>TOTAL</td>
										<td>$<?php echo $pago->pago; ?></td>
									</tr>
									<tr>
										<td></td>
										<td>PAGA CON</td>
										<td>$<?php echo $pago->efectivo; ?></td>
									</tr>
									<tr>
										<td>1</td>
										<td>SU CAMBIO</td>
										<td>$<?php echo $cambio = $pago->efectivo - $pago->pago; ?></td>
									</tr>
								</tbody>
							</table>
						</div>
						<input type="hidden" id="id" value="<?php echo intval($_GET['id']) ?>">
						<div class="col-md-6">
							<button type="button" onclick="reporte();" class="btn btn-primary btn-block btn-lg"><i class="fa fa-print"></i> IMPRIMIR TICKET</button>
						</div>
					</div>

				</div>
				<!-- /.box-body -->
				<div class="box-footer">

				</div>
				<!-- /.box-footer-->
			</div>
			<!-- /.box -->
	</section><!-- /.content -->
</div><!-- /.content-wrapper -->

<script src="res/dist/js/VentanaCentrada.js"></script>
<script>
	function reporte(){
		var id=$("#id").val();
		 VentanaCentrada('./?action=reporte-cobro&id='+id,'Reporte Pago','','1024','768','true');
	}
</script>