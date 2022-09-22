<div class="row text-center">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

        <div class="button-demo">
            <?php foreach ($procesos as $valor) : ?>
                <button type="button" onclick="Ver('<?= $valor->Iniciales ?>')" class="btn btn-default btn-sm "><strong><?= $valor->Iniciales ?></strong><br><?= $valor->NombreProceso ?></button>
            <?php endforeach; ?>
        </div>

        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="index"></div>
    </div>
    <!-- #END# Bootstrap Default Buttons -->
    <script>
        function Ver(valor) {
            var id = valor
            $.ajax({
                data: {
                    id: id
                },
                type: "post",
                url: "?c=documentos&a=ver",
                beforeSend: function() {
                    $('#index').html("<div class='text-center'> <div class='preloader'><div class='spinner-layer pl-red'><div class='circle-clipper left'><div class='circle'></div></div><div class='circle-clipper right'><div class='circle'></div></div></div></div><p>Cargando Información</p> </div>");
                },
                success: function(resp) {
                    $('#index').html(resp);
                    //$('#resultado').html("<div class='alert alert-success'></div>");
                }
            });
        }
    </script>