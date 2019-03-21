<?php
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	/*Datos de conexion a la base de datos*/
	define('DB_HOST', 'localhost');//DB_HOST:  generalmente suele ser "127.0.0.1"
	define('DB_USERNAME', 'root');//Usuario de tu base de datos
	define('DB_PASSWORD', '');//Contraseña del usuario de la base de datos
	define('DB_DATABASE', 'mychool');//Nombre de la base de datos

	$con=@mysqli_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
    if(!$con){
        @die("<h2 style='text-align:center'>Imposible conectarse a la base de datos! </h2>".mysqli_error($con));
    }
    if (@mysqli_connect_errno()) {
        @die("Conexión falló: ".mysqli_connect_errno()." : ". mysqli_connect_error());
    }

    // No mostrar los errores de PHP
	// error_reporting(0);
?>