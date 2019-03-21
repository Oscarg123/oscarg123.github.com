<?php
	/*-------------------------
	Autor: Abisoft
	Web: abisoft.facturacionweb.site
	Mail: waptoing7@gmail.com
	---------------------------*/
	session_start();
	if (!isset($_SESSION['user_id']) AND $_SESSION['user_id'] != 1) {
        header("location: ../../");
		exit;
    }
	/* Connect To Database*/
	include("../../config/config.php");
	//$session_id= session_id();

	//variables por get
	$t_id=intval($_GET["team_id"]);

	$sql_count=mysqli_query($con,"select * from assistance where team_id=$t_id");
	$count=mysqli_num_rows($sql_count);
	if ($count==0)
	{
	echo "<script>alert('No hay asistencias agregados, por favor agregalo...')</script>";
	echo "<script>window.close();</script>";
	exit;
	}

	require_once(dirname(__FILE__).'/../html2pdf.class.php');


    // get the HTML
     ob_start();
     include(dirname('__FILE__').'/res/assistance_html.php');
    $content = ob_get_clean();

    try
    {
        // init HTML2PDF
        $html2pdf = new HTML2PDF('P', 'LETTER', 'es', true, 'UTF-8', array(0, 0, 0, 0));
        // display the full page
        $html2pdf->pdf->SetDisplayMode('fullpage');
        // convert
        $html2pdf->writeHTML($content, isset($_GET['vuehtml']));
        // send the PDF
        $html2pdf->Output('alumns-assistance-.pdf');

    }
    catch(HTML2PDF_exception $e) {
        echo $e;
        exit;
    }
