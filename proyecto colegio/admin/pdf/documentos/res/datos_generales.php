	<table style="width:100%;margin-top:5px;">
		<tr>
			<td style="width:30%;" class='fondo-sky text-center'>Datos Generales</td>
			<td style="width:5%;"></td>
			<td style="width:30%;" class='fondo-sky text-center'>Datos de Nacimiento</td>
			<td style="width:5%;"></td>
			<td style="width:30%;" class='fondo-sky text-center'>Datos de Identificación</td>
		</tr>
		<tr>
			<td style="width:30%;vertical-align:top; border: 1px solid #000" >
				<table class="table" align="center">
					<tr>
						<td class='fondo-sky text-center'>Matricula</td>
						<td class='fondo-sky text-center'>Edad</td>
						<td class='fondo-sky text-center'>Sexo</td>
					</tr>
					<tr style="text-align: center;">
						<td class="left bottom right top"><?php echo ($matricula==1) ? 'Si' : 'No' ?></td>
						<td class="left bottom right top"><?php echo $anos ?></td>
						<td class="left bottom right top"><?php echo ($sexo==1) ? 'F' : 'M' ?></td>
					</tr>
				</table>
			</td>
			<td style="width:5%;"></td>
			<td style="width:30%;vertical-align:top; border: 1px solid #000">
				<table class="table" align="center">
					<tr>
						<td class='fondo-sky text-center'>Fecha</td>
						<td class='fondo-sky text-center'>Departamento</td>
						<!-- <td class='fondo-sky text-center'>Sexo</td> -->
					</tr>
					<tr style="text-align: center;">
						<td class="left bottom right top"><?php echo $fecha_nacimiento ?></td>
						<td class="left bottom right top"><?php echo $departamento ?></td>
						<!-- <td class='fondo-sky text-center'>M</td> -->
					</tr>
				</table>
				<table align="center">
					<tr style="text-align: center;">
						<td class="fondo-sky text-center">
							Municipio
						</td>
					</tr>
					<tr style="text-align: center;">
						<td class="left bottom right top">
							<?php echo $municipio ?>
						</td>
					</tr>
				</table>
			</td>
			<td style="width:5%;"></td>
			<td style="width:30%;vertical-align:top; border: 1px solid #000">
				<table class="table" align="center">
					<tr>
						<td class='fondo-sky text-center'>Clase de identificación</td>
						<td class='fondo-sky text-center'>Número</td>
						<!-- <td class='fondo-sky text-center'>Sexo</td> -->
					</tr>
					<tr style="text-align: center;">
						<td class="left bottom right top">
							<?php 

								switch ($clase_identificacion) {
									case 1:
										echo 'Cédula de ciudadanía';
										break;
									case 2:
										echo 'Tarjeta de identidad';
										break;
									case 3:
										echo 'Cédula de extranjería';
										break;
									case 4:
										echo 'Registro civil';
										break;
									case 5:
										echo 'N.I.P';
										break;
									case 6:
										echo 'N.U.I.P';
										break;
									case 7:
										echo 'SED';
										break;
									case 8:
										echo 'Certificado Cabildo';
										break;
									case 9:
										echo 'Pasaporte';
										break;
									default:
										echo 'Sin identificación';
										break;
								}
							?>
						</td>
						<td class="left bottom right top"><?php echo $numero_identificacion ?></td>
						<!-- <td class='fondo-sky text-center'>M</td> -->
					</tr>
					
				</table>

				<table align="center">
					<tr style="text-align: center;">
						<td class="fondo-sky text-center">
							Expedida en Dpto(Mcipio)
						</td>
					</tr>
					<tr style="text-align: center;">
						<td class="left bottom right top">
							<?php echo $extendida_en_departamento ?>( <?php echo $extendida_en_municipio ?>)
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>