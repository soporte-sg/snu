<div class="row clearfix" >
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="panel">
            <div class="header text-center">
                <h2>
                    Configurar Privilegios<br>
                    <small>Asigna los privilegios del rol a cada módulo </small>
                </h2>
            </div>
            <div class="panel-body">
                <div class="row clearfix">
                    <div class="col-md-6">
                        <label for="tipo_usuario">Tipo de usuario</label>
                        <select name="tipousuario" id="tipousuario" onchange="Permisos()" class="form-control">
                            <option value="">Seleccionar</option>
                            <?php foreach ($roles as $value) : ?>
                                <option value="<?php echo  $value->id ?>"><?php echo  ucwords($value->rol)  ?></option>
                            <?php endforeach; ?>
                        </select>
                        <br><br>
                    </div>
                    <div id="resultado" class="col-md-12"></div>
                    <div id="resultado1" class="col-md-12"></div>                   
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>
<script>
    function Permisos() {
        var id = document.getElementById('tipousuario').value;
        $.ajax({
            data: {
                id: id
            },
            type: "post",
            url: "?c=permisos&a=crud",
            beforeSend: function() {
                $('#index').html("<h5 class='text-center'> <img src='View/img/gifs/cargando-loading-009.gif'> Cargando Información</h5>");
            },
            success: function(resp) {
                $('#resultado1').html(resp);
                //$('#resultado').html("<div class='alert alert-success'></div>");
            }
        });
    };
</script>