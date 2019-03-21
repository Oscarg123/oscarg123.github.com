<a class="btn btn-primary" data-toggle="modal" href="#myModal"><i class="fa fa-plus"></i> Añadir Catedratico</a>
<!-- Modal -->
<div class="modal fade text-left" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Nuevo Catedratico</h4>
            </div>
            <div class="modal-body">
                <div id="result"></div>
                <form role="form" id="add" name="add">
                    <div class="panel-body">
                        <div class="form-group  col-md-12">
                            <label for="name">Nombre:</label>
                            <input type="text" name="name" class="form-control" id="name" placeholder="Nombre">
                        </div>
                        <div class="form-group  col-md-12">
                            <label for="lastname">Apellido:</label>
                            <input type="text" name="lastname" class="form-control" id="lastname" placeholder="Apellido">
                        </div>
                        <div class="form-group  col-md-12">
                            <label for="username">Usuario:</label>
                            <input type="text" name="username" class="form-control" id="username" placeholder="Usuario">
                        </div>
                        <div class="form-group  col-md-12">
                            <label for="email">Correo Electrónico:</label>
                            <input type="text" name="email" class="form-control" id="email" placeholder="Correo Electrónico">
                        </div>
                        <div class="form-group  col-md-12">
                            <label for="password">Contraseña:</label>
                            <input type="password" name="password" class="form-control" id="password" placeholder="Correo Electrónico">
                        </div>
                        <br><br>
                        <button id="save_data" class="btn btn-primary" type="submit">Guardar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">Cerrar</button>
            </div>
        </div>
    </div>
</div>
<!-- modal -->