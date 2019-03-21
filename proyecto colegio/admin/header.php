<?php
    /**
        * Creador: Amner Saucedo Sosa
        * Sitio web: http://abisoftgt.net
        * E-Mail: waptoing7@gmail.com
    **/
    session_start();
    include "config/config.php";

    if (!isset($_SESSION['user_id']) && $_SESSION['user_id']==null) {
       header("location: index.php");
    }
    

    $user_id=$_SESSION['user_id'];
    $user=mysqli_query($con, "select * from user where id=$user_id");
    while ($row=mysqli_fetch_array($user)) {
        $username = $row['username'];
        $name = $row['name'];
        $lastname = $row['lastname'];
        $email = $row['email'];
        $image_pic = $row['image_pic'];
        $is_active = $row['is_active'];
        $is_admin = $row['is_admin'];
        $created_at = $row['created_at'];
    }


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

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="img/<?php echo $favicon_name ?>">

        <title><?php echo $name_site; ?> | <?php echo $name." ".$lastname?></title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-theme.css" rel="stylesheet">
        
        <link href="css/elegant-icons-style.css" rel="stylesheet" />
        <link href="css/font-awesome.min.css" rel="stylesheet" />    
        <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
    	<link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
        <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
        <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    	<link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    	<link rel="stylesheet" href="css/fullcalendar.css">
    	<link href="css/widgets.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet" />
    	<link href="css/xcharts.min.css" rel=" stylesheet">	
    	<link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
        <!-- DataTables -->
        <link rel="stylesheet" href="js/datatables/dataTables.bootstrap.css">

        <style>
            /*Estilo especial para los botones tipo file*/

            .btn-file {
              position: relative;
              overflow: hidden;
              }
            .btn-file input[type=file] {
                position: absolute;
                top: 0;
                right: 0;
                min-width: 100%;
                min-height: 100%;
                font-size: 100px;
                text-align: right;
                filter: alpha(opacity=0);
                opacity: 0;
                outline: none;
                background: white;
                cursor: pointer;
                display: block;
            }
            .btn-my-button{
                background: #5bc0de;
                color: #fff;
            }
            .btn-my-button:hover{
                color: #fff;
            }

        </style>
    </head>

    <body>
    
        <section id="container" class=""><!-- container section start -->
            <header class="header dark-bg">
                <div class="toggle-nav">
                    <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
                </div>

                <a href="#" class="logo"><span class="lite"><?php echo $name_site; ?></span></a>

                <div class="top-nav notification-row">                      
                    <ul class="nav pull-right top-menu"><!-- notificatoin dropdown start-->
                        <li class="dropdown"><!-- user login dropdown start-->
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="profile-ava">
                                    <img alt="mi perfil" width="30" src="img/profiles/<?php echo $image_pic?>">
                                </span>
                                <span class="username"><?php echo $name." ".$lastname ?></span>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu extended logout">
                                <div class="log-arrow-up"></div>
                                <li class="eborder-top">
                                    <a href="profile.php"><i class="icon_profile"></i> Mi Perfil</a>
                                </li>
                                <li>
                                    <a href="action/logout.php"><i class="icon_key_alt"></i> Salir</a>
                                </li>
                            </ul>
                        </li><!-- user login dropdown end -->
                    </ul><!-- notificatoin dropdown end-->
                </div>
            </header><!--header end-->
