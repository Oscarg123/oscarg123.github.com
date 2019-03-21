<?php
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
	
    class ClienteController{

        public function ClienteController()
        {
            $this->ControllerName = "cliente";
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
        public function history($id)
        {
            include $this->ControllerName."/"."history-action.php";
        }
    }

    $type=(isset($_GET["type"])) ? $_GET["type"] : null ;
    $id=(isset($_GET["id"])) ? intval($_GET["id"]) : null ;

    $ClienteController=new ClienteController();

    switch ($type) {
        case "index":
            $ClienteController->index();
            break;
        case "store":
            $ClienteController->store();
            break;
        case "update":
            $ClienteController->update($id);
            break;
        case "destroy":
            $ClienteController->destroy($id);
            break;   
        case "history":
            $ClienteController->history($id);
            break;              
    }

?>