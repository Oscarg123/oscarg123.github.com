<?php
class PaqueteData {
	public static $tablename = "paquetes";

	public function PaqueteData(){
		$this->paquete = "";
		$this->precio = "";
	}

	public function add(){
		$sql = "insert into paquetes (paquete,precio) ";
		$sql .= "values (\"$this->paquete\",\"$this->precio\")";
		Executor::doit($sql);
	}

	public function del(){
		$sql = "delete from ".self::$tablename." where paquete_id=$this->paquete_id";
		return Executor::doit($sql);
	}

	public static function delBy($k,$v){
		$sql = "delete from ".self::$tablename." where $k=\"$v\"";
		Executor::doit($sql);
	}

	public function update(){
		$sql = "update ".self::$tablename." set paquete=\"$this->paquete\",precio=\"$this->precio\" where paquete_id=$this->paquete_id";
		Executor::doit($sql);
	}

	public function updateById($k,$v){
		$sql = "update ".self::$tablename." set $k=\"$v\" where paquete_id=$this->paquete_id";
		Executor::doit($sql);
	}

	public static function getById($id){
		 $sql = "select * from ".self::$tablename." where paquete_id=$id";
		$query = Executor::doit($sql);
		return Model::one($query[0],new PaqueteData());
	}

	public static function getBy($k,$v){
		$sql = "select * from ".self::$tablename." where $k=\"$v\"";
		$query = Executor::doit($sql);
		return Model::one($query[0],new PaqueteData());
	}

	public static function getAll(){
		 $sql = "select * from ".self::$tablename;
		$query = Executor::doit($sql);
		return Model::many($query[0],new PaqueteData());
	}

	public static function getAllBy($k,$v){
		 $sql = "select * from ".self::$tablename." where $k=\"$v\"";
		$query = Executor::doit($sql);
		return Model::many($query[0],new PaqueteData());
	}

	public static function getLike($q){
		$sql = "select * from ".self::$tablename." where paquete like '%$q%'";
		$query = Executor::doit($sql);
		return Model::many($query[0],new PaqueteData());
	}

	public static function countQuery($where){
		$sql = "SELECT count(*) AS numrows FROM ".self::$tablename." where ".$where;
		$query = Executor::doit($sql);
		return Model::one($query[0],new PaqueteData());
	}

	public static function query($sWhere, $offset,$per_page){
		$sql = "SELECT * FROM ".self::$tablename." where ".$sWhere." LIMIT $offset,$per_page";
		$query = Executor::doit($sql);
		return Model::many($query[0],new PaqueteData());
	}
}

?>