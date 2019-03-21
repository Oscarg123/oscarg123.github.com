<?php 
    if(!isset($_SESSION["user_id"])){ Core::redir("./");}
    $user= UserData::getById($_SESSION["user_id"]);
    // si el id  del usuario no existe.
    if($user==null){ Core::redir("./");}


    $cliente = ClienteData::getById(intval($_GET["id"]));
    if($cliente==null){ Core::redir("cliente/index");}
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Pagos <small><?php echo $cliente->responsable_costos_nombre; ?></small></h1>
    </section>

    <!-- Main content -->
    <section class="content">

        <div class="row">
            <div class="col-md-7">
                <div id="resultados_ajax"></div><!-- Resultados Ajax -->
                <div class="panel panel-default">

                    <div class="panel-heading">
                        Información
                    </div>
                    <div class="panel-body">
                        <p>
                          <strong>Responsable Costo:</strong> <?php echo $cliente->responsable_costos_nombre; ?><br>
                            <strong>Grado: </strong> <?php echo $cliente->getPaquete()->name; ?><br>
                            <strong>Costo: </strong> <?php echo $cliente->getPaquete()->price; ?>
                        </p>
                      </div>
                </div>
            </div>


                            <div class="col-md-5">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Todos los pagos del año <strong><?php echo date("Y")  ?></strong>, Cliente: <strong><?php echo $cliente->responsable_costos_nombre; ?></strong>
                                    </div>
                                    <div class="panel-body">
    
                                        <div class="col-md-6">



<?php 
    $pagada = '<span class="label label-success">Pagada</span>';
    $vencida = '<span class="label label-warning">Pendiente</span>';
?>
<p>


<?php 
function CompruebaPago($mes,$cliente_id,$cliente_fecha_mensualidad){
    $pagarEsteMes=false;
    $existePagoCliente = PagoData::ExistPayment_MonthDay($mes,$cliente_id);
    if (count($existePagoCliente)>0) {
        $pagarEsteMes = true;
    }

    list($date)=explode(" ",$cliente_fecha_mensualidad);
    list($Y,$m,$d)=explode("-",$date);
    $date=$d."/".$m."/".$Y;

    // echo $d;

    if ($d<date("d") and date("m")>$mes and !$pagarEsteMes) {
        $spanBg = "bg-red";
        $spanText = "Vencida";
        echo "<span class=\"label $spanBg\">$spanText</span>";
    }else if($d===date("d") and !$pagarEsteMes){
        $spanBg = "bg-primary";
        $spanText = "Pago hoy";
        echo "<span class=\"label $spanBg\">$spanText</span>";
    }else if(date("m")<$mes and !$pagarEsteMes){
        $spanBg = "bg-yellow";
        $spanText = "Pendiente";
        echo "<span class=\"label $spanBg\">$spanText</span>";
    }else if($pagarEsteMes){
        $spanBg = "bg-green";
        $spanText = "Pagada";
        echo "<span class=\"label $spanBg\">$spanText</span>";
    }


    //si estamos en el mismo mes pero ya paso la fecha marque vencida

    if ($d<date("d") and date("m")==$mes and !$pagarEsteMes) {
        $spanBg = "bg-red";
        $spanText = "Vencida";
        echo "<span class=\"label $spanBg\">$spanText</span>";
    }
}
?>

    <strong>Enero <?php CompruebaPago(1,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Febrero <?php CompruebaPago(2,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Marzo <?php CompruebaPago(3,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Abril <?php CompruebaPago(4,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Mayo <?php CompruebaPago(5,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Junio <?php CompruebaPago(6,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    

   
</p>
                                        </div>
                                        <div class="col-md-6">
<p>
    <strong>Julio <?php CompruebaPago(7,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Agosto <?php CompruebaPago(8,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Septiembre <?php CompruebaPago(9,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Octubre <?php CompruebaPago(10,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Noviembre <?php CompruebaPago(11,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
    <strong>Diciembre <?php CompruebaPago(12,$cliente->id,$cliente->fecha_mensualidad) ?></strong><br>
</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                <div class="row">
            <div class="col-md-12">
                
           
            <div class="form-group">
            
                <div class="col-md-4"  style="display: none">
                    <div class="input-group input-group-sm">
                        <input type="text" class="form-control" placeholder="Nombre" name="q" id='q' value="<?php echo $_GET['id'] ?>" onkeyup="load(1);">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-info btn-lg btn-flat" onclick='load(1);'><i class='fa fa-refresh'></i></button>
                        </span>
                    </div>
                </div>


                <div class="col-xs-1">
                    <div id="loader" class="text-center"></div>
                </div>
                <!-- <div class="col-md-offset-10"> -->
                <div class=" pull-right">
                    <button type="button" class="btn btn-info" onclick='load(1);'><i class='fa fa-refresh'></i></button>
                    <!-- <a class="btn btn-primary" href="history/create"><i class='fa fa-plus'></i> Nuevo</a> -->
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            Mostrar <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu pull-right" role="menu">
                            <li class='active' onclick='per_page(15);' id='15'><a href="cliente/history/<?php echo intval($_GET['id']) ?>#">15</a></li>
                            <li  onclick='per_page(25);' id='25'><a href="cliente/history/<?php echo intval($_GET['id']) ?>#">25</a></li>
                            <li onclick='per_page(50);' id='50'><a href="cliente/history/<?php echo intval($_GET['id']) ?>#">50</a></li>
                            <li onclick='per_page(100);' id='100'><a href="cliente/history/<?php echo intval($_GET['id']) ?>#">100</a></li>
                            <li onclick='per_page(1000000);' id='1000000'><a href="cliente/history/<?php echo intval($_GET['id']) ?>#">Todos</a></li>
                        </ul>
                    </div>
                    <input type='hidden' id='per_page' value='15'>
                </div>
            </div>
            <!-- <div class="col-xs-3"></div> -->
             </div>
        </div>
        <br>

        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Pagos:
                    </div>
                    <div class="panel-body">
                        
                        <div class=" table-responsive">
                            <div class="outer_div"></div><!-- Datos ajax Final -->  
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section><!-- /.content -->
</div><!-- /.content-wrapper -->

<script>
    $(function() {
        load(1);
    });
    function load(page){
            var query=$("#q").val();
            var per_page=$("#per_page").val();
            var parametros = {"page":page,'query':query,'per_page':per_page};
            //$.get("./?action=loadexpenses",parametros,function(data){
            $.get({
                url:"./?action=cliente&type=history",
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
                url:'./?action=cliente&type=history',
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