<?php
if(isset($_SESSION["user_id"])){
	if (isset($_FILES["imagefile"])){
		$target_dir="res/images/";
		$target_file = $target_dir . basename($_FILES["imagefile"]["name"]);
		$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
		$imageFileZise=$_FILES["imagefile"]["size"];
				
		/* Inicio Validacion*/
		if(($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif" ) and $imageFileZise>0) {
			$errors[]= "<p>Lo sentimos, sólo se permiten archivos JPG , JPEG, PNG y GIF.</p>";
		}else if ($imageFileZise > 1048576) {//1048576 byte=1MB
			$errors[]= "<p>Lo sentimos, pero el archivo es demasiado grande. Selecciona logo de menos de 1MB</p>";
		}else{
				/* Fin Validacion*/
				if ($imageFileZise>0){
					move_uploaded_file($_FILES["imagefile"]["tmp_name"], $target_file);
					$imagen=basename($_FILES["imagefile"]["name"]);
					$logo_update="res/images/$imagen";
					$business = BusinessData::getById(1);
					$business->logo_url = $logo_update;
				}else{$logo_update="";}
					$business->update_logo();
?>		
						<img class="img-responsive" src="res/images/<?php echo $imagen;?>" alt="Bussines profile picture">
<?php
			}
				
	}	
	
	if (isset($errors)){
?>
		<div class="alert alert-danger">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<strong>Error! </strong>
			<?php
			foreach ($errors as $error){
				echo $error;
				}
			?>
		</div>	
<?php
	}
?>
<?php 
	if (isset($messages)){
?>
		<div class="alert alert-success">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<strong>Aviso! </strong>
			<?php
			foreach ($messages as $message){
					echo $message;
				}
			?>
		</div>	
<?php
	}
}else{
	Core::redir("index");	
}	
?>