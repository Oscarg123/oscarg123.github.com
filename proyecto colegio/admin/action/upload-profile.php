<?php
include "../config/config.php";

if (isset($_FILES["file"]))
{
    $file = $_FILES["file"];
    $name = $file["name"];
    $type = $file["type"];
    $tmp_n = $file["tmp_name"];
    $size = $file["size"];
    $folder = "../img/profiles/";
    
    if ($type != 'image/jpg' && $type != 'image/jpeg' && $type != 'image/png' && $type != 'image/gif')
    {
     // echo "Error, el archivo no es una imagen"; 
        echo "<div class='alert alert-info' role='alert'>
            <button type='button' class='close' data-dismiss='alert'>&times;</button>
            <strong>¡Error!</strong>, el archivo no es una imagen
            </div>";
    }
    else if ($size > 1024*1024)
    {
     // echo "Error, el tamaño máximo permitido es un 1MB";
        echo "<div class='alert alert-danger' role='alert'>
            <button type='button' class='close' data-dismiss='alert'>&times;</button>
            <strong>¡Error!</strong>, el tamaño máximo permitido es un 1MB
            </div>";
    }
    else
    {
        $src = $folder.$name;
        @move_uploaded_file($tmp_n, $src);

        $query=mysqli_query($con, "UPDATE user set image_pic=\"$name\"");
        if($query){
            echo "<div class='alert alert-success' role='alert'>
                <button type='button' class='close' data-dismiss='alert'>&times;</button>
                <strong>¡Bien hecho!</strong> Perfil Actualizado Correctamente
                </div>";
       }
    }
}