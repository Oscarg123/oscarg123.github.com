<?php
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	
    class CobrarController{

        public function CobrarController()
        {
            $this->ControllerName = "cobrar";
        }
        public function index()
        {
            include $this->ControllerName."/"."index-action.php";
        }
        public function store($id)
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

    $CobrarController=new CobrarController();

    switch ($type) {
        case "index":
            $CobrarController->index();
            break;
        case "store":
            $CobrarController->store($id);
            break;
        case "update":
            $CobrarController->update($id);
            break;
        case "destroy":
            $CobrarController->destroy($id);
            break;              
    }

?>