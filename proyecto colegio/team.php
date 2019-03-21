<?php 
    /**
        * Creador: Amner Saucedo Sosa
        * Sitio web: http://abisoftgt.net
        * E-Mail: waptoing7@gmail.com
    **/
    include "header.php";
    $id=intval($_GET['id']);
    $sql=mysqli_query($con, "select * from alumn_dest where team_id=$id");
    $count=mysqli_num_rows($sql);

    $team = mysqli_query($con, "select * from team where id=$id");
    while ($row=mysqli_fetch_array($team)) {
        $name_team=$row['name'];
    }

    //evitar inyecciones sql
    if (mysqli_num_rows($team)==null) {
        //header("location: index.php");
        print "<script>window.location='index.php'</script>";
    }
?>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <?php if($count>0): ?>
                    <div style="background:#333;font-size:25px;color:white;padding:5px;"><?php echo $name_team ?></div>
                    <br>
                <div class="row">
                <?php foreach($sql as $getAlumns){

                    $id=$getAlumns['id'];
                    $id_al=$getAlumns['alumn_id'];
                    $t_id=$getAlumns['team_id'];

                    $alumns=mysqli_query($con, "select * from alumn where id=$id_al");

                    $teams = mysqli_query($con, "select * from team where id=$t_id");
                    foreach($alumns as $alumn){

                        $img_default="admin/img/profiles/default.png";
                        $img = "admin/img/profiles/".$alumn['image'];
                        if($alumn['image']==""){
                            $img=$img_default;
                        }

                    foreach($teams as $team){
                ?>
                    <div class="col-md-4">
                        <center>   
                            <img src="<?php echo $img ?>" title="<?php echo $alumn['name'].' '.$alumn['lastname']; ?>" style="width:120px;height:120px;">
                        </center>
                        <h4 class="text-center"><?php echo $alumn['name']." ".$alumn['lastname']; ?></h4>
                        <center>
                            <a href="alumn.php?id=<?php echo $id ?>&al_id=<?php echo $alumn['id'] ?>&t_id=<?php echo $team['id'] ?>" class="btn btn-default">Detalles <i class="fa fa-arrow-right"></i></a>
                        </center>
                    </div>
                    <?php 
                        } //teams
                            } //en foreach
                        } //end foreach
                    ?>    
                </div>
            </div>
            <?php else:?>
                  <div class="jumbotron">
              <h2>No hay alumnos destacados.</h2>
              <p>En esta pagina solo se muestran los alumnos destacados de <?php echo $name_team?> .</p>
              </div>
            <?php endif; ?>
        </div>
    </div>    
</section>

<br><br><br>
<section>
<div class="container">

<?php include "footer.php" ?>