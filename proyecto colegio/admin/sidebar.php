<aside><!--sidebar start-->
	<div id="sidebar"  class="nav-collapse "><!-- sidebar menu start-->
		<ul class="sidebar-menu">                
			<li class="<?php if(isset($active1)){echo $active1;}?>">
				<a class="" href="dashboard.php">
					<i class="icon_house_alt"></i>
					<span>Dashboard</span>
				</a>
			</li>
			<li class="<?php if(isset($active2)){echo $active2;}?>">                     
				<a class="" href="teams.php">
					<i class="fa fa-cubes"></i>
					<span>Grados</span>
				</a>									 
			</li>	
			<li class="<?php if(isset($active3)){echo $active3;}?>">                     
				<a class="" href="users.php">
					<i class="fa fa-users"></i>
					<span>Catedraticos</span>
				</a>									 
			</li>
			<li class="<?php if(isset($activePagos)){echo $activePagos;}?>">                     
				<a class="" href="../pagos" target="_blank">
					<i class="fa fa-dollar"></i>
					<span>Gestion de Pagos</span>
				</a>									 
			</li>
			<li class="sub-menu <?php if(isset($active4)){echo $active4;}?>">
				<a href="javascript:;" class="">
					<i class="fa fa-cog"></i>
					<span>Configuración</span>
					<span class="menu-arrow arrow_carrot-right"></span>
				</a>
				<ul class="sub">
					<li class="<?php if(isset($active5)){echo $active5;}?>"><a class="" href="sliders.php">Slider</a></li>                          
					<li><a class="<?php if(isset($active6)){echo $active6;}?>" href="alumnsdest.php">Alumnos Destacados</a></li>
					<!-- <li><a class="" href="">Maestros Destacados</a></li> -->
					<li><a class="<?php if(isset($active7)){echo $active7;}?>" href="configuration.php">Configuracion</a></li>
				</ul>
			</li>      
		</ul><!-- sidebar menu end-->
	</div>
</aside><!--sidebar end-->
