<?php 
    if(!isset($_SESSION["user_id"])){ Core::redir("./");}
    $user= UserData::getById($_SESSION["user_id"]);
    // si el id  del usuario no existe.
    if($user==null){ Core::redir("./");}
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">        
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header with-border">
                        <h1 class="box-title">Agregar Cliente</h1>
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
                        <form role="form" action="./?action=cliente&type=store" method="POST">
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Nombre:</label>
                                <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Nombre Completo" required>
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>RFC:</label>
                                <input type="text" class="form-control" name="rfc" id="rfc">
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Dirección:</label>
                                <textarea rows="1" class="form-control" name="direccion" id="direccion"></textarea>
                            </div>

                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Telefono:</label>
                                <input type="number" class="form-control" name="telefono" id="telefono">
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Correo Electrónico:</label>
                                <input type="email" class="form-control" name="correo" id="correo">
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Fecha Contratación:</label>
                                <input type="date" class="form-control" name="fecha_contratacion" id="fecha_contratacion" required>
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Fecha de Mensualidad:</label>
                                <input type="date" class="form-control" name="fecha_mensualidad" id="fecha_mensualidad" required>
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Servicio:</label>
                                <select class="form-control" name="idpaquete" id="idpaquete" required>
                                    <option value="">--Seleccione--</option>
                                    <?php $paquetes = PaqueteData::getAll(); ?>
                                    <?php foreach ($paquetes as $item): ?>
                                        <option value="<?php echo $item->paquete_id ?>"><?php echo $item->paquete ?></option>
                                    <?php endforeach ?>
                                </select>
                            </div>
                            
                            
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Notas:</label>
                                <textarea rows="1" class="form-control" name="notas" id="notas"></textarea>
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <input type="checkbox" name="iva" id="iva"><label>Agregar IVA</label>
                                &nbsp;&nbsp;
                                <input type="checkbox" name="estado" id="estado"><label>Suspender el Servicio</label>
                            </div>

                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <button class="btn btn-primary" type="submit"><i class="fa fa-save"></i> Guardar</button>
                                <a href="cliente/index" class="btn btn-danger"><i class="fa fa-arrow-circle-left"></i> Cancelar</a>
                          </div>
                        </form>
                    </div>
                </div><!-- /.box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->