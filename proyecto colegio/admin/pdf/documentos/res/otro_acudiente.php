
	<table style="width:100%;margin-top:5px">
		<tr>
			<td style="width:50%;" class='fondo-sky text-center'>Otro acudiente</td>
			<!-- <td style="width:%;"></td> -->
			<td style="width:50%;" class='fondo-sky text-center'>responsable de los costos</td>
		</tr>
		<tr>
			<td style="width:50%;vertical-align:top; border: 1px solid #000" >
				<table class="table" align="center">
					<tr>
						<td class='fondo-sky text-center'>Apellidos y nombres</td>
					</tr>
					<tr>
						<td class="left bottom right top"><?php echo $acudiente_nombre ?></td>
					</tr>
				</table>
				<table class="table" align="center">
					<tr>
						<td class='fondo-sky text-center'>Teléfono</td>
						<td class='fondo-sky text-center'>Tel empresa</td>
						<td class='fondo-sky text-center'>Parenteso</td>
		
					</tr>
					<tr>
						<td class="left bottom right top"><?php echo $acudiente_telefono ?></td>
						<td class="left bottom right top"><?php echo $acudiente_tel_empresa ?></td>
						<td class="left bottom right top"><?php echo $acudiente_parentesco ?></td>
					
					</tr>
				</table>
			</td>
		

			<td style="width:50%;vertical-align:top; border: 1px solid #000" >
				<table class="table" align="center">
					<tr>
						<td class='fondo-sky text-center'>Apellidos y nombres</td>
					</tr>
					<tr>
						<td class="left bottom right top"><?php echo $responsable_costos_nombre ?></td>
					</tr>
				</table>
				<table class="table" align="center">
					<tr>
						<td class='fondo-sky text-center'>Parenteso</td>
					</tr>
					<tr>
						<td class="left bottom right top"><?php echo $responsable_costos_parentesco ?></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>