<?php
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	
    class PagoController{

        public function PagoController()
        {
            $this->ControllerName = "pago";
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

    $PagoController=new PagoController();

    switch ($type) {
        case "index":
            $PagoController->index();
            break;
        case "store":
            $PagoController->store();
            break;
        case "update":
            $PagoController->update($id);
            break;
        case "destroy":
            $PagoController->destroy($id);
            break;              
    }

?>