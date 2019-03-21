<?php
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/

	class BusinessData {
		public static $tablename = "business";

		public function BusinessData(){
			$this->name = "";
			$this->industry = "";
			$this->number_id = "";
			$this->email = "";
			$this->phone = "";
			$this->tax = "";
			$this->currency = "";
			$this->timezone = "";
			$this->address1 = "";
			$this->city = "";
			$this->state = "";
			$this->postal_code = "";
			$this->country_id = "";
			$this->skin_id = "";
			$this->logo_url = "";
		}

		public function getSkin(){ return SkinsData::getById($this->skin_id); }

		public function update(){
			$sql = "UPDATE ".self::$tablename." SET name='$this->name',industry='$this->industry',number_id='$this->number_id',email='$this->email',phone='$this->phone',tax='$this->tax',currency_id='$this->currency',timezone='$this->timezone',address='$this->address1',city='$this->city',state='$this->state',postal_code='$this->postal_code',country_id='$this->country_id',skin_id='$this->skin_id' where id=$this->id";
			Executor::doit($sql);
		}

		public function update_logo(){
			$sql = "UPDATE ".self::$tablename." SET logo_url='$this->logo_url' where id=$this->id";
			Executor::doit($sql);
		}

		public static function getById($id){
			$sql = "select * from ".self::$tablename." where id=$id";
			$query = Executor::doit($sql);
			return Model::one($query[0],new BusinessData());
		}
	}
?>