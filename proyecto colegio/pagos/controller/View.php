<?php
	class View {
		
		public static function load($view){
			if(!isset($_GET['view'])){
				include "app/view/".$view."-view.php";
			}
			else{
				if (isset($_GET['type'])) {
					if(View::isValid()){
						include "app/view/".$_GET['view']."/".$_GET['type']."-view.php";
					}else{
						include "app/view/404-view.php";
					}
				}else{
					if(View::isValid()){
						include "app/view/".$_GET['view']."-view.php";
					}else{
						include "app/view/404-view.php";
					}
				}
			}
		}	

		public static function isValid(){
			$valid=false;
			if(isset($_GET["view"])){
				if (isset($_GET['type'])) {
					if(file_exists($file = "app/view/".$_GET['view']."/".$_GET['type']."-view.php")){
						$valid = true;
					}
				}else{
					if(file_exists($file = "app/view/".$_GET['view']."-view.php")){
						$valid = true;
					}
				}
			}
			return $valid;
		}

		public static function Error($message){
			print $message;
		}

	}
?>
