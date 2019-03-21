<?php
	/**
		* Creador: Amner Saucedo Sosa
		* Sitio web: http://abisoftgt.net
		* E-Mail: waptoing7@gmail.com
	**/
include "../config/config.php";

require_once '../PhpWord/Autoloader.php';
use PhpOffice\PhpWord\Autoloader;
use PhpOffice\PhpWord\Settings;

Autoloader::register();

$word = new  PhpOffice\PhpWord\PhpWord();

$t_id=intval($_GET["team_id"]);
$blocks = mysqli_query($con, "select * from block where team_id=$t_id");

$team =  mysqli_query($con,"select * from team where id=$t_id");
while ($row=mysqli_fetch_array($team)) {
	$team_name=$row['name'];
}
$alumns = mysqli_query($con,"select * from alumn_team where team_id=$t_id");

$section1 = $word->AddSection();
$section1->addText("CALIFICACIONES - ".strtoupper($team_name),array("size"=>22,"bold"=>true,"align"=>"right"));


$styleTable = array('borderSize' => 6, 'borderColor' => '888888', 'cellMargin' => 40);
$styleFirstRow = array('borderBottomColor' => '0000FF', 'bgColor' => 'AAAAAA');

$table1 = $section1->addTable("table1");
$table1->addRow();
$table1->addCell()->addText("Nombre Completo");
foreach ($blocks as $block) {
	$table1->addCell()->addText($block['name']);
}
foreach($alumns as $al){

	$alumn_id=$al['alumn_id'];
	$getAlumn=mysqli_query($con, "select * from alumn where id=$alumn_id");
	$table1->addRow();
	foreach($getAlumn as $alumn){
		$table1->addCell(5000)->addText($alumn['name']." ".$alumn['lastname']);

		foreach ($blocks as $block) {

			$block_id=$block['id'];
			$al_id=$alumn['id'];
			$val = mysqli_query($con, "select * from calification where alumn_id=$al_id and block_id=$block_id");
			$v = "";
			foreach ($val as $values){
				$value=$values['val'];
			}
			if(mysqli_num_rows($val)!=0){ $v = $value; }
			$table1->addCell()->addText($v);
		}
	} //end foreach	

}

$word->addTableStyle('table1', $styleTable,$styleFirstRow);

$section1->addText("");
$section1->addText("");
$section1->addText("");


$filename = "califications-".time().".docx";
#$word->setReadDataOnly(true);
$word->save($filename,"Word2007");
//chmod($filename,0444);
header("Content-Disposition: attachment; filename='$filename'");
readfile($filename); // or echo file_get_contents($filename);
unlink($filename);  // remove temp file



?>