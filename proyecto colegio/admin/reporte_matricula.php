<?php
    /* Connect To Database*/
    // include("config/db.php");
    include("config/config.php");
    
    session_start();
    // get the HTML
     ob_start();
     if (!isset($_SESSION['user_id'])){
            exit;
        }

    //recibir id Grado por get
    $tid = intval($_GET['tid']);
    $id = intval($_GET['id']);

    //consulta grupo
    $team = mysqli_query($con,"select * from team where id=$tid");
    $teamRw = mysqli_fetch_array($team);
    $nameTeam = $teamRw["name"];
    $is_favorite = $teamRw["is_favorite"];
    $user_id = $teamRw["user_id"];
    $price = $teamRw["price"];














    //consulta estudiante
    $alumn = mysqli_query($con,"select * from alumn where id=$id");
    $alumnRw = mysqli_fetch_array($alumn);

    //datos generales
        $codigo = $alumnRw["codigo"];
        $name = $alumnRw["name"];
        $lastname = $alumnRw["lastname"];
        $matricula = $alumnRw["matricula"];
        $anos = $alumnRw["anos"];
        $sexo = $alumnRw["sexo"];
        $lugar_hermanos = $alumnRw["lugar_hermanos"];
        $factor_sangre = $alumnRw["factor_sangre"];
        $rh = $alumnRw["rh"];
        $marcar = ($alumnRw["marcar"]) ? 1 : 0;
        

        //datos de nacimiento
        $fecha_nacimiento = $alumnRw["fecha_nacimiento"];
        $departamento = $alumnRw["departamento"];
        $municipio = $alumnRw["municipio"];


        //datos de identificacion
        $extendida_en_departamento = $alumnRw["extendida_en_departamento"];
        $extendida_en_municipio = $alumnRw["extendida_en_municipio"];
        $clase_identificacion = $alumnRw["clase_identificacion"];
        $numero_identificacion = $alumnRw["numero_identificacion"];


        
        //datos de localizacion
        $depto_residencia = $alumnRw["depto_residencia"];
        $localizacion_municipio = $alumnRw["localizacion_municipio"];
        $barrio = $alumnRw["barrio"];
        $estrato = $alumnRw["estrato"];
        $direccion = $alumnRw["direccion"];


        //datos de afiliacion
        $sisben = $alumnRw["sisben"];
        $nivel = $alumnRw["nivel"];
        $otras_eps = $alumnRw["otras_eps"];

        //datos academicos
        $situacion_ano_anterior = $alumnRw["situacion_ano_anterior"];
        $procedencia = $alumnRw["procedencia"];
        $reincidente = $alumnRw["reincidente"];
        $historial = $alumnRw["historial"];
        $padres = $alumnRw["padres"];

        //datos de comunicacion
        $telefono_fijo = $alumnRw["telefono_fijo"];       
        $celular = $alumnRw["celular"];       
        $retiro_alumno = $alumnRw["retiro_alumno"];   
        

        //datos de la madre
        $madre_nombre = $alumnRw["madre_nombre"]; 
        $madre_acudiente = $alumnRw["madre_acudiente"];   
        $madre_telefono = $alumnRw["madre_telefono"]; 
        $madre_celular = $alumnRw["madre_celular"];   
        $madre_ocupacion = $alumnRw["madre_ocupacion"];   
        $madre_empresa = $alumnRw["madre_empresa"];   
        $madre_tel_empresa = $alumnRw["madre_tel_empresa"];   

        //datos del padre
        $padre_nombre = $alumnRw["padre_nombre"]; 
        $padre_acudiente = $alumnRw["padre_acudiente"];   
        $padre_telefono = $alumnRw["padre_telefono"]; 
        $padre_celular = $alumnRw["padre_celular"];   
        $padre_ocupacion = $alumnRw["padre_ocupacion"];   
        $padre_empresa = $alumnRw["padre_empresa"];   
        $padre_tel_empresa = $alumnRw["padre_tel_empresa"];   

        //otro acudiente
        $acudiente_nombre = $alumnRw["acudiente_nombre"]; 
        $acudiente_telefono = $alumnRw["acudiente_telefono"]; 
        $acudiente_tel_empresa = $alumnRw["acudiente_tel_empresa"];   
        $acudiente_parentesco = $alumnRw["acudiente_parentesco"]; 

        //responsable de los costos
        $responsable_costos_nombre = $alumnRw["responsable_costos_nombre"];   
        $responsable_costos_parentesco = $alumnRw["responsable_costos_parentesco"];




        $observaciones = $alumnRw["observaciones"];






    

    
    // require_once(dirname(__FILE__).'/pdf/html2pdf.class.php');
    require_once('../pagos/libraries/pdf/html2pdf.class.php');
        

    
     include(dirname('__FILE__').'/pdf/documentos/res/matricula.php');
     // include('../pagos/libraries/pdf/documentos/html/matricula.php');
    $content = ob_get_clean();

    try
    {
        // init HTML2PDF
        // $html2pdf = new HTML2PDF('P', 'LETTER', 'es', true, 'UTF-8', array(0, 0, 0, 0));
        $html2pdf = new HTML2PDF('P', 'LEGAL', 'es', true, 'UTF-8', array(0, 0, 0, 0));
        // display the full page
        $html2pdf->pdf->SetDisplayMode('fullpage');
        // convert
        $html2pdf->writeHTML($content, isset($_GET['vuehtml']));
        // send the PDF
        $html2pdf->Output('Matricula.pdf');
    }
    catch(HTML2PDF_exception $e) {
        echo $e;
        exit;
    }
