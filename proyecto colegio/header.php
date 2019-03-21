<?php
    /**
        * Creador: Amner Saucedo Sosa
        * Sitio web: http://abisoftgt.net
        * E-Mail: waptoing7@gmail.com
    **/
    include "admin/config/config.php";

        $name_sitex = "general_main_title";
        $name_website = mysqli_query($con,"select * from configuration where name=\"$name_sitex\" ");
        if ($r = mysqli_fetch_array($name_website)) {
            $name_site=$r['val'];
        }

        $faviconn = "general_main_favicon";
        $favicon = mysqli_query($con,"select * from configuration where name=\"$faviconn\" ");
        if ($r = mysqli_fetch_array($favicon)) {
            $favicon_name=$r['val'];
        }


?>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Shool - PRO</title>
            <link rel="icon" type="image/png" href="admin/img/<?php echo $favicon_name ?>" />
        <link rel="stylesheet" type="text/css" href="res/lib/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="res/lib/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="res/btn-label.css">
        <script src="res/lib/jquery/jquery.min.js"></script>
    </head>
    <body>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-xs-5">
                    <br><h1><?php echo $name_site; ?></h1>
                </div>
                <div class="col-md-7 col-xs-5">
                    <br><br>
                    <form class="form-horizontal" role="form" method="get" action="search.php"> <!-- method="get" action="search.php" -->
                        <div class="input-group">
                            <input type="hidden" name="view" value="alumnos">
                            <input type="hidden" name="act" value="search">
                            <input type="text" name="q" placeholder="Buscar Alumnos ..." class="form-control">
                            <span class="input-group-btn">
                                <button class="btn btn-primary" type="submit">&nbsp;<i class="fa fa-search"></i>&nbsp;</button>
                            </span>
                        </div><!-- /input-group -->
                    </form>
                    <br><br>
                </div>
                <div class="col-md-2 col-xs-2">
                    <!-- cart button -->
                    <br><br>
                </div>
            </div>
        </div>
    </section>

    <nav class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="./"><i class="fa fa-home"></i> Inicio</a></li>
                    <?php
                        $teams = mysqli_query($con, "select * from team");
                     if(mysqli_num_rows($teams)>0):
                    ?>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-th-list"></i> Grados<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <?php foreach($teams as $team):?>
                                <li><a href="team.php?id=<?php echo $team['id']; ?>"><?php echo $team['name']; ?></a></li>
                            <?php endforeach; ?>
                        </ul>
                    </li>
                    <?php endif; ?>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div>
    </nav>