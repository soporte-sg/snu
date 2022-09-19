<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
    <div class="button-demo">
        <?php foreach ($procesos as $value) : ?>
            <button type="button" onclick="Ver('<?= $value->Iniciales ?>')" class="btn btn-default btn-sm waves-effect"><strong><?= $value->Iniciales ?></strong><br><?= $value->NombreProceso ?></button>
        <?php endforeach; ?>
    </div>    
</div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="index"></div>
<!-- #END# Bootstrap Default Buttons -->
<script>
    function Ver(val) {
        var id = val
        $.ajax({
            data: {
                id: id
            },
            type: "post",
            url: "?c=formatos&a=ver",
            beforeSend: function() {
                $('#index').html("<div class='text-center'> <div class='preloader'><div class='spinner-layer pl-red'><div class='circle-clipper left'><div class='circle'></div></div><div class='circle-clipper right'><div class='circle'></div></div></div></div><p>Cargando Información</p> </div>");
                // $('#index').html("<h5 class='text-center'><img src='Assets/images/gifs/cargando-loading-026.gif'>:::Cargando Información:::</h5>");
            },
            success: function(resp) {
                $('#index').html(resp);
                //$('#resultado').html("<div class='alert alert-success'></div>");
            }
        });
    }
</script>

           

