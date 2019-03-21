<?php
class ClienteData {
	public static $tablename = "alumn";

	public function ClienteData(){
		$this->c1_fullname = "";
		// $this->rfc = "";
		$this->c1_address = "";
		$this->c1_phone = "";
		// $this->correo = "";
		$this->fecha_contratacion = "";
		$this->fecha_mensualidad = "";
		$this->idpaquete = "";
		$this->iva = "";
		// $this->notas = "";
		$this->is_active = "";
	}

	public function getPaquete(){ return PaqueteData::getById($this->idpaquete);}

	/*public function add(){
		$sql = "insert into alumn (c1_fullname, rfc,c1_address,c1_phone,correo,fecha_contratacion,fecha_mensualidad,idpaquete,iva,notas,is_active) ";
		$sql .= "values (\"$this->c1_fullname\",\"$this->rfc\",\"$this->c1_address\",\"$this->c1_phone\",\"$this->correo\",\"$this->fecha_contratacion\",\"$this->fecha_mensualidad\",\"$this->idpaquete\",\"$this->iva\",\"$this->notas\",\"$this->is_active\")";
		Executor::doit($sql);
	}*/

	/*public function del(){
		$sql = "delete from ".self::$tablename." where id=$this->id";
		return Executor::doit($sql);
	}*/

	public static function delBy($k,$v){
		$sql = "delete from ".self::$tablename." where $k=\"$v\"";
		Executor::doit($sql);
	}

	/*public function update(){
		$sql = "update ".self::$tablename." set c1_fullname=\"$this->c1_fullname\",rfc=\"$this->rfc\",c1_address=\"$this->c1_address\",c1_phone=\"$this->c1_phone\",correo=\"$this->correo\",fecha_contratacion=\"$this->fecha_contratacion\",fecha_mensualidad=\"$this->fecha_mensualidad\",idpaquete=\"$this->idpaquete\",iva=\"$this->iva\",notas=\"$this->notas\",is_active=\"$this->is_active\" where id=$this->id";
		Executor::doit($sql);
	}*/

	/*public function updateById($k,$v){
		$sql = "update ".self::$tablename." set $k=\"$v\" where id=$this->id";
		Executor::doit($sql);
	}*/

	public static function getById($id){
		 $sql = "select * from ".self::$tablename." where id=$id";
		$query = Executor::doit($sql);
		return Model::one($query[0],new ClienteData());
	}

	/*public static function getByIP($ip){
		 $sql = "select * from ".self::$tablename." where serie=\"$ip\"";
		$query = Executor::doit($sql);
		return Model::one($query[0],new ClienteData());
	}*/

	public static function getByIdDateDiff($id){
		$fecha_actual=date('Y-m-d');
		$sql = "SELECT DATEDIFF(fecha_mensualidad,\"$fecha_actual\") as 'dias_faltantes' from ".self::$tablename." where id=$id";
		$query = Executor::doit($sql);
		return Model::one($query[0],new ClienteData());
	}

	public static function getBy($k,$v){
		$sql = "select * from ".self::$tablename." where $k=\"$v\"";
		$query = Executor::doit($sql);
		return Model::one($query[0],new ClienteData());
	}

	public static function getAll(){
		 $sql = "select * from ".self::$tablename;
		$query = Executor::doit($sql);
		print_r($query);
		return Model::many($query[0],new ClienteData());
	}

	public static function getAllBy($k,$v){
		 $sql = "select * from ".self::$tablename." where $k=\"$v\"";
		$query = Executor::doit($sql);
		return Model::many($query[0],new ClienteData());
	}

	/*public static function getLike($q){
		$sql = "select * from ".self::$tablename." where antena like '%$q%'";
		$query = Executor::doit($sql);
		return Model::many($query[0],new ClienteData());
	}*/

	public static function countQuery($where){
		$sql = "SELECT count(*) AS numrows FROM ".self::$tablename." where ".$where;
		$query = Executor::doit($sql);
		return Model::one($query[0],new ClienteData());
	}

	public static function query($sWhere, $offset,$per_page){
		$sql = "SELECT * FROM ".self::$tablename." where ".$sWhere." LIMIT $offset,$per_page";
		$query = Executor::doit($sql);
		return Model::many($query[0],new ClienteData());
		// return $sql;
	}
}

?>