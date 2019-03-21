<?php  
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/

	define("APP_NAME", "Sistema Pagos ");
	define("APP_URL", "http://localhost/mychool/pagos/");

	#Zona Horaria
	define("TIMEZONE", "America/Guatemala");

	#Database
	/*define("DB_CONNECTION", "mysql");
	define("DB_HOST", "127.0.0.1");   
	define("DB_PORT", "3306");
	define("DB_DATABASE", "mychool2");   
	define("DB_USERNAME", "root");      
	define("DB_PASSWORD", "");        */

	include "../admin/config/config.php";

	#Configuración del servidor SMTP
	define("USER_SMTP", "");
	define("PASSWORD_SMTP", "");
	define("FROM_NAME_SMTP", "Abisoft - GT");
	define("HOST_SMTP", "");
	define("PORT_SMTP", 0);

	#Versión
	define("VERSION", "1.0", true);

 	/*
 		*CONFIGURACIÓN PARA DESARROLLADORES
	*/
		 	#Quieres utilizar las funciones de desarrollador?
		 	#TRUE = SI
		 	#FALSE = NO
			define("DEVELOPER", false);

			#true si queremos mostrar errores!
			#false si "NO" queremos mostrar errores!
			define("DEBUG", true);
	/*
		*FIN DE LA CONFIGURACIÓN DE DESARROLLADORES
	*/
?>