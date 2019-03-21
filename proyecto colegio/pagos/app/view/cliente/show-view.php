<?php 
    if(!isset($_SESSION["user_id"])){ Core::redir("./");}
    $user_sesion= UserData::getById($_SESSION["user_id"]);
    // si el id  del usuario no existe.
    if($user_sesion==null){ Core::redir("./");}
?>
<?php $cliente = ClienteData::getById(intval($_GET["id"]));?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">        
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header with-border">
                        <h1 class="box-title">Datos del cliente</h1>
                        <div class="box-tools pull-right"></div>
                    </div>
                    <!-- /.box-header -->
                    <div class="panel-body">
                        <form role="form" method="POST">
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Nombre:</label>
                                <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Nombre Completo" required readonly value="<?php echo $cliente->nombre ?>">
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>RFC:</label>
                                <input type="text" class="form-control" name="rfc" id="rfc" required readonly value="<?php echo $cliente->rfc ?>">
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Dirección:</label>
                                <textarea rows="1" class="form-control" name="direccion" id="direccion" required readonly><?php echo $cliente->direccion ?></textarea>
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Telefono:</label>
                                <input type="number" class="form-control" name="telefono" id="telefono" required readonly value="<?php echo $cliente->telefono ?>">
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Correo Electrónico:</label>
                                <input type="email" class="form-control" name="correo" id="correo" required readonly value="<?php echo $cliente->correo ?>">
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Fecha Contratación:</label>
                                <input type="date" class="form-control" name="fecha_contratacion" id="fecha_contratacion" required readonly value="<?php echo $cliente->fecha_contratacion ?>">
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Fecha de Mensualidad:</label>
                                <input type="date" class="form-control" name="fecha_mensualidad" id="fecha_mensualidad" required readonly value="<?php echo $cliente->fecha_mensualidad ?>">
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Servicio:</label>
                                <select class="form-control" name="idpaquete" id="idpaquete" required disabled>
                                    <option value="">--Seleccione--</option>
                                    <?php $paquetes = PaqueteData::getAll(); ?>
                                    <?php foreach ($paquetes as $item): ?>
                                        <option value="<?php echo $item->paquete_id ?>" <?php if($cliente->idpaquete==$item->paquete_id){echo "selected";} ?>><?php echo $item->paquete ?></option>
                                    <?php endforeach ?>
                                </select>
                            </div>
                            
                            
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Notas:</label>
                                <textarea rows="1" class="form-control" readonly name="notas" id="notas"><?php echo $cliente->notas ?>
                                </textarea>
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <input <?php if($cliente->iva==1){echo "checked";} ?> disabled type="checkbox" name="iva" id="iva"><label>Agregar IVA</label>
                                &nbsp;&nbsp;
                                <input <?php if($cliente->estado==1){echo "checked";} ?> disabled type="checkbox" name="estado" id="estado"><label>Suspender el Servicio</label>
                            </div>
                            
                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <a href="cliente/index" class="btn btn-info"><i class="fa fa-arrow-circle-left"></i> Regresar</a>
                            </div>
                        </form>
                    </div>
                </div><!-- /.box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->