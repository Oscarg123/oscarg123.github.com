<?php
    /**
        * Creador: Amner Saucedo Sosa
        * Sitio web: http://abisoftgt.net
        * E-Mail: waptoing7@gmail.com
    **/
    session_start();

    include "config/config.php";

    if (isset($_SESSION['user_id']) && $_SESSION!==null) {
       header("location: dashboard.php");
    }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Iniciar Sesión</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

</head>
    <body class="login-img3-body">
        <div class="container">
            <form class="login-form" method="post" action="action/login.php">        
             <?php 
                $error=sha1(md5("cuenta inactiva"));
                if (isset($_GET['error']) && $_GET['error']==$error) {
                    echo "<div class='alert alert-warning alert-dismissible fade in' role='alert'>
                        <strong>Error!</strong> Cuenta Inactiva
                        </div>";
                }
                $invalid=sha1(md5("contrasena y email invalido"));
                if (isset($_GET['invalid']) && $_GET['invalid']==$invalid) {
                    echo "<div class='alert alert-danger alert-dismissible fade in' role='alert'>
                        <strong>Error!</strong> Contraseña o correo Electrónico invalido
                        </div>";
                }
             ?>

                <div class="login-wrap">
                    <p class="login-img"><i class="icon_lock_alt"></i></p>
                    <div class="input-group">
                      <span class="input-group-addon"><i class="icon_profile"></i></span>
                      <input type="text" name="email" class="form-control" placeholder="Correo Electrónico o Usuario" autofocus>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                        <input type="password" name="password" class="form-control" placeholder="Contraseña">
                    </div>
                    <label class="checkbox">
                        <input type="checkbox" value="remember-me"> Recordar
                        <span class="pull-right"> <a target="_blank" href="http://abisoftgt.net/"> Se te olvido la contraseña?</a></span>
                    </label>
                    <button name="token" class="btn btn-primary btn-lg btn-block" type="submit">Iniciar Session</button>
                </div>
            </form>
            <div class="text-right">
                <div class="credits">
                    <a target="_blank" href="http://abisoftgt.net/">MyChool</a> by <a target="_blank" href="http://abisoftgt.net/">Abisoft</a>
                </div>
            </div>
        </div>
    </body>
</html>
