<?php
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/

	#esta funcion elimina el hecho de estar agregando los modelos manualmente
	function __autoload($modelname){
		if(Model::exists($modelname)){
			include Model::getFullPath($modelname);
		} 
	}

?>