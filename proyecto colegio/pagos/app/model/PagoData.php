<?php
class PagoData {
	public static $tablename = "pagos";

	public function PagoData(){
		$this->idcliente = "";
		$this->idpaquete = "";
		$this->fecha = "";
		$this->hora = date("H:i:s");
		$this->pago = "";
		$this->efectivo = "";
		$this->forma_pago = "";
		$this->numero_deposito = "";
	}

	public function getCliente(){ return ClienteData::getById($this->idcliente);}
	public function getPaquete(){ return PaqueteData::getById($this->idpaquete);}

	public function add(){
		$sql = "insert into pagos (idcliente,idpaquete,fecha,hora,pago,efectivo,forma_pago,numero_deposito) ";
		$sql .= "values (\"$this->idcliente\",\"$this->idpaquete\",\"$this->fecha\",\"$this->hora\",\"$this->pago\",\"$this->efectivo\",\"$this->forma_pago\",\"$this->numero_deposito\")";
		Executor::doit($sql);
	}

	public function del(){
		$sql = "delete from ".self::$tablename." where pago_id=$this->pago_id";
		return Executor::doit($sql);
	}

	public static function delBy($k,$v){
		$sql = "delete from ".self::$tablename." where $k=\"$v\"";
		Executor::doit($sql);
	}

	public function update(){
		$sql = "update ".self::$tablename." set idcliente=\"$this->idcliente\",idpaquete=\"$this->idpaquete\",fecha=\"$this->fecha\",hora=\"$this->hora\",pago=\"$this->pago\",efectivo=\"$this->efectivo\" where pago_id=$this->pago_id";
		Executor::doit($sql);
	}

	public function updateActive(){
		$sql = "update ".self::$tablename." set activo=0 where pago_id=$this->pago_id";
		Executor::doit($sql);
	}

	public function updateById($k,$v){
		$sql = "update ".self::$tablename." set $k=\"$v\" where pago_id=$this->id";
		Executor::doit($sql);
	}

	public static function getById($id){
		 $sql = "select * from ".self::$tablename." where pago_id=$id";
		$query = Executor::doit($sql);
		return Model::one($query[0],new PagoData());
	}

	public static function getSumIncome(){
		 $sql = "select sum(pago) as total_pago from ".self::$tablename." where activo=1";
		$query = Executor::doit($sql);
		return Model::one($query[0],new PagoData());
	}

	public static function sumIncome_Month($month){
		$year=date('Y');
		$sql = "select SUM(pago) as total from ".self::$tablename." where year(fecha_agregado) = '$year' and month(fecha_agregado)= '$month' and activo=1";
		$query = Executor::doit($sql);
		return Model::one($query[0],new PagoData());
	}

	public static function ExistPayment_MonthDay($month,$idcliente){
		$year=date('Y');
		$sql = "select * from ".self::$tablename." where year(fecha) = '$year' and month(fecha)= '$month'  and idcliente=$idcliente";
		$query = Executor::doit($sql);
		return Model::one($query[0],new PagoData());
	}

	public static function lastById(){
		 $sql = "select LAST_INSERT_ID(pago_id) as last from ".self::$tablename." order by pago_id desc limit 0,1 ";
		$query = Executor::doit($sql);
		return Model::one($query[0],new PagoData());
	}

	public static function getBy($k,$v){
		$sql = "select * from ".self::$tablename." where $k=\"$v\" and numero_deposito!='' ";
		$query = Executor::doit($sql);
		return Model::one($query[0],new PagoData());
	}

	public static function getAll(){
		 $sql = "select * from ".self::$tablename;
		$query = Executor::doit($sql);
		return Model::many($query[0],new PagoData());
	}

	public static function getClientDaterange($idcliente,$daterange){
		list ($f_inicio,$f_final)=explode(" - ",$daterange);//Extrae la fecha inicial y la fecha final en formato espa?ol
		list ($dia_inicio,$mes_inicio,$anio_inicio)=explode("/",$f_inicio);//Extrae fecha inicial 
		$fecha_inicial="$anio_inicio-$mes_inicio-$dia_inicio";//Fecha inicial formato ingles
		list($dia_fin,$mes_fin,$anio_fin)=explode("/",$f_final);//Extrae la fecha final
		$fecha_final="$anio_fin-$mes_fin-$dia_fin";
		
		$sWhere = " where  fecha between '$fecha_inicial' and '$fecha_final' ";
		$sWhere .= " and idcliente=".$idcliente." ";

		$sql = "select * from ".self::$tablename.$sWhere;
		$query = Executor::doit($sql);
		return Model::many($query[0],new PagoData());
	}

	public static function getAllBy($k,$v){
		 $sql = "select * from ".self::$tablename." where $k=\"$v\"";
		$query = Executor::doit($sql);
		return Model::many($query[0],new PagoData());
	}

	public static function getLike($q){
		$sql = "select * from ".self::$tablename." where idcliente like '%$q%'";
		$query = Executor::doit($sql);
		return Model::many($query[0],new PagoData());
	}

	public static function countQuery($where){
		$sql = "SELECT count(*) AS numrows FROM ".self::$tablename." where ".$where;
		$query = Executor::doit($sql);
		return Model::one($query[0],new PagoData());
	}

	public static function query($sWhere, $offset,$per_page){
		$sql = "SELECT * FROM ".self::$tablename." where ".$sWhere." LIMIT $offset,$per_page";
		$query = Executor::doit($sql);
		return Model::many($query[0],new PagoData());
	}
}

?>