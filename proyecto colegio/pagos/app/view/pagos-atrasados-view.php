<?php 
    if(!isset($_SESSION["user_id"])){ Core::redir("./");}
    $user= UserData::getById($_SESSION["user_id"]);
    // si el id  del usuario no existe.
    if($user==null){ Core::redir("./");}
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Pagos atrasados <small>Control panel</small></h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="form-group">
            
                <!-- <div class="col-md-4">
                    <div class="input-group input-group-sm">
                        <input type="text" class="form-control" placeholder="Nombre" name="q" id='q' onkeyup="load(1);">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-info btn-flat" onclick='load(1);'><i class='fa fa-search'></i> Go!</button>
                        </span>
                    </div>
                </div> -->


                <div class="col-xs-1">
                    <div id="loader" class="text-center"></div>
                </div>
                <!-- <div class="col-md-offset-10"> -->
                <div class=" pull-right">
                    <!-- <a class="btn btn-primary" href="cobrar/create"><i class='fa fa-plus'></i> Nuevo</a> -->
                    <!-- <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            Estados <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu pull-right" role="menu">
                            <li class='active' onclick='status_payment(1);' id='Pendiente'><a href="pagos-atrasados#">Pendientes</a></li>
                            <li  onclick='status_payment(2);' id='pago_hoy'><a href="pagos-atrasados#">Pagos Hoy</a></li>
                            <li onclick='status_payment(3);' id='vencida'><a href="pagos-atrasados#">Vencidos</a></li>
                            <li onclick='status_payment(4);' id='pagada'><a href="pagos-atrasados#">Pagados</a></li>
                            <li onclick='status_payment(5);' id='todos'><a href="pagos-atrasados#">Todos</a></li>
                        </ul>
                    </div>
                    <input type='hidden' id='status_payment' value='5'> -->
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            Mostrar <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu pull-right" role="menu">
                            <li class='active' onclick='per_page(15);' id='15'><a href="pagos-atrasados#">15</a></li>
                            <li  onclick='per_page(25);' id='25'><a href="pagos-atrasados#">25</a></li>
                            <li onclick='per_page(50);' id='50'><a href="pagos-atrasados#">50</a></li>
                            <li onclick='per_page(100);' id='100'><a href="pagos-atrasados#">100</a></li>
                            <li onclick='per_page(1000000);' id='1000000'><a href="pagos-atrasados#">Todos</a></li>
                        </ul>
                    </div>
                    <input type='hidden' id='per_page' value='15'>
                </div>
            </div>
            <!-- <div class="col-xs-3"></div> -->
        </div>
        <br>
        <div id="resultados_ajax"></div><!-- Resultados Ajax -->
        <div class="box">
            <div class="box-header with-border">
                <!-- <h3 class="box-title">Historial de cobrars</h3> -->
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Minimizar"><i class="fa fa-minus"></i></button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Cerrar"><i class="fa fa-times"></i></button>
                </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">

                <div class="input-group">
                    <input type="text" name="q" id="q" onkeyup="searchForm()" placeholder="Buscar por nombre responsable costos, nombre alumno..." class="form-control">
                    <span class="input-group-btn">
                        <button type="button" onclick="searchForm()" class="btn btn-danger btn-flat"><i class="fa fa-search"></i> Buscar</button>
                    </span>
                </div>
                    <hr>

                <!-- <div class=" table-responsive"> -->
                    <div class="outer_div"></div><!-- Datos ajax Final --> 
                <!-- </div> -->
            </div>
            <!-- /.box-body -->
        </div><!-- /.box -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->

<script>
    $(function() {
        load(1);
    });

    function searchForm(){
        // if ($("#q").val()!="") {
            load(1)
        // }
    }

    function load(page){
            var query=$("#q").val();
            var per_page=$("#per_page").val();
            var parametros = {"page":page,'query':query,'per_page':per_page};
            //$.get("./?action=loadexpenses",parametros,function(data){
            $.get({
                url:"./?action=pagos-atrasados",
                data:parametros,
                beforeSend: function(data){
                    $("#loader").html("<img src='res/images/ajax-loader.gif'>");
                },
                //console.log(data);
                success:function(data){
                    $(".outer_div").html(data);
                    $("#loader").html("");
                }

            });
    }
    function per_page(valor){
        $("#per_page").val(valor);
        load(1);
        $('.dropdown-menu li' ).removeClass( "active" );
        $("#"+valor).addClass( "active" );
    }

    /*function status_payment(valor){
        $("#status_payment").val(valor);
        load(1);
        $('.dropdown-menu li' ).removeClass( "active" );
        $("#"+valor).addClass( "active" );
    }*/
</script>
<script>
    function eliminar(id){
        if(confirm('Esta acción  eliminará de forma permanente el registro \n\n Desea continuar?')){
            var page=1;
            var query=$("#q").val();
            var per_page=$("#per_page").val();
            var parametros = {"page":page,"query":query,"per_page":per_page,"id":id};
            
            $.get({
                // method: "GET",
                url:'./?action=pagos-atrasados',
                data: parametros,
                beforeSend: function(objeto){
                $("#loader").html("<img src='res/images/ajax-loader.gif'>");
              },
                success:function(data){
                    $(".outer_div").html(data).fadeIn('slow');
                    $("#loader").html("");
                    window.setTimeout(function() {
                    $(".alert").fadeTo(500, 0).slideUp(500, function(){
                    $(this).remove();});}, 5000);
                }
            })
        }
    }
</script>