<?php 
    if(!isset($_SESSION["user_id"])){ Core::redir("./");}
    $user_session= UserData::getById($_SESSION["user_id"]);
    // si el id  del usuario no existe.
    if($user_session==null){ Core::redir("./");}
?>
<?php 
    $paquete = PaqueteData::getById(intval($_GET["id"]));
    if($paquete==null){ Core::redir("paquete/index");}
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">        
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header with-border">
                        <h1 class="box-title">Editar Servicio</h1>
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
                        <form role="form" action="./?action=paquete&type=update&id=<?php echo $paquete->paquete_id;?>" method="POST">
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Servicio:</label>
                                <input type="text" class="form-control" name="paquete" id="paquete"  placeholder="Servicio" required value="<?php echo $paquete->paquete ?>">
                            </div>
                            <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <label>Precio:</label>
                                <input type="text" class="form-control" name="precio" id="precio"  placeholder="Precio" required value="<?php echo $paquete->precio ?>">
                            </div>
                            <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <button class="btn btn-success" type="submit"><i class="fa fa-save"></i> Actualizar</button>
                                <a href="paquete/index" class="btn btn-danger"><i class="fa fa-arrow-circle-left"></i> Cancelar</a>
                          </div>
                        </form>
                    </div>
                </div><!-- /.box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->