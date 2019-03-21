<?php
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/

	class SkinsData {
		public static $tablename = "skins";

		public function SkinsData(){
			$this->var1 = "";
			$this->var2 = "";
			$this->var3 = "";
		}

		public function add(){
			$sql = "INSERT INTO ".self::$tablename." () VALUE ()";
			Executor::doit($sql);
		}

		public function del(){
			$sql = "DELETE FROM ".self::$tablename." where id=$this->id";
			Executor::doit($sql);
		}

		public function update(){
			$sql = "UPDATE ".self::$tablename." SET  where id=$this->id";
			Executor::doit($sql);
		}

		public static function getById($id){
			 $sql = "SELECT * FROM ".self::$tablename." where id=$id";
			$query = Executor::doit($sql);
			return Model::one($query[0],new SkinsData());
		}

		public static function getAll(){
			 $sql = "SELECT * FROM ".self::$tablename;
			$query = Executor::doit($sql);
			return Model::many($query[0],new SkinsData());
		}
	}
?>