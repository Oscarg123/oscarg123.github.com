
<style type="text/css">
<!--
table { vertical-align: top; }
tr    { vertical-align: top; }
td    { vertical-align: top; }
table.page_footer {width: 100%; border: none; background-color: white; padding: 2mm;border-collapse:collapse; border: none;}
}

-->
</style>
<page backtop="15mm" backbottom="15mm" backleft="15mm" backright="15mm" style="font-size: 12pt; font-family: arial" >
        <page_footer>
        <table class="page_footer">
        <?php
          //  $configuration = mysqli_query($con, "select * from configuration");
        ?>
            <tr>
                <td style="width: 50%; text-align: left">
                    P&aacute;gina [[page_cu]]/[[page_nb]]
                </td>
                <td style="width: 50%; text-align: right">
                    &copy; <?php echo "Abisoft "; echo  $anio=date('Y'); ?>
                </td>
            </tr>
        </table>
    </page_footer>
    <table cellspacing="0" style="width: 100%;">
        <tr>
            <td style="width: 25%; color: #444444;">
            <?php
                $name_sitex = "general_main_title";
                $name_website = mysqli_query($con,"select * from configuration where name=\"$name_sitex\" ");
                if ($r = mysqli_fetch_array($name_website)) {
                    $name_site=$r['val'];
                }
            ?>
               <h1><?php echo $name_site; ?></h1>
            </td>
    
            <?php
                $team =  mysqli_query($con,"select * from team where id=$t_id");
                $alumns = mysqli_query($con,"select * from alumn_team where team_id=$t_id");
                $range= ((strtotime($_GET["finish_at"])-strtotime($_GET["start_at"]))+(24*60*60)) /(24*60*60);

                while ($row=mysqli_fetch_array($team)) {
                    $team_name=$row['name'];
                }
            ?>    
            <td style="width: 75%;text-align:right">
                <h2>Asistencía <small style="color: peru;"><?php echo $team_name ?></small></h2>
            </td>
        </tr>
    </table>
    <br>
    <table cellspacing="0" style="width: 100%; text-align: left; font-size: 10pt;">
		<tr>
        <?php $id=$_SESSION['user_id']; 
            $user = mysqli_query($con, "select * from user where id=$id");
            while ($row=mysqli_fetch_array($user)) {
                $name_user=$row['name'];
                $lastname_user=$row['lastname'];
            }
        ?>
		<td style="width:50%; "><strong>Nombre:</strong> <br><?php echo $name_user." ".$lastname_user ?></td>
		
		</tr>
	</table>
	
	<table cellspacing="0" style="width: 100%; text-align: left; font-size: 11pt;">
		<tr>
			<td style="width: 100%;text-align:right">
			Fecha: <?php echo date("d-m-Y");?>
			</td>
		</tr>
	</table>

    <br><br>
    
        <table cellspacing="0" style="width: 100%; text-align: left;font-size: 11pt">
        <tr>
             <td style="width:100%; "><!-- Todos los alumnos. --></td><br><br>
        </tr>
    </table>
  
    <table cellspacing="0" style="width: 100%; border: solid 1px black; background: #E7E7E7; text-align: center; font-size: 10pt;padding:1mm;">
        <tr>
            <th>Nombre Completo &nbsp;&nbsp;</th>
           <?php for($i=0;$i<$range;$i++){  ?>
            <th><?php echo date("d-M",strtotime($_GET["start_at"])+($i*(24*60*60))) ?></th>
            <?php } ?>
        </tr>
    </table>

	<table  cellspacing="0" style="width: 100%; border: solid 1px black;  text-align: center; font-size: 11pt;padding:1mm;">
       
        <?php 
            foreach($alumns as $al){
                $alumn_id=$al['alumn_id'];
                $getAlumn=mysqli_query($con, "select * from alumn where id=$alumn_id");
                 foreach($getAlumn as $alumn){ 
       ?>
        <tr>
            <td><?php echo $alumn['name']." ".$alumn['lastname']; ?></td>
 
            <?php
                    for($i=0;$i<$range;$i++){ 
            $date_at= date("Y-m-d",strtotime($_GET["start_at"])+($i*(24*60*60)));

            $al_id=$alumn['id'];
            $team_id=$_GET["team_id"];
            $date_at1=$date_at;
            $asist = mysqli_query($con,"select * from assistance where alumn_id=$al_id and team_id=$team_id and date_at=\"$date_at1\"");
        $v = "";
                if(mysqli_num_rows($asist)!=false){
                    foreach($asist as $list_asist){
                        if($list_asist['kind_id']==1){ $v="A"; break; }
                        else if($list_asist['kind_id']==2){ $v="F"; break; }
                        else if($list_asist['kind_id']==3){ $v="R"; break; }
                        else if($list_asist['kind_id']==4){ $v= "J"; break; }
                    }
                 }
                ?>
            <td><?php echo $v; ?></td>
            <?php }  ?>
        </tr>
    <?php 
   
            }
        }

    ?>   
  
    </table>
    <br><br><br><br>	

</page>
