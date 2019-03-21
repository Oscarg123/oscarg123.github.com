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
$team =  mysqli_query($con,"select * from team where id=$t_id");
while ($row=mysqli_fetch_array($team)) {
	$team_name=$row['name'];
}
$alumns = mysqli_query($con,"select * from alumn_team where team_id=$t_id");

$range= ((strtotime($_GET["finish_at"])-strtotime($_GET["start_at"]))+(24*60*60)) /(24*60*60);

$section1 = $word->AddSection();
$section1->addText("LISTA DE COMPORTAMIENTO - ".strtoupper($team_name),array("size"=>22,"bold"=>true,"align"=>"right"));


$styleTable = array('borderSize' => 6, 'borderColor' => '888888', 'cellMargin' => 40);
$styleFirstRow = array('borderBottomColor' => '0000FF', 'bgColor' => 'AAAAAA');

$table1 = $section1->addTable("table1");
$table1->addRow();
$table1->addCell()->addText("Nombre Completo");
for($i=0;$i<$range;$i++){ 
$table1->addCell()->addText(date("d-M",strtotime($_GET["start_at"])+($i*(24*60*60))));
}

foreach($alumns as $al){
	$alumn_id=$al['alumn_id'];
	$getAlumn=mysqli_query($con, "select * from alumn where id=$alumn_id");
	$table1->addRow();
	foreach($getAlumn as $alumn){
		$table1->addCell(3000)->addText($alumn['name']." ".$alumn['lastname']);
		for($i=0;$i<$range;$i++){ 
			$date_at= date("Y-m-d",strtotime($_GET["start_at"])+($i*(24*60*60)));

			$al_id=$alumn['id'];
			$team_id=$_GET["team_id"];
			$date_at1=$date_at;
			$behavior=mysqli_query($con,"select * from behavior where alumn_id=$al_id and team_id=$team_id and date_at=\"$date_at1\"");
		$v = "";
					if(mysqli_num_rows($behavior)!=0){
						foreach($behavior as $behavior_list){
							if($behavior_list['kind_id']==1){ $v="B"; break; }
							else if($behavior_list['kind_id']==2){ $v="E"; break; }
							else if($behavior_list['kind_id']==3){ $v="M"; break; }
							else if($behavior_list['kind_id']==4){ $v= "MM"; break; }
						} //end foreach
						
					}else{
						$v="N";
					}
		$table1->addCell()->addText($v);
		}
	}//en foreach
}

$word->addTableStyle('table1', $styleTable,$styleFirstRow);

$section1->addText("");
$section1->addText("");
$section1->addText("");

$filename = "behavior-".time().".docx";
#$word->setReadDataOnly(true);
$word->save($filename,"Word2007");
//chmod($filename,0444);
header("Content-Disposition: attachment; filename='$filename'");
readfile($filename); // or echo file_get_contents($filename);
unlink($filename);  // remove temp file



?>