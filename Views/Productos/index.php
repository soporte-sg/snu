<div class="block-header">
    <?php //print_r($productos); 
    ?>
</div>
<div class="row clearfix">
    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="info-box bg-pink hover-expand-effect">
            <div class="icon">
                <i class="material-icons">devices_other</i>
            </div>
            <div class="content">
                <div class="text">PRODUCTOS REGISTRADOS</div>
                <div class="number count-to" data-from="0" data-to="125" data-speed="15" data-fresh-interval="20"><?php //echo $productos; 
                                                                                                                    ?></div>
            </div>
        </div>
    </div>

    
     
    <?php  foreach ($productos as $value) : ?>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="info-box hover-zoom-effect">
                <div class="icon">
                    <i class="material-icons col-orange">devices</i>
                </div>
                <div class="content">
                    <div class="text"><?php echo $value->estado ?> </div>
                    <div class="number"><?php echo $value->cantidad ?></div>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
    <!-- #END# Widgets -->