<?php 
    /**
        * Creador: Amner Saucedo Sosa
        * Sitio web: http://abisoftgt.net
        * E-Mail: waptoing7@gmail.com
    **/
    include "header.php";

    $id=intval($_GET['id']);
    $al_id=intval($_GET['al_id']);
    $t_id=intval($_GET['t_id']);

    $alumns=mysqli_query($con, "select * from alumn where id=$al_id");
    while ($row=mysqli_fetch_array($alumns)) {
        $name_al=$row['name'];
        $lastname_al=$row['lastname'];
        $image_al=$row['image'];
    }

    $alumn_dest=mysqli_query($con, "select * from alumn_dest where id=$id");
    while ($rows=mysqli_fetch_array($alumn_dest)) {
        $description=$rows['description'];
    }

    $teams = mysqli_query($con, "select * from team where id=$t_id");
    while ($row=mysqli_fetch_array($teams)) {
        $name_team=$row['name'];
    }

    $getTeams=mysqli_query($con, "select * from team");


        //evitar inyecciones sql
    if (mysqli_num_rows($alumn_dest)==null) {
        //header("location: index.php");
        print "<script>window.location='index.php'</script>";
    }
?>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">Grados</div>
                    <div class="list-group">
                        <?php foreach($getTeams as $team){?>
                        <a href="team.php?id=<?php echo $team['id'] ?>" class="list-group-item"><i class="fa fa-chevron-right"></i>  <?php echo $team['name'] ?></a>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div style="background:#3498db;font-size:25px;color:white;padding:5px;"><?php echo $name_al.' '.$lastname_al ?></div>
            <br>
        <div class="row">
            <div class="col-md-8">
                <?php
                    $img_default="admin/img/profiles/default.png";
                    $img = "admin/img/profiles/".$image_al;
                    if($image_al==""){
                        $img=$img_default;
                    }
                ?>    
                <center>   
                    <img src="<?php echo $img?>" title="<?php echo $name_al.' '.$lastname_al ?>"  style="width:180px;height:180px;">
                </center>
            </div>

        </div>
        <br><br>
        <div class="row">
            <div class="col-md-12">
            <hr>
                <h4>Descripcion</h4>
                <p><?php echo $description ?></p>

                <h4>Grado</h4>
                <p><?php echo $name_team; ?></p>
            <hr>
            </div>
        </div>
    </div>
</section>

<br><br><br>
<section>
<div class="container">
<?php include "footer.php" ?>