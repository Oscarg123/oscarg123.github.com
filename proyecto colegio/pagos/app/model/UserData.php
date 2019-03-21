<?php
class UserData {
	public static $tablename = "user";

	public function Userdata(){
		$this->nombre = "";
		$this->perfil = "";
		$this->usuario = "";
		$this->password = "";
		$this->foto = "";
		$this->estado = "";
		$this->ultimo_login = date("Y-m-d H:i:s");
		$this->fecha = date("Y-m-d H:i:s");
	}

	public function add(){
		$sql = "insert into user (nombre,usuario,password,perfil,estado,fecha) ";
		$sql .= "values (\"$this->nombre\",\"$this->usuario\",\"$this->password\",\"$this->perfil\",1,\"$this->fecha\")";
		Executor::doit($sql);
	}

	public function del(){
		$sql = "delete from ".self::$tablename." where id=$this->id";
		return Executor::doit($sql);
	}

	public static function delBy($k,$v){
		$sql = "delete from ".self::$tablename." where $k=\"$v\"";
		Executor::doit($sql);
	}

	public function update(){
		$sql = "update ".self::$tablename." set nombre=\"$this->nombre\",perfil=\"$this->perfil\",usuario=\"$this->usuario\" where id=$this->id";
		Executor::doit($sql);
	}

	public function ultimo_login(){
		$date = date("Y-m-d H:i:s");
		$sql = "update ".self::$tablename." set ultimo_login=\"$date\" where id=$this->id";
		Executor::doit($sql);
	}

	public function update_passwd(){
		$sql = "update ".self::$tablename." set password=\"$this->password\" where id=$this->id";
		Executor::doit($sql);
	}

	public function updateById($k,$v){
		$sql = "update ".self::$tablename." set $k=\"$v\" where id=$this->id";
		Executor::doit($sql);
	}

	public static function getById($id){
		 $sql = "select * from ".self::$tablename." where id=$id";
		$query = Executor::doit($sql);
		return Model::one($query[0],new UserData());
	}

	public static function getBy($k,$v){
		$sql = "select * from ".self::$tablename." where $k=\"$v\"";
		$query = Executor::doit($sql);
		return Model::one($query[0],new UserData());
	}

	public static function getLogin($usuario,$password){
		$sql = "select * from ".self::$tablename." where usuario=\"$usuario\" and password=\"$password\"";
		$query = Executor::doit($sql);
		return Model::one($query[0],new UserData());
	}
	public static function getResetPassword($usuario){
		$sql = "select * from ".self::$tablename." where usuario=\"$usuario\"";
		$query = Executor::doit($sql);
		return Model::one($query[0],new UserData());
	}

	public static function getAll(){
		 $sql = "select * from ".self::$tablename;
		$query = Executor::doit($sql);
		return Model::many($query[0],new UserData());
	}

	public static function getAllBy($k,$v){
		 $sql = "select * from ".self::$tablename." where $k=\"$v\"";
		$query = Executor::doit($sql);
		return Model::many($query[0],new UserData());
	}

	public static function getLike($q){
		$sql = "select * from ".self::$tablename." where usuario like '%$q%'";
		$query = Executor::doit($sql);
		return Model::many($query[0],new UserData());
	}


	public static function countQuery($where){
		$sql = "SELECT count(*) AS numrows FROM ".self::$tablename." where ".$where;
		$query = Executor::doit($sql);
		return Model::one($query[0],new UserData());
	}

	public static function query($sWhere, $offset,$per_page){
		$sql = "SELECT * FROM ".self::$tablename." where ".$sWhere." LIMIT $offset,$per_page";
		$query = Executor::doit($sql);
		return Model::many($query[0],new UserData());
	}


}

?>