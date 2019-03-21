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
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header with-border">
                        <h1 class="box-title">Editar Cliente</h1>
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
                        <form role="form" action="./?action=cliente&type=update&id=<?php echo $cliente->cliente_id;?>" method="POST">


                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Nombre:</label>
                                <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Nombre Completo" required value="<?php echo $cliente->nombre ?>">
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>RFC:</label>
                                <input type="text" class="form-control" name="rfc" id="rfc" value="<?php echo $cliente->rfc ?>">
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Dirección:</label>
                                <textarea rows="1" class="form-control" name="direccion" id="direccion"><?php echo $cliente->direccion ?></textarea>
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Telefono:</label>
                                <input type="number" class="form-control" name="telefono" id="telefono" value="<?php echo $cliente->telefono ?>">
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Correo Electrónico:</label>
                                <input type="email" class="form-control" name="correo" id="correo" value="<?php echo $cliente->correo ?>">
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Fecha Contratación:</label>
                                <input type="date" class="form-control" name="fecha_contratacion" id="fecha_contratacion" required value="<?php echo $cliente->fecha_contratacion ?>">
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Fecha de Mensualidad:</label>
                                <input type="date" class="form-control" name="fecha_mensualidad" id="fecha_mensualidad" required value="<?php echo $cliente->fecha_mensualidad ?>">
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Servicio:</label>
                                <select class="form-control" name="idpaquete" id="idpaquete" required>
                                    <option value="">--Seleccione--</option>
                                    <?php $paquetes = PaqueteData::getAll(); ?>
                                    <?php foreach ($paquetes as $item): ?>
                                        <option value="<?php echo $item->paquete_id ?>" <?php if($cliente->idpaquete==$item->paquete_id){echo "selected";} ?>><?php echo $item->paquete ?></option>
                                    <?php endforeach ?>
                                </select>
                            </div>
                            
                            
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Notas:</label>
                                <textarea rows="1" class="form-control" name="notas" id="notas"><?php echo $cliente->notas ?>
                                </textarea>
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <input <?php if($cliente->iva==1){echo "checked";} ?> type="checkbox" name="iva" id="iva"><label>Agregar IVA</label>
                                &nbsp;&nbsp;
                                <input <?php if($cliente->estado==1){echo "checked";} ?> type="checkbox" name="estado" id="estado"><label>Suspender el Servicio</label>
                            </div>










                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <button class="btn btn-success" type="submit"><i class="fa fa-save"></i> Actualizar</button>
                                <a href="cliente/index" class="btn btn-danger"><i class="fa fa-arrow-circle-left"></i> Cancelar</a>
                          </div>
                        </form>
                    </div>
                </div><!-- /.box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->