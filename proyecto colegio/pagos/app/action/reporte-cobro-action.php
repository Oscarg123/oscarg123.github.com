<?php
	if (!isset($_SESSION['user_id'])){
		exit;
	}

	// $id = intval($id);
	$pago = PagoData::getById(intval($_GET['id']));

	// echo $pago->idcliente;
	

	$document="ticket.php";
	$ancho=75;
	$alto=170;
	$orientation="P";

	require_once('libraries/pdf/html2pdf.class.php');
		
    include('libraries/pdf/documentos/html/ticket.php');
    $content = ob_get_clean();

     try
    {
        // init HTML2PDF
        //$html2pdf = new HTML2PDF(array(220,170), $document_format, 'es', true, 'UTF-8', array(0, 0, 0, 0));
		$html2pdf = new HTML2PDF($orientation, array($ancho,$alto), 'en', true, 'UTF-8', array(0, 0, 0, 0));
        // display the full page
        $html2pdf->pdf->SetDisplayMode('fullpage');
        // convert
        $html2pdf->writeHTML($content, isset($_GET['vuehtml']));
        // send the PDF
        $html2pdf->Output('ticket.pdf');
    }
    catch(HTML2PDF_exception $e) {
        echo $e;
        exit;
    }
