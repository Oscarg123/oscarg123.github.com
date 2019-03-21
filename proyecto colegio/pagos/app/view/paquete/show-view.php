<?php 
    if(!isset($_SESSION["user_id"])){ Core::redir("./");}
    $user_sesion= UserData::getById($_SESSION["user_id"]);
    // si el id  del usuario no existe.
    if($user_sesion==null){ Core::redir("./");}
?>
<?php $paquete = PaqueteData::getById(intval($_GET["id"]));?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">        
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header with-border">
                        <h1 class="box-title">Datos del Servicio</h1>
                        <div class="box-tools pull-right"></div>
                    </div>
                    <!-- /.box-header -->
                    <div class="panel-body">
                        <form role="form" method="POST">
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Servicio:</label>
                                <input type="text" class="form-control" name="paquete" id="paquete"  placeholder="Servicio" required value="<?php echo $paquete->paquete ?>" readonly>
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Precio:</label>
                                <input type="text" class="form-control" name="precio" id="precio"  placeholder="Precio" required value="<?php echo $paquete->precio ?>" readonly>
                            </div>
                            
                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <a href="paquete/index" class="btn btn-info"><i class="fa fa-arrow-circle-left"></i> Regresar</a>
                            </div>
                        </form>
                    </div>
                </div><!-- /.box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->