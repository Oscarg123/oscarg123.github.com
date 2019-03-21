	<table style="width:100%;margin-top:5px">
		<tr>
			<td style="width:60%;" class='fondo-sky text-center'>Datos de Localización</td>
			<td style="width:40%;" class='fondo-sky text-center'>Datos de Comunicación</td>
		</tr>
		<tr>
			<td style="width:60%;vertical-align:top; border: 1px solid #000" >
				<table class="table" align="center">
					<tr>
						<td class='fondo-sky text-center'>Barrio</td>
						<td class='fondo-sky text-center'>Estrato</td>
						<td class='fondo-sky text-center'>Dirección</td>
					</tr>
					<tr>
						<td class="left bottom right top"><?php echo $barrio ?></td>
						<td class="left bottom right top">
							<?php switch ($estrato) {
								case 0:
									echo '0 (Cero)';
									break;
								
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
									echo 'Sin estrato';
									break;
							} ?>
						</td>
						<td class="left bottom right top"><?php echo $direccion ?></td>
					</tr>
				</table>
			</td>
			<td style="width:40%;vertical-align:top; border: 1px solid #000">
				<table class="table" align="center">
					<tr>
						<td class='fondo-sky text-center'>Teléfono</td>
						<td class='fondo-sky text-center'>Celular No</td>
					</tr>
					<tr style="text-align: center;">
						<td class="left bottom right top"><?php echo $telefono_fijo ?></td>
						<td class="left bottom right top"><?php echo $celular ?></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	