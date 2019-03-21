<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <base href="<?php echo APP_URL ?>">
        <link rel="icon" type="image/png" href="res/images/favicon.png" />
        <title><?php echo APP_NAME ?></title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="res/bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="res/font-awesome/css/font-awesome.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="res/dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="res/dist/css/skins/_all-skins.min.css">
        <!-- Pace style -->
        <link rel="stylesheet" href="res/plugins/pace/pace.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="res/plugins/iCheck/square/blue.css">
        <!-- daterange picker -->
        <link rel="stylesheet" href="res/plugins/daterangepicker/daterangepicker-bs3.css">
        <!-- Select2 -->
        <link rel="stylesheet" href="res/plugins/select2/select2.min.css">

        <!-- jQuery 2.2.3 -->
        <script src="res/plugins/jQuery/jquery-2.2.3.min.js"></script>
        <!-- Bootstrap 3.3.6 -->
        <script src="res/bootstrap/js/bootstrap.min.js"></script>
        <!-- PACE -->
        <script src="res/plugins/pace/pace.min.js"></script>
        <!-- SlimScroll -->
        <script src="res/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="res/plugins/fastclick/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="res/dist/js/app.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="res/dist/js/demo.js"></script>


        

        <!-- Select2 -->
        <script src="res/plugins/select2/select2.full.min.js"></script>
        <script>
            $(function () {
                //Initialize Select2 Elements
                // $(".select2").select2();
                $("select").select2();
                // $("select").css('width','100%');
            });
        </script>

    </head>

    <?php if(isset($_SESSION["user_id"])):?>
    <?php 
        $user= UserData::getById($_SESSION["user_id"]);
        // $_SESSION['is_admin'] = ($user->perfil==1) ? 1 : 0;
        // echo $_SESSION['is_admin'];

    ?>
    <?php 
        // $user= UserData::getById($_SESSION["user_id"]);
        // $skin_business=BusinessData::getById(1)->getSkin()->value;
    ?>
    <body class="hold-transition skin-red sidebar-mini">
        <div class="wrapper"><!-- Site wrapper -->
            <header class="main-header">
                <a href="#" class="logo"><!-- Logo -->
                    <!-- <span class="logo-mini"><b><?php echo APP_NAME ?></b></span> -->
                    <span class="logo-mini"><b>Abi</b>GT</span>
                    <span class="logo-lg"><b>Abisoft</b>GT </span>
                    <!-- <span class="logo-lg">Framework<b></b> Amabi</span> -->
                </a>
                <nav class="navbar navbar-static-top">
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="res/images/amnersaucedososa.png" class="user-image" alt="User Image">
                                    <span class="hidden-xs"><?php echo $user->name," ",$user->lastname; ?></span>
                                </a>
                                <?php
                                    $created_at=$user->created_at;
                                    list($date)=explode(" ",$created_at);
                                    list($Y,$m,$d)=explode("-",$date);
                                    $date=$d."/".$m."/".$Y;
                                ?>
                                <ul class="dropdown-menu">
                                    <li class="user-header"><!-- User image -->
                                        <img src="res/images/amnersaucedososa.png" class="img-circle" alt="User Image">
                                        <p><?php echo $user->name," ",$user->lastname; ?><small>Miembro desde: <?php echo $date; ?></small></p>
                                    </li>
                                    
                                    <li class="user-footer"><!-- Menu Footer-->
                                        <!-- <div class="pull-left">
                                            <a href="profile" class="btn btn-default btn-flat">Perfil</a>
                                        </div> -->
                                        <div class="pull-right">
                                            <a href="./?action=logout" class="btn btn-default btn-flat">Salir</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <aside class="main-sidebar"><!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <div class="user-panel"><!-- Sidebar user panel -->
                        <div class="pull-left image">
                          <img src="res/images/amnersaucedososa.png" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                          <p><?php echo $user->name," ",$user->lastname; ?></p>
                          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <ul class="sidebar-menu">
                        <li class="header">Menu de Navegación</li>
                        <li class="<?php if($_GET['view']=="home"){echo"active";} ?>">
                            <a href="home">
                                <i class="fa fa-home"></i> <span>Inicio</span>
                            </a>
                        </li>

                    <!-- cajero -->
                        <li class="<?php if((@$_GET['view']=="cobrar" and @$_GET['type']=="index") or (@$_GET['view']=="cobrar" and @$_GET['type']=="create") or (@$_GET['view']=="cobrar" and @$_GET['type']=="edit") or (@$_GET['view']=="cobrar" and @$_GET['type']=="show")) {echo"active";}  ?>">    
                            <a href="cobrar/index">
                                <i class="fa fa-usd"></i> <span>Cobrar</span>
                            </a>
                        </li>
                    <!-- end cajero -->




                    <?php// if($_SESSION['is_admin']){ ?>
                        <!-- <li class="header">Catalogos</li>
                        <li class="<?php if((@$_GET['view']=="paquete" and @$_GET['type']=="index") or (@$_GET['view']=="paquete" and @$_GET['type']=="create") or (@$_GET['view']=="paquete" and @$_GET['type']=="edit") or (@$_GET['view']=="paquete" and @$_GET['type']=="show")) {echo"active";}  ?>">    
                            <a href="paquete/index">
                                <i class="fa fa-th"></i> <span>Servicios</span>
                            </a>
                        </li>
 -->                        <!-- <li class="header">Clientes</li> -->
                        <!-- <li class="<?php if((@$_GET['view']=="cliente" and @$_GET['type']=="index") or (@$_GET['view']=="cliente" and @$_GET['type']=="create") or (@$_GET['view']=="cliente" and @$_GET['type']=="edit") or (@$_GET['view']=="cliente" and @$_GET['type']=="show")) {echo"active";}  ?>">    
                            <a href="cliente/index">
                                <i class="fa fa-users"></i> <span>Clientes</span>
                            </a>
                        </li> -->
                    <?php//  } ?>

                        <li class="header">Reportes</li>
                        <?php// if($_SESSION['is_admin']){ ?>
                        <li class="<?php if($_GET['view']=="cobro"){echo"active";} ?>">
                            <a href="cobro">
                                <i class="fa fa-th-list"></i> <span>Cobros</span>
                            </a>
                        </li>
                        <?php//  } ?>
                        
                        <!-- cajero -->
                        <li class="<?php if($_GET['view']=="corte-diario"){echo"active";} ?>">
                            <a href="corte-diario">
                                <i class="fa fa-usd"></i> <span>Corte Diario</span>
                            </a>
                        </li>

                        <li class="<?php if($_GET['view']=="pagos-atrasados"){echo"active";} ?>">
                            <a href="pagos-atrasados">
                                <i class="fa fa-thumbs-down"></i> <span>Pagos Atrasados</span>
                            </a>
                        </li>
                        <!-- end cajero -->

                        <li class="">
                            <a target="_blank" href="../admin">
                                <i class="fa fa-users"></i> <span>Administración Alumnos</span>
                            </a>
                        </li>

                        
                    
                    <?php //if($_SESSION['is_admin']){ ?>
                        <!-- <li class="header">Configuración</li>
                        <li class="<?php if((@$_GET['view']=="usuario" and @$_GET['type']=="index") or (@$_GET['view']=="usuario" and @$_GET['type']=="create") or (@$_GET['view']=="usuario" and @$_GET['type']=="edit") or (@$_GET['view']=="usuario" and @$_GET['type']=="show")) {echo"active";}  ?>">    
                            <a href="usuario/index">
                                <i class="fa fa-users"></i> <span>Usuarios</span>
                            </a>
                        </li>
                        
                        <li class="<?php if($_GET['view']=="business_profile"){echo"active";} ?>">    
                            <a href="business_profile">
                                <i class="fa fa-briefcase"></i> <span>Perfil de la empresa</span>
                            </a>
                        </li> -->
                    <?php // } ?>
                    </ul>
                </section>
            </aside><!-- /.sidebar -->
            <?php endif; ?>
                <!-- =============================================== -->
                <?php 
                    if (isset($_SESSION["user_id"])) {
                        View::load("home");
                    }else{
                        View::load("index");
                    }
                ?>
                <!-- =============================================== -->
            <?php if(isset($_SESSION["user_id"])):?>
            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Versión</b> <?php echo VERSION ?>
                </div>
                <strong>Copyright &copy; 2017-<?php echo date('Y')?> <a href="http://abisoftgt.net" target="_blank"> Abisoft - GT</a></strong> Todos los derechos reservados.
            </footer>
        </div><!-- ./wrapper -->
        <script type="text/javascript">
            // To make Pace works on Ajax calls
            $(document).ajaxStart(function() { Pace.restart(); });
        </script>
    </body>
    <?php endif; ?>
</html>