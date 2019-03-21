	<table style="width:100%;margin-top:5px">
	<tr>
		<td style="width:100%;" class='fondo-sky text-center'>Datos academicos</td>
	</tr>
	<tr>
		<td style="width:100%;vertical-align:top; border: 1px solid #000" >
			<table class="table" align="center">
				<tr>
					<td style="width: 29%" class='text-center'><b>Situación academica año anterior</b></td>

					<td style="width: 1%" ></td>
					<td style="width: 19%" class='text-center'><b>Grado</b></td>
					<td style="width: 1%" ></td>
					<td style="width: 50%" class='text-center'><b>Procedencia insitucion educativa</b></td>
				</tr>
				<tr>
					<td style="width: 29%" class="left bottom right top  text-center">
						<?php 
							switch ($situacion_ano_anterior) {
								case 1:
									echo 'No estudio vigencia anterior';
									break;
								case 2:
									echo 'Aprobó';
									break;
								case 3:
									echo 'Reprobó';
									break;
								case 4:
									echo 'No culminó estudios';
									break;
								default:
									echo 'Sin situación año anterior';
									break;
							}
						 ?>
					</td>
					<td style="width: 1%"></td>
					<td style="width: 19%" class="left bottom right top  text-center">Maternal</td>
					<td style="width: 1%"></td>
					<td style="width: 50%" class="left bottom right top  text-center"></td>
				</tr>
				<tr>
					<td style="width: 29%" class='text-center'>Procedencia</td>

					<td style="width: 1%" ></td>
					<td style="width: 19%" class='text-center'></td>
					<td style="width: 1%" ></td>
					<td style="width: 50%" class='text-center'></td>
				</tr>
				<tr>
					<td style="width: 29%" class="left bottom right top  text-center">
						<?php if($procedencia==1){
							echo 'Privado';
						}else{
							echo 'Público';
						}
						?>
					</td>
					<td style="width: 1%"></td>
					<td style="width: 19%" class="left bottom right top  text-center">Parvulo</td>
					<td style="width: 1%"></td>
					<td style="width: 50%" class="left bottom right top  text-center"></td>
				</tr>
				<tr>
					<td style="width: 29%" class='text-center'>Reincidente</td>

					<td style="width: 1%" ></td>
					<td style="width: 19%" class='text-center'></td>
					<td style="width: 1%" ></td>
					<td style="width: 50%" class='text-center'></td>
				</tr>
				<tr>
					<td style="width: 29%" class="left bottom right top  text-center">
						<?php if($reincidente==1){
							echo 'N';
						}else{
							echo 'S';
						}
						?>
					</td>
					<td style="width: 1%"></td>
					<td style="width: 19%" class="left bottom right top  text-center">Prejardin</td>
					<td style="width: 1%"></td>
					<td style="width: 50%" class="left bottom right top  text-center"></td>
				</tr>
				<tr>
					<td style="width: 29%" class='text-center'>&nbsp;</td>

					<td style="width: 1%" ></td>
					<td style="width: 19%" class='text-center'></td>
					<td style="width: 1%" ></td>
					<td style="width: 50%" class='text-center'></td>
				</tr>
				<tr>
					<td style="width: 29%"></td>
					<td style="width: 1%"></td>
					<td style="width: 19%" class="left bottom right top  text-center">Jardin</td>
					<td style="width: 1%"></td>
					<td style="width: 50%" class="left bottom right top  text-center"></td>
				</tr>
				<tr>
					<td style="width: 29%" class='text-center'>&nbsp;</td>

					<td style="width: 1%" ></td>
					<td style="width: 19%" class='text-center'></td>
					<td style="width: 1%" ></td>
					<td style="width: 50%" class='text-center'></td>
				</tr>
				<tr>
					<td style="width: 29%"></td>
					<td style="width: 1%"></td>
					<td style="width: 19%" class="left bottom right top  text-center">Transición</td>
					<td style="width: 1%"></td>
					<td style="width: 50%" class="left bottom right top  text-center"></td>
				</tr>
			</table>
		</td>
	</tr>
</table>