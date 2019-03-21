<style type="text/css">
<!--
div.zone
{
    border: solid 0.5mm #337AB7;
    border-radius: 2mm;
    padding: 1mm;
    background-color: #FFF;
    color: #337AB7;
}
div.zone_over
{
    width: 35mm;
    height: 20mm;
    
}
.bordeado
{
	border: solid 0.5mm #999;
	border-radius: 1mm;
	padding: 0mm;
	font-size:12px;
}
.table {
  border-spacing: 0;
  border-collapse: collapse;
}
.table-bordered td, .table-bordered th {
  padding: 2px;
  text-align: left;
  vertical-align: top;
}
.table-bordered {
  border: 1px solid #999;
  border-collapse: separate;
  
  -webkit-border-radius: 4px;
     -moz-border-radius: 4px;
          border-radius: 4px;
}
.left{border-left: 1px solid #999;}
.right{border-right: 1px solid #999;}
.top-border{
	border-top: 1px solid #999;
}
.bottom{
	border-bottom: 1px solid #999;
}
table.page_footer {width: 100%; border: none; background-color: white; padding: 2mm;border-collapse:collapse; border: none;}
.fondo-sky{
	/*background-color:#337AB7;*/
	/*background-color:#f7f9fa;*/
	/*color: white;*/
	color: black;
	padding:4px;
	font-size:14px;
	font-weight: bold;
}
.text-center{text-align:center;}
.text-right{text-align:right;}
-->
</style>
<page backtop="15mm" backbottom="15mm" backleft="15mm" backright="15mm" style="font-size: 13px; font-family: helvetica" >
	<page_footer>
        <table class="page_footer">
            <tr>
               <td style="width: 50%; text-align: left">
                    P&aacute;gina [[page_cu]]/[[page_nb]]
                </td>
                <td style="width: 50%; text-align: right">
                    &copy; <?php echo "AbisoftGT" ; echo  $anio=date('Y'); ?>
                </td>
            </tr>
        </table>
    </page_footer>
	       <table style="width:100%">
        <tr style="vertical-align: top">
            <td style="width:80%">
			<table style='width:100%' class='table'>
				<tr>
					<td style='width:15%'>
					
							<img src="img/EscudoNuevo.png" style="width: 100%;">
					
					
					</td>
					<td style='width:85%' class='text-center'>
						<span style="font-size:20px;color:#444;margin-top:2px">
							Instituto Infantil <br>
							"La Ezperanza"
						</span>
						<br>

						<span style="text-transform: uppercase; font-size: 12px">
							INSCRIPCIÓN 3593. LICENCIAS SEGUN RESOLUCIONES 4046-2546-0363 RATIFICACIÓN DE LICENCIAS Y APROBACIÓN DE ESTUDIOS N° 1523 DE MAYO 08/2000   CARRERA 108 N° 18 B -18 TELÉFONOS 2671423-5489747-FONTIBON.
						</span>
				
						<!-- Dirección: <?php echo "address";?><br>
						Ciudad: <?php echo "city";?><br>
						Teléfono: <?php echo "phone";?><br>
						E-mail: <?php echo "email";?><br> -->
						<!-- Nombre del Alumno: ___________________________________________ -->
					</td>
					
				</tr>
			</table>	
               

               <table style='width:100%' class='table'>
				<tr>
					
					<td style='width:65%' class='text-left'>
						
						<br><br>
						Nombre del Alumno: <?php echo $name," ",$lastname ?>
					</td>
				
					
				</tr>
				<tr>
					
					<td style="width: 100%">
						
							<hr>
					</td>
				</tr>
			</table>	
              
				
				
                
            </td>
			
			
            <td style="width:20%;">
				
                <div class="zone zone_over" style="text-align: center; vertical-align: top; ">
					<!-- <strong>GUIA DE REMISION</strong> -->
				<p style="font-size:13px;font-weight:bold">Matricula Nº:
					<br><?php echo $id ?>
				<br>
				<b style='margin-top:12px;font-size:13px;margin-bottom: 12px;'>Para el grado: <?php echo $nameTeam ;?> </b>
				</p> 
				<br>
				
				</div>
               <!-- <span style="font-size:14px;color:#444;margin-top:5px">Fecha: <?php echo "created_at";?></span> -->
			   
            </td>
            
        </tr>
        
    </table>







<?php include "datos_generales.php" ?>
<?php include "datos_localizacion.php" ?>
<?php include "datos_academicos.php" ?>
<?php include "padres_familia.php" ?>
<?php include "otro_acudiente.php" ?>



	<table style="width:100%;margin-top:5px">
		<tr>
			<td style="width:50%;" class='fondo-sky text-center'>Datos de Afiliacion E.P.S.</td>
	
			<td style="width:50%;" class='fondo-sky text-center'>Firma Directora</td>
		</tr>
		<tr>
			<td style="width:50%;vertical-align:top; border: 1px solid #000" >
				<table class="table" align="center">
					<tr>
						<td class='fondo-sky text-center'>Sisben</td>
						<td class='fondo-sky text-center'>Nivel</td>
						<td class='fondo-sky text-center'>Otro E.P.S.</td>
					</tr>
					<tr>
						<td class="left bottom right top">
							<?php 
								if($sisben == 1){
									echo 'Si';
								}else{
									echo 'No';
								}
							 ?>
						</td>
						<td class="left bottom right top">
							<?php switch ($nivel) {
								case 1:
									echo '1 (Uno)';
									break;
								case 2:
									echo '2 (Dos)';
									break;
								case 3:
									echo '3 (Tres)';
									break;
								case 4:
									echo '4 (Cuatro)';
									break;
								case 5:
									echo '5 (Cinco)';
									break;
								case 6:
									echo '6 (Seis)';
									break;							
								default:
									echo 'Sin nivel';
									break;
							} ?>
						</td>
						<td class="left bottom right top"><?php echo $otras_eps ?></td>
					</tr>
				</table>
			</td>
		

			<td style="width:50%;vertical-align:top; border: 1px solid #000" >
				<table class="table" align="center">
					<tr>
						<td class='fondo-sky text-center'>Firma de Directora</td>
					</tr>
				</table>
				<table class="table" align="center">
						<tr>
						<td style="text-align: center;width: 95%">
							<br><br>
							<hr>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>


	<p style="font-size: 12px">
		ACEPTAMOS Y NOS COMPROMETEMOS A CUMPLIR LO PROPUESTO EN EL MANUAL DE CONVIVENCIA,EL PROYECTO EDUCATIVO INSTITUCIONAL (P.E.I)Y OTRAS DISPOSICIONES DEL COLEGIO COMO:NORMAS,PLANES Y PROGRAMAS
	</p>




	<table style="width:100%;margin-top:5px">
		<tr>
			<td style="width:100%;vertical-align:top; border: 1px solid #000" >
				Observaciones: <?php echo $observaciones ?>
			</td>
		</tr>
	</table>


	<table style="width:100%;margin-top:5px">
		<tr>
			<td style="width:100%;vertical-align:top; border: 1px solid #000" >
				<span style="text-align: left;" class="text-left">Fecha de Matricula: <?php echo  $anio=date('d/m/Y'); ?></span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

				<span class="text-right">Para el Año colectivo de: <?php echo  $anio=date('Y'); ?></span>
			</td>
		</tr>
	</table>
	<br><br>
	<br><br>
	<br><br>
	
		 <table cellspacing="10" style="width: 100%; text-align: left; font-size: 11pt;">
			 <tr>
                <td style="width:50%;text-align: center;border-top:solid 0px"></td>
               <td style="width:50%;text-align: center;border-top:solid 0px"></td>
               <!-- <td style="width:33%;text-align: center;border-top:solid 0px"></td> -->
            </tr>		
			 <tr>
                <td style="width:50%;text-align: center;border-top:dotted 1px">
					
					Firma del Padre o Acudiente
				</td>
               <td style="width:50%;text-align: center;border-top:dotted 1px">Firma del Estudiante</td>
               <!-- <td style="width:33%;text-align: center;border-top:dotted 1px">Sr(a)(ita)</td> -->
            </tr>
        </table>

        <hr>
</page>

