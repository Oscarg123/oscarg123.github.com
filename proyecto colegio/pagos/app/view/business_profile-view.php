<?php 
    // si el usuario no esta logeado
    if(!isset($_SESSION["user_id"])){ Core::redir("./");}
    $user= UserData::getById($_SESSION["user_id"]);
    // si el id  del usuario no existe.
    if($user==null){ Core::redir("./");}
?>
<?php 
    $business = BusinessData::getById(1);
?>
<div class="content-wrapper"><!-- Content Wrapper. Contains page content -->
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>PERFIL DE LA EMPRESA</h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-3">
                <!-- Profile Image -->
                <div class="box box-primary">
                    <div class="box-body box-profile">
                        <div id="load_img">
                            <img class="img-responsive" src="<?php echo $business->logo_url;?>" alt="Bussines profile picture">
                        </div>
                        <h3 class="profile-username text-center"><?php echo $business->name;?></h3>
                        <p class="text-muted text-center mail-text"><?php echo $business->email;?></p>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div><!-- /.col -->
            <div class="col-md-9">
                <form class="form-horizontal" action="./?action=business&id=<?php echo $business->id;?>" method="POST" enctype="multipart/form-data" name="profi">
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#details" data-toggle="tab" aria-expanded="false">Detalles</a></li>
                            <li class=""><a href="#address" data-toggle="tab" aria-expanded="false">Direcci&oacute;n</a></li>
                        </ul>
                        <div class="tab-content">
                            <div id="resultados_ajax"></div>
                            <div class="tab-pane active" id="details">
                                <div class="form-group">
                                    <label for="name" class="col-sm-3 control-label">Razon Social</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="business_name" name="business_name" placeholder="Nombre de la empresa" value="<?php echo $business->name;?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="industry" class="col-sm-3 control-label">Actividad econ&oacute;mica</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="industry" name="industry" placeholder="Actividad económica" value="<?php echo $business->industry;?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="number_id" class="col-sm-3 control-label">RUC</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="number_id" name="number_id" placeholder="Número de Ruc" required maxlength="11" value="<?php echo $business->number_id;?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="col-sm-3 control-label">Correo electr&oacute;nico</label>
                                    <div class="col-sm-9">
                                        <input type="email" class="form-control" id="email" name="email" placeholder="example@gmail.com" value="<?php echo $business->email;?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="phone" class="col-sm-3 control-label">Tel&eacute;fono</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="phone" name="phone" placeholder="Teléfono" value="<?php echo $business->phone;?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="tax" class="col-sm-3 control-label">IVA %</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="tax" name="tax" placeholder="Impuesto" value="<?php echo $business->tax;?>" maxlength=10>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="currency" class="col-sm-3 control-label">Moneda</label>
                                    <div class="col-sm-9">
                                        <?php  
                                            $query_currencies=CurrenciesData::getAll();; 
                                        ?>
                                        <select class='form-control select2' name="currency" id="currency">
                                        <?php foreach ($query_currencies as $currencies){ ?>
                                            <option value="<?php echo $currencies->id;?>" <?php if ($currencies->id==$business->currency_id){echo "selected";}else {echo "";}?>><?php echo $currencies->name;?></option>
                                        <?php } ?>                                        
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="timezone" class="col-sm-3 control-label">Zona horaria</label>
                                    <div class="col-sm-9">
                                        <?php  $query_timezones=TimezonesData::getAll(); ?>
                                        <select class='form-control select2' name="timezone" id="timezone">
                                        <?php
                                            foreach ($query_timezones as $timezones){
                                        ?>
                                            <option value="<?php echo $timezones->id;?>" <?php if ($business->timezone==$timezones->id){echo "selected";}else {echo "";}?>><?php echo $timezones->name;?></option>
                                            <?php  } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="timezone" class="col-sm-3 control-label">Tema</label>
                                    <div class="col-sm-9">
                                        <?php  $query_skin=SkinsData::getAll();  ?>
                                        <select class='form-control select2' name="theme" id="theme">
                                        <?php
                                          foreach($query_skin as $skins){
                                            ?>
                                            <option value="<?php echo $skins->id;?>" <?php if ($business->skin_id==$skins->id){echo "selected";}else {echo "";}?>><?php echo $skins->name;?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="image" class="col-sm-3 control-label">Logo</label>
                                    <div class="col-sm-9">
                                        <input type="file" name="imagefile" id="imagefile" onchange="upload_image();">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-9">
                                        <button type="button" class="btn btn-primary" onclick="return updateProfile();">Guardar datos</button>
                                    </div>
                                </div>
                            </div><!-- /.tab-pane -->
                            <div class="tab-pane" id="address">
                                <div class="form-group">
                                    <label for="address1" class="col-sm-3 control-label">Direccion Fiscal</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="address1" name="address1" placeholder="Calle" value="<?php echo $business->address;?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="city" class="col-sm-3 control-label">Provincia</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="city" name="city" placeholder="Ciudad" value="<?php echo $business->city;?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="state" class="col-sm-3 control-label">Distrito</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="state" name="state" placeholder="Región/Provincia" value="<?php echo $business->state;?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="postal_code" class="col-sm-3 control-label">Código Postal</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="postal_code" name="postal_code" placeholder="Código Postal" value="<?php echo $business->postal_code;?>">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="country_id" class="col-sm-3 control-label">País</label>
                                    <div class="col-sm-9">
                                        <?php $query_countries=CountriesData::getAll(); ?>
                                        <select class="form-control select2" name="country_id" id="country_id" style='width:100%'>
                                          <?php
                                            foreach ($query_countries as $countries){
                                              ?>
                                              <option value="<?php echo $countries->id;?>" <?php if ($business->country_id==$countries->id){echo "selected";}else {echo "";}?>><?php echo utf8_encode($countries->name);?></option>
                                              <?php 
                                            }
                                          ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-9">
                                        <button type="button" class="btn btn-primary" name="update" onclick="return updateProfile();">Guardar datos</button>
                                    </div>
                                </div>
                            </div> <!-- /.tab-pane -->
                        </div><!-- /.tab-content -->
                    </div><!-- /.nav-tabs-custom -->
                </form>
            </div><!-- /.col -->
        </div>
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
    <script src="res/plugins/select2/select2.full.min.js"></script>
    <script>
        $(function () {
        //Initialize Select2 Elements
        $(".select2").select2();
        
    });
        function updateProfile(){
            var business_name=$("#business_name").val();
            var industry=$("#industry").val();
            var number_id=$("#number_id").val();
            var email=$("#email").val();
            var phone=$("#phone").val();
            var tax=$("#tax").val();
            var currency=$("#currency").val();
            var timezone=$("#timezone").val();
            var address1=$("#address1").val();
            var city=$("#city").val();
            var state=$("#state").val();
            var postal_code=$("#postal_code").val();
            var country_id=$("#country_id").val();
            var theme=$("#theme").val();
            var parametros = {"business_name":business_name,"number_id":number_id,"email":email,"phone":phone,"tax":tax,
            "currency":currency, "timezone":timezone,"address1":address1,"city":city,"state":state,"postal_code":postal_code,"country_id":country_id,"industry":industry,"theme":theme };
             $.ajax({
                type: "POST",
                url: "./?action=business",
                data: parametros,
                 beforeSend: function(objeto){
                    $("#resultados_ajax").html("Mensaje: Cargando...");
                  },
                success: function(datos){
                $("#resultados_ajax").html(datos);
                $(".profile-username").html(business_name);
                $(".mail-text").html(email);
                
              }
            });
        }
    </script>
    <script>
        function upload_image(){
                
                var inputFileImage = document.getElementById("imagefile");
                var file = inputFileImage.files[0];
                if( (typeof file === "object") && (file !== null) )
                {
                    $("#load_img").text('Cargando...'); 
                    var data = new FormData();
                    data.append('imagefile',file);
                    
                    
                    $.ajax({
                        url: "./?action=image_ajax",        // Url to which the request is send
                        type: "POST",             // Type of request to be send, called as method
                        data: data,               // Data sent to server, a set of key/value pairs (i.e. form fields and values)
                        contentType: false,       // The content type used when sending data to the server.
                        cache: false,             // To unable request pages to be cached
                        processData:false,        // To send DOMDocument or non processed data file it is set to false
                        success: function(data)   // A function to be called if request succeeds
                        {
                            $("#load_img").html(data);
                            
                        }
                    }); 
                }
                
                
            }
    </script>