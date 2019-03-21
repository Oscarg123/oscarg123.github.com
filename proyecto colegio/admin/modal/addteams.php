<a class="btn btn-primary" data-toggle="modal" href="#myModal"><i class="fa fa-plus"></i> Agregar Grado</a>
<!-- Modal -->
<div class="modal fade text-left" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Agregar Grado</h4>
            </div>
            <div class="modal-body">
                <div id="result"></div>
                <form role="form" id="add" name="add">
                     <section class="panel">
                        <header class="panel-heading">
                             Nuevo Grado
                        </header>
                        <div class="panel-body">
                            <div class="form-group  col-md-12">
                                <label for="name">Nombre:</label>
                                <input required type="text" name="name" class="form-control" id="name" placeholder="Nombre grado">
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="price">Colegiatura:</label>
                                <input required type="text" name="price" class="form-control" id="price" placeholder="Precio Colegiatura">
                            </div>
                            <br><br>
                            <button id="save_data" class="btn btn-primary" type="submit">Guardar</button>
                        </div>
                    </form>        
                </section>
            </div>
            <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">Cerrar</button>
            </div>
        </div>
    </div>
</div>
<!-- modal -->