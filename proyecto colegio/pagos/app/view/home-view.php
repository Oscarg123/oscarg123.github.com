<?php 
    // si el usuario no esta logeado
    if(!isset($_SESSION["user_id"])){ Core::redir("./");}
    $user= UserData::getById($_SESSION["user_id"]);
    // si el id  del usuario no existe.
    if($user==null){ Core::redir("./");}

    function sum_incomes_month($month){
        $income=PagoData::sumIncome_Month($month);
        echo $total=number_format($income->total,2,'.','');
    }
?>
<div class="content-wrapper"><!-- Content Wrapper. Contains page content -->
        <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="home"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <section class="content"><!-- Main content -->
        
                <div class="row"><!-- Small boxes (Stat box) -->
                    <div class="col-lg-3 col-xs-6">
                        <div class="small-box bg-red">
                            <div class="inner">
                                <h3><?php echo PagoData::getSumIncome()->total_pago; ?></h3>
                                <p>Total Ingresos</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-person-add"></i>
                            </div>
                            <a href="cobro" class="small-box-footer">Detalles <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                </div><!-- /.row -->

                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Ingresos por Mes</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Minimizar">
                                <i class="fa fa-minus"></i>
                            </button>
                            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Cerrar">
                                <i class="fa fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <div class="box-body">      
                        <div class="box-body"><iframe class="chartjs-hidden-iframe" style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
                            <canvas id="mybarChart2" style="width: 521px; height: 260px;" width="521" height="260"></canvas>
                        </div>
                    </div>
                </div>
    

                <div class="ajax-content">
                    
                </div>

    </section><!-- /.content -->
</div><!-- /.content-wrapper -->

    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.4/Chart.min.js"></script>
    <script>
    if($("#mybarChart2").length) {
            var f=document.getElementById("mybarChart2");
            new Chart(f,
            {
                type:"bar",
                data: {
                    labels:["Enero","Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio","Agosto", "Septiembre","Octubre", "Noviembre","Diciembre"],
                    datasets:[ {
                        label: "Ingresos", backgroundColor: "#26B99A", data: [<?php echo sum_incomes_month(1); ?>, <?php echo sum_incomes_month(2); ?>, <?php echo sum_incomes_month(3); ?>, <?php echo sum_incomes_month(4); ?>, <?php echo sum_incomes_month(5); ?>, <?php echo sum_incomes_month(6); ?>, <?php echo sum_incomes_month(7); ?>,<?php echo sum_incomes_month(8); ?>,<?php echo sum_incomes_month(9); ?>,<?php echo sum_incomes_month(10); ?>,<?php echo sum_incomes_month(11); ?>,<?php echo sum_incomes_month(12); ?>]
                    }
                    
                    ]
                }
                ,
                options: {
                    scales: {
                        yAxes:[ {
                            ticks: {
                                beginAtZero: !0
                            }
                        }
                        ]
                    }
                }
            }
            )
        }
</script>  