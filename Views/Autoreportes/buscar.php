<div class="row clearfix">
    <input type="hidden" name="method" value="PUT">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">
                <h2>
                    CONSULTAR EVENTOS
                </h2>
            </div>
            <div class="body">
                <div class="row clearfix">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="">
                                <label>Estado</label>
                                <select name="est" id="est" class="form-control">
                                    <option value=" ">Seleccionar</option>
                                    <option value="En Tramite">Tratamiento</option>
                                    <option value="Revisión">Revisión</option>
                                    <option value="Aprobacion">Verificado</option>
                                </select>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label>Tipo de evento</label>
                            <select name="inci" id="inci" class="form-control">
                                <option value=" ">Seleccionar</option>
                                <option value="AI">ACTOS INSEGUROS</option>
                                <option value="CI">CONDICIONES INSEGURAS</option>
                                <option value="SNC">SERVICIOS NO CONFORMES</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label>Proceso</label>
                            <select name="proceso" id="proceso" class="form-control" id="select_categoria">
                                <option value="NA">SELECCIONAR</option>
                                <?php foreach ($procesos as $pro) : ?>
                                    <option value="<?php echo $pro->Iniciales; ?>"><?php echo $pro->Iniciales . '-' . $pro->NombreProceso; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12  text-center">
                        <!--<input type="button" id="guardar" class="btn btn-default btn-block" value="Registrar">-->

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="resultado"></div>



<script>


function Ver(val){
        var id =  val
        $.ajax({
            data: {
                id: id
            },
            type: "post",
            url: "?c=autoreportes&a=Responder",
            beforeSend: function() {
                $('#index').html("<h5 class='text-center'>:::Cargando Información:::</h5>");
            },
            success: function(resp) {
                $('#resultado').html(resp);
                //$('#resultado').html("<div class='alert alert-success'></div>");
            }
        });
    }









    $('#est').on('change', function() {
        var estado = document.getElementById("est").value
        $.ajax({
            type: "POST",
            url: '?c=autoreportes&a=BuscarResp',
            data: {
                estado: estado,
            },
            beforeSend: function() {
                $('#resultado').html("<h5 class='text-center'>  Cargando Información</h5>");
            },
            success: function(resp) {
                $('#resultado').html(resp);
                $('#respuesta').html("");
            }
        });
    });


    $('#inci').on('change', function() {
        var inci = document.getElementById("inci").value
        $.ajax({
            type: "POST",
            url: '?c=autoreportes&a=BuscarResp',
            data: {
                inci: inci,
            },
            beforeSend: function() {
                $('#resultado').html("<h5 class='text-center'>  Cargando Información</h5>");
            },
            success: function(resp) {
                $('#resultado').html(resp);
                $('#respuesta').html("");
            }
        });
    });

    $('#editar').on('click', function() {
        var inci = document.getElementById("editar").value
        $.ajax({
            type: "POST",
            url: '?c=autoreportes&a=BuscarResp',
            data: {
                inci: inci,
            },
            beforeSend: function() {
                $('#resultado').html("<h5 class='text-center'>  Cargando Información</h5>");
            },
            success: function(resp) {
                $('#resultado').html(resp);
                $('#respuesta').html("");
            }
        });
    });

    $('#proceso').on('change', function() {
        var proceso = document.getElementById("proceso").value
        $.ajax({
            type: "POST",
            url: '?c=autoreportes&a=BuscarResp',
            data: {
                proceso: proceso,
            },
            beforeSend: function() {
                $('#resultado').html("<h5 class='text-center'>  Cargando Información</h5>");
            },
            success: function(resp) {
                $('#resultado').html(resp);
                $('#respuesta').html("");
            }
        });
    });
</script>