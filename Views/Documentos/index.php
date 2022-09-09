<div class="row text-center">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

        <div class="button-demo">
            <?php foreach ($procesos as $value) : ?>
                <button type="button" onclick="Ver('<?= $value->Iniciales ?>')" class="btn btn-default btn-sm waves-effect"><strong><?= $value->Iniciales ?></strong><br><?= $value->NombreProceso ?></button>
            <?php endforeach; ?>
        </div>

        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="index"></div>
    </div>
    <!-- #END# Bootstrap Default Buttons -->
    <script>
        function Ver(val) {
            var id = val
            $.ajax({
                data: {
                    id: id
                },
                type: "post",
                url: "?c=documentos&a=ver",
                beforeSend: function() {
                    $('#index').html("<h5 class='text-center'>:::Cargando Información:::</h5>");
                },
                success: function(resp) {
                    $('#index').html(resp);
                    //$('#resultado').html("<div class='alert alert-success'></div>");
                }
            });
        }
    </script>