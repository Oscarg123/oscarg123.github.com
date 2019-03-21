<?php 
    /**
        * Creador: Amner Saucedo Sosa
        * Sitio web: http://abisoftgt.net
        * E-Mail: waptoing7@gmail.com
    **/
    include "header.php";

    $q=$_GET['q'];

    $search = mysqli_query($con,"select * from alumn where (name like '%$q%' or lastname like '%$q%')");


    $count=mysqli_num_rows($search);

   // $sql=mysqli_query($con, "select * from alumn_dest where alumn_id=$alumn_id");
?>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <?php if($count>0): ?>
                    <div style="background:#333;font-size:25px;color:white;padding:5px;"><?php echo "Busqueda: ".$q ?></div>
                    <br>
                <div class="row">
                <?php foreach($search as $getAlumns){

                    $id_al=$getAlumns['id'];
                    $query=mysqli_query($con, "select * from alumn_dest where alumn_id=$id_al");
                    while ($rows=mysqli_fetch_array($query)) {
                        $team_id=$rows['team_id'];
                        $id=$rows['id'];
                    }

                    if(mysqli_num_rows($query)>0){

                        $img_default="admin/img/profiles/default.png";
                        $img = "admin/img/profiles/".$getAlumns['image'];
                        if($getAlumns['image']==""){
                            $img=$img_default;
                        } 
     
                ?>
                    <div class="col-md-4">
                        <center>   
                            <img src="<?php echo $img ?>" title="<?php echo $getAlumns['name'].' '.$getAlumns['lastname']; ?>" style="width:120px;height:120px;">
                        </center>
                        <h4 class="text-center"><?php echo $getAlumns['name']." ".$getAlumns['lastname']; ?></h4>
                        <center>
                            <a href="alumn.php?id=<?php echo $id ?>&al_id=<?php echo $getAlumns['id'] ?>&t_id=<?php echo $team_id ?>" class="btn btn-default">Detalles <i class="fa fa-arrow-right"></i></a>

                        </center>
                    </div>
                    <?php 
                        
                    }else{
                   ?>     
                    <!-- <div class="jumbotron">
                        <h2>No hay resultados.</h2>
                    </div> -->
                <?php
                    }
                } //end foreach teams
                    ?>    
                </div>
            </div>
            <?php else:?>
                <div class="jumbotron">
                    <h2>No hay resultados.</h2>
                </div>
            <?php endif; ?>
        </div>
    </div>    
</section>

<br><br><br>
<section>
<div class="container">

<?php include "footer.php" ?>