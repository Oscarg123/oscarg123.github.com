<a class="btn btn-primary pull-right" data-toggle="modal" href="#myModal">Agregar Alumno</a>
<!-- Modal -->
<div class="modal fade text-left" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Agregar Alumno</h4>
            </div>
            <div class="modal-body">
                <section class="panel">
                    <header class="panel-heading">
                          <h3>Datos Generales</h3>
                    </header>
                    <div class="panel-body">
                        <div id="result"></div>
                        <form role="form" name="add" id="add">
                            <div class="form-group  col-md-12">
                                <label for="codigo">Código: </label>
                                <input type="text" name="codigo" class="form-control" id="codigo" placeholder="Código">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="name">Nombre: </label>
                                <input type="text" name="name" class="form-control" id="name" placeholder="Nombre">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="lastname">Apellido:</label>
                                <input type="text" name="lastname" class="form-control" id="lastname" placeholder="Apellido">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="matricula">Matricula: </label>
                                <!-- <input type="text" name="matricula" class="form-control" id="matricula" placeholder="Matricula"> -->
                                <select name="matricula" id="matricula" class="form-control">
                                    <option value="1">Si</option>
                                    <option value="2">No</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="anos">Años: </label>
                                <input type="text" name="anos" class="form-control" id="anos" placeholder="Años">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="sexo">Sexo: </label>
                                <select name="sexo" id="sexo" class="form-control">
                                    <option value="1">F</option>
                                    <option value="2">M</option>
                                </select>
                            </div>

                            <div class="form-group  col-md-12">
                                <label for="lugar_hermanos">Lugar entre hermanos: </label>
                                <select name="lugar_hermanos" id="lugar_hermanos" class="form-control">
                                    <option value="1">Único</option>
                                    <option value="2">Primero</option>
                                    <option value="3">Segundo</option>
                                    <option value="4">Tercero</option>
                                    <option value="5">Cuarto</option>
                                    <option value="6">Quinto</option>
                                    <option value="7">Sexto</option>
                                    <option value="8">Séptimo</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="factor_sangre">Factor sangre: </label>
                                <select name="factor_sangre" id="factor_sangre" class="form-control">
                                    <option value="1">A</option>
                                    <option value="2">B</option>
                                    <option value="3">O</option>
                                    <option value="4">AB</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="rh">R.H: </label>
                                <select name="rh" id="rh" class="form-control">
                                    <option value="1">Positivo</option>
                                    <option value="2">Negativo</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="marcar">Marcar: </label>
                                <input type="checkbox" name="marcar" class="form-control" id="marcar" placeholder="Marcar">
                            </div>

                            <!-- <div class="form-group  col-md-12">
                                <label for="address">Domicilio: </label>
                                <input type="text" name="address" class="form-control" id="address" placeholder="Domicilio">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="email">Correo Electrónico</label>
                                <input type="text" name="email" class="form-control" id="email" placeholder="Correo Electrónico">
                            </div>
                            <div class="form-group  col-md-12">
                                  <label for="phone">Telefóno</label>
                                  <input type="text" name="phone" class="form-control" id="phone" placeholder="Telefóno">
                            </div> -->


                            <header class="panel-heading">
                                  <h3>Datos de Nacimiento</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="fecha_nacimiento">Fecha Nacimiento</label>
                                <input type="date" name="fecha_nacimiento" class="form-control" id="fecha_nacimiento" placeholder="Fecha Nacimiento">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="departamento">Departamento</label>
                                <input type="text" name="departamento" class="form-control" id="departamento" placeholder="Departamento">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="municipio">Municipio</label>
                                <input type="text" name="municipio" class="form-control" id="municipio" placeholder="Municipio">
                            </div>



                            <header class="panel-heading">
                                  <h3>Datos identificación</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="extendida_en_departamento">Expedida en el departamento</label>
                                <input type="text" name="extendida_en_departamento" class="form-control" id="extendida_en_departamento" placeholder="Extendida en el departamento">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="extendida_en_municipio">Expedida en el Municipio</label>
                                <input type="text" name="extendida_en_municipio" class="form-control" id="extendida_en_municipio" placeholder="Extendida en el Municipio">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="clase_identificacion">Clase identificación</label>
                                <select name="clase_identificacion" id="clase_identificacion" class="form-control">

                                    <option value="1">Cédula de ciudadanía</option>
                                    <option value="2">Tarjeta de identidad</option>
                                    <option value="3">Cédula de extranjería</option>
                                    <option value="4">Registro civil</option>
                                    <option value="5">N.I.P</option>
                                    <option value="6">N.U.I.P</option>
                                    <option value="7">SED</option>
                                    <option value="8">Certificado Cabildo</option>
                                    <option value="9">Pasaporte</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="numero_identificacion">Número</label>
                                <input type="text" name="numero_identificacion" class="form-control" id="numero_identificacion" placeholder="Número">
                            </div>
    






                            <header class="panel-heading">
                                  <h3>Datos de Localización</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="depto_residencia">Depto Residencia</label>
                                <input type="text" name="depto_residencia" class="form-control" id="depto_residencia" placeholder="Depto Residencia">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="localizacion_municipio">Municipio</label>
                                <input type="text" name="localizacion_municipio" class="form-control" id="localizacion_municipio" placeholder="Municipio">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="barrio">Barrio</label>
                                <input type="text" name="barrio" class="form-control" id="barrio" placeholder="Barrio">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="estrato">Estrato</label>
                                <select name="estrato" id="estrato" class="form-control">
                                    <option value="0">0 (Cero)</option>
                                    <option value="1">1 (Uno)</option>
                                    <option value="2">2 (Dos)</option>
                                    <option value="3">3 (Tres)</option>
                                    <option value="4">4 (Cuatro)</option>
                                    <option value="5">5 (Cinco)</option>
                                    <option value="6">6 (Seis)</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="direccion">Dirección</label>
                                <input type="text" name="direccion" class="form-control" id="direccion" placeholder="Dirección">
                            </div>













                        <header class="panel-heading">
                                  <h3>Datos afilicación EPS</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="sisben">Sisben</label>
                                <select name="sisben" id="sisben" class="form-control">
                                    <option value="1">Si</option>
                                    <option value="2">No</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="nivel">Nivel</label>
                                <select name="nivel" id="nivel" class="form-control">
                               
                                    <option value="1">1 (Uno)</option>
                                    <option value="2">2 (Dos)</option>
                                    <option value="3">3 (Tres)</option>
                                    <option value="4">4 (Cuatro)</option>
                                    <option value="5">5 (Cinco)</option>
                                    <option value="6">6 (Seis)</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="otras_eps">Otras EPS</label>
                                <input type="text" name="otras_eps" class="form-control" id="otras_eps" placeholder="Otras EPS">
                            </div>
                        




                            <header class="panel-heading">
                                  <h3>Datos academicos</h3>
                            </header>
                        
                            <div class="form-group  col-md-12">
                                <label for="situacion_ano_anterior">Situación año anterior</label>
                                <select name="situacion_ano_anterior" id="situacion_ano_anterior" class="form-control">
                                    <option value="1">No estudio vigencia anterior</option>
                                    <option value="2">Aprobó</option>
                                    <option value="3">Reprobó</option>
                                    <option value="4">No culminó estudios</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="procedencia">Procedencia </label>

                                <select name="procedencia" id="procedencia" class="form-control">
                                    <option value="1">Privado</option>
                                    <option value="2">Público</option>
                
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="reincidente">Reincidente</label>
                                <select name="reincidente" id="reincidente" class="form-control">
                                    <option value="1">N</option>
                                    <option value="2">S</option>
                
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="historial">Historial</label>
                                <input type="text" name="historial" class="form-control" id="historial" placeholder="Historial">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="padres">Padres</label>
                                <input type="text" name="padres" class="form-control" id="padres" placeholder="Padres">
                            </div>




                            <header class="panel-heading">
                                  <h3>Datos de comunicación</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="telefono_fijo">Telefono Fijo</label>
                                <input type="text" name="telefono_fijo" class="form-control" id="telefono_fijo" placeholder="Telefono Fijo">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="celular">Celular</label>
                                <input type="text" name="celular" class="form-control" id="celular" placeholder="Celular">
                            </div>
                        

                            <header class="panel-heading">
                                  <h3>Retiro alumno</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="retiro_alumno">Retiro</label>
                                <select name="retiro_alumno" id="retiro_alumno" class="form-control">
                                    <option value="1">Si</option>
                                    <option value="2">No</option>
                                </select>
                            </div>
                            


















                             <header class="panel-heading">
                                  <h3>Datos de la Madre</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="madre_nombre">Nombre Completo</label>
                                <input type="text" name="madre_nombre" class="form-control" id="madre_nombre" placeholder="Nombre Completo">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="madre_acudiente">Acudiente</label>
                                <input type="text" name="madre_acudiente" class="form-control" id="madre_acudiente" placeholder="Acudiente">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="madre_telefono">Telefóno</label>
                                <input type="text" name="madre_telefono" class="form-control" id="madre_telefono" placeholder="Telefóno">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="madre_celular">Celular</label>
                                <input type="text" name="madre_celular" class="form-control" id="madre_celular" placeholder="Celular">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="madre_ocupacion">Ocupación</label>
                                <input type="text" name="madre_ocupacion" class="form-control" id="madre_ocupacion" placeholder="Ocupación">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="madre_empresa">Empresa donde trabaja</label>
                                <input type="text" name="madre_empresa" class="form-control" id="madre_empresa" placeholder="Empresa donde trabaja">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="madre_tel_empresa">Telefóno Empresa</label>
                                <input type="text" name="madre_tel_empresa" class="form-control" id="madre_tel_empresa" placeholder="Telefóno Empresa">
                            </div> 



                            <header class="panel-heading">
                                  <h3>Datos del Padre</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="padre_nombre">Nombre Completo</label>
                                <input type="text" name="padre_nombre" class="form-control" id="padre_nombre" placeholder="Nombre Completo">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="padre_acudiente">Acudiente</label>
                                <input type="text" name="padre_acudiente" class="form-control" id="padre_acudiente" placeholder="Acudiente">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="padre_telefono">Telefóno</label>
                                <input type="text" name="padre_telefono" class="form-control" id="padre_telefono" placeholder="Telefóno">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="padre_celular">Celular</label>
                                <input type="text" name="padre_celular" class="form-control" id="padre_celular" placeholder="Celular">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="padre_ocupacion">Ocupación</label>
                                <input type="text" name="padre_ocupacion" class="form-control" id="padre_ocupacion" placeholder="Ocupación">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="padre_empresa">Empresa donde trabaja</label>
                                <input type="text" name="padre_empresa" class="form-control" id="padre_empresa" placeholder="Empresa donde trabaja">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="padre_tel_empresa">Telefóno Empresa</label>
                                <input type="text" name="padre_tel_empresa" class="form-control" id="padre_tel_empresa" placeholder="Telefóno Empresa">
                            </div> 



                        <header class="panel-heading">
                                  <h3>Otro Acudiente</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="acudiente_nombre">Nombre Completo</label>
                                <input type="text" name="acudiente_nombre" class="form-control" id="acudiente_nombre" placeholder="Nombre Completo">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="acudiente_telefono">Telefóno</label>
                                <input type="text" name="acudiente_telefono" class="form-control" id="acudiente_telefono" placeholder="Telefóno">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="acudiente_tel_empresa">Telefóno Empresa</label>
                                <input type="text" name="acudiente_tel_empresa" class="form-control" id="acudiente_tel_empresa" placeholder="Telefóno Empresa">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="acudiente_parentesco">Parentesco</label>
                                <input type="text" name="acudiente_parentesco" class="form-control" id="acudiente_parentesco" placeholder="Parentesco">
                            </div>
                           

                           <header class="panel-heading">
                                  <h3>Responsable de los costos</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="responsable_costos_nombre">Nombre Completo</label>
                                <input type="text" name="responsable_costos_nombre" class="form-control" id="responsable_costos_nombre" placeholder="Nombre Completo">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="responsable_costos_parentesco">Parentesco</label>
                                <input type="text" name="responsable_costos_parentesco" class="form-control" id="responsable_costos_parentesco" placeholder="Parentesco">
                            </div>




                            <div class="form-group  col-md-12">
                                <label for="observaciones">Observaciónes</label>
                                <input type="text" name="observaciones" class="form-control" id="observaciones" placeholder="Observaciónes">
                            </div>
                           







































                            <!-- <header class="panel-heading">
                                  <h3>Contacto</h3>
                            </header>
                            <div class="form-group  col-md-12">
                                <label for="fullname">Nombre Completo</label>
                                <input type="text" name="c1_fullname" class="form-control" id="fullname" placeholder="Nombre Completo">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="c1_address">Domicilio</label>
                                <input type="text" name="c1_address" class="form-control" id="c1_address" placeholder="Domicilio">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="c1_phone">Telefóno</label>
                                <input type="text" name="c1_phone" class="form-control" id="c1_phone" placeholder="Telefóno">
                            </div> 
                            <div class="form-group  col-md-12">
                                <label for="c1_note">Nota</label>
                                <textarea class="form-control" name="c1_note" id="c1_note" placeholder="Nota....."></textarea>
                            </div> -->








                            <input type="hidden" name="team_id" id="team_id">
                              &nbsp;&nbsp;&nbsp;
                            <button id="save_data" class="btn btn-primary" type="submit">Agregar</button>
                        </form>
                    </div>
                </section>
            </div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">Cerrar</button>
            </div>
        </div>
    </div>
</div>
<!-- modal -->