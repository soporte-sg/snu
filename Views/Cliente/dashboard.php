<style>
  .contenedor{
  width:80%;
  height:auto;
  align-content: center;
}
/*Aplicamos la propiedad object-fit cover, ajustar su tamaño y no perder la proporcion de nuestra imagen*/
.img0{
  object-fit: cover;
  width:100%;
  height:100%;
}
</style>
<div class="body">          
                    <!-- Widgets -->
                    <!-- <div class="row clearfix">
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="info-box bg-pink hover-expand-effect">
                                <div class="icon">
                                    <i class="material-icons">playlist_add_check</i>
                                </div>
                                <div class="content">
                                    <div class="text">TOTALES</div>
                                    <div class="number " data-from="0" data-to="<?php echo $solicitudes->total ?>" data-speed="1000" data-fresh-interval="20">
                                    <?php echo $solicitudes->total ?> </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="info-box bg-cyan hover-expand-effect">
                                <div class="icon">
                                    <i class="material-icons">help</i>
                                </div>
                                <div class="content">
                                    <div class="text">SIN TRATAR</div>
                                    <div class="number " data-from="0" data-to="<?php echo $vacias->total ?>" data-speed="1000" data-fresh-interval="20">
                                    <?php echo $vacias->total ?></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="info-box bg-light-green hover-expand-effect">
                                <div class="icon">
                                    <i class="material-icons">forum</i>
                                </div>
                                <div class="content">
                                    <div class="text">APROBADAS</div>
                                    <div class="number count-to" data-from="0" data-to="<?php echo $si->total ?>" data-speed="1000" data-fresh-interval="20">
                                    <?php echo $si->total ?></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="info-box bg-orange hover-expand-effect">
                                <div class="icon">
                                    <i class="material-icons">block</i>
                                </div>
                                <div class="content">
                                    <div class="text">RECHAZADAS</div>
                                    <div class="number count-to" data-from="0" data-to="<?php echo $rev->total ?>" data-speed="1000" data-fresh-interval="20">
                                    <?php echo $rev->total ?></div>
                                </div>
                            </div>
                        </div>                         -->
                    <!-- #END# Widgets -->
                    <div class="col-md-12 text-center">
                    <div class="col-md-12 col-md-offset-1 contenedor">                        
                        <img src="Assets/img/snu.png" class="img-responsive img0" alt="Image">                        
                    </div>
                    </div>
                </div>
            </div>
        </div>
      <!-- #END# CPU Usage -->