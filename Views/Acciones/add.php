<!--   <div class="row clearfix">-->
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="card">
        <div class="header">
            <h2>
                REGISTRAR PLAN DE ACCIÓN
            </h2>
        </div>
        <div class="body">
            <div class="row clearfix">
                <form action="" name="formAccion" id="formAccion" method="POST" role="form">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Análisis del indicador</label>
                                <textarea name="analisis" class="form-control" rows="10" cols="40" placeholder="Digita el analisis para este plan"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Actividades a desarrollar</label>
                                <textarea name="accion" class="form-control" rows="10" cols="40" placeholder="Digita las actividades para este plan"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Fecha de ejecución de actividades</label>
                                <input name="f_ejecucion" class="form-control" type="date">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Responsable de la actividad</label>
                                <select name="cargo_id" class="form-control">
                                    <?php foreach ($cargos as $cargo) : ?>
                                        <option value='<?php echo $cargo->id ?>'><?php echo $cargo->cargo ?></option>
                                    <?php endforeach; ?>
                                </select>
                                <input name="dato_id" type="hidden" value="<?php echo $_REQUEST['id'] ?>">
                            </div>
                        </div>
                    </div>
            </div>
              <input name="a_id" type="hidden" value="<?php echo @$_REQUEST['a_id'] ?>">
            <a type="" id="guardar" name="guardar" class="btn btn-primary btn-block">Registrar</a>
            </form>

        </div>
    </div>
</div>
<!-- #END# Input -->
<script>
    $(document).on('click', '#guardar', function(e) {
        var data = $("#formAccion").serialize();
        $.ajax({
            data: data,
            type: "post",
            url: "?c=Acciones&a=Crud",
            success: function(data) {
                Swal.fire({
                    icon: 'success',
                    title: 'BIEN HECHO!!',
                    timer: 1500
                }, )
                // $('#resultado').load(' #resultado');
            }

        })
    });
</script>