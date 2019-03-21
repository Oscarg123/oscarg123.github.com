<?php 
    /**
        * Creador: Amner Saucedo Sosa
        * Sitio web: http://abisoftgt.net
        * E-Mail: waptoing7@gmail.com
    **/
    include "header.php";
    $cnt=0;
    $slides = mysqli_query($con, "select * from slide where is_public=1 order by created_at desc");
?>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
<!-- - - - - - - - - - - - - slider - - - - - - - - - - - - - - - - - - - - -->
<?php if(mysqli_num_rows($slides)>0):?>
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <?php foreach($slides as $s):?>
                            <li data-target="#carousel-example-generic" data-slide-to="<?php echo $cnt; ?>" class="<?php if($cnt==0){ echo "active";}?>"></li>
                        <?php $cnt++; endforeach; ?>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <?php $cnt=0; foreach($slides as $s):
                        $url = "admin/img/slides/".$s['image'];
                        ?>

                    <div class="item <?php if($cnt==0){ echo "active"; }?>">
                        <img src="<?php echo $url; ?>" alt="...">
                        <div class="carousel-caption">
                            <h2><?php echo $s['title']; ?></h2>
                        </div>
                    </div>
                    <?php $cnt++; endforeach; ?>

                </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            <?php endif; ?>
            <br><br>
<!-- - - - - - - - - - - - - - end slider by abisoft- - - - - - - - - - - - - - - - - - - -->
<?php
    $getalumns=mysqli_query($con, "select * from alumn_dest order by created_at desc limit 6");
    $count=mysqli_num_rows($getalumns);
?>
        <?php if($count>0): ?>
            <p><div style="background:#333;font-size:25px;color:white;padding:5px;">Alumnos Destacados</div></p>
            <br>

          <div class="row">
            <?php foreach($getalumns as $alumns_dest){

                $id=$alumns_dest['id'];
                $id_al=$alumns_dest['alumn_id'];
                $t_id=$alumns_dest['team_id'];

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
                    <img src="<?php echo $img; ?>" title="<?php echo $alumn['name'].' '.$alumn['lastname']; ?>"  style="width:120px;height:120px;">
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
<?php else:?>
      <div class="jumbotron">
  <h2>No hay alumnos destacados.</h2>
  <p>En la pagina principal solo se muestran alumnos marcados como destacados.</p>
  </div>
<?php endif; ?>

        </div>

        </div>


    </div>
</section>

<br><br><br>

<section>
<div class="container">

<?php include "footer.php" ?>