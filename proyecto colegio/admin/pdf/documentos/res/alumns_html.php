
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

                while ($row=mysqli_fetch_array($team)) {
                    $team_name=$row['name'];
                }
            ?>    
            <td style="width: 75%;text-align:right">
                <h2>Alumnos <small style="color: peru;"><?php echo $team_name ?></small></h2>
            </td>
        </tr>
    </table>
    <br>
    <table cellspacing="0" style="width: 100%; text-align: left; font-size: 10pt;">
		<tr>
		<td style="width:50%; "><strong>Nombre:</strong> <br><?php echo "Amner Saucedo Sosa" ?></td>
		
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
            <th style="width: 35%; text-align: left;">Nombre Completo</th>
            <th style="width: 20%; text-align: center;">Correo Electrónico</th>
            <th style="width: 25%;">Domicilio.</th>
            <th style="width: 20%; text-align: right;">Telefóno</th>
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
            <td style="width: 35%; text-align: left"><?php echo $alumn['name']." ".$alumn['lastname']; ?></td>
            <td style="width: 25%; text-align: center;"><?php echo $alumn['email']; ?></td>
            <td style="width: 25%; text-align: center;"><?php echo $alumn['address']; ?></td>
            <td style="width: 15%; text-align: right"><?php echo $alumn['phone']; ?></td>

        </tr>
    <?php 
            }
        }
    ?>   
  
    </table>
    <br><br><br><br>	

</page>
