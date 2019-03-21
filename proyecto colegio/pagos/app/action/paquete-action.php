<?php
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	
    class PaqueteController{

        public function PaqueteController()
        {
            $this->ControllerName = "paquete";
        }
        public function index()
        {
            include $this->ControllerName."/"."index-action.php";
        }
        public function store()
        {
            include $this->ControllerName."/"."store-action.php";
        }
        public function update($id)
        {
            include $this->ControllerName."/"."update-action.php";
        }
        public function destroy($id)
        {
            include $this->ControllerName."/"."destroy-action.php";
        }
    }

    $type=(isset($_GET["type"])) ? $_GET["type"] : null ;
    $id=(isset($_GET["id"])) ? intval($_GET["id"]) : null ;

    $PaqueteController=new PaqueteController();

    switch ($type) {
        case "index":
            $PaqueteController->index();
            break;
        case "store":
            $PaqueteController->store();
            break;
        case "update":
            $PaqueteController->update($id);
            break;
        case "destroy":
            $PaqueteController->destroy($id);
            break;              
    }

?>