<!-- #END# CPU Usage -->
<?php //print_r($documentos); 
?>
<div class="card">
    <div class="header">
        <div class="row clearfix">
            <div class="col-xs-12 col-sm-12">
                <h2>VALIDACIÓN DE CAMBIOS</h2>
            </div>
        </div>
    </div>
    <div class="body">
        <form method="post" name="formResponder" id="formResponder" enctype="multipart/form-data">
            <div class="row clearfix">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <input type="hidden" name="sol_id" value="<?= $_REQUEST['id'] ?>">
                    <input type="hidden" name="id" value="">
                    <!--start  gestion solicitud-->
                    <div class="col-sm-3">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Estado de la Solicitud</label>
                                <select name="Aprobado" class="form-control" required>
                                    <option value="">Seleccionar :)</option>
                                    <option value="si">Aprobado</option>
                                    <option value="no">No Aprobado</option>
                                    <option value="revision">En revisión</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-7">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Revisión respecto a la conveniencia y adecuación del sistema de gestión:</label>
                                <input type="text" name="Observaciones" id="Observaciones" class="form-control">
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-2">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Fecha Ejecución</label>
                                <input type="date" name="EjecucionCambio" id="EjecucionCambio" class="form-control" value="<?= date('Y-m-d') ?>">
                            </div>
                        </div>
                    </div>
                </div>
                <!--fin  gestion solicitud-->
                <hr>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Código</label>
                            <?php if ($solicitud->TipoSolicitud != 'creacion') : ?>
                                <?php $numCod = $separada[2] + 1; ?>
                                <input type="text" name="CodFormato" id="CodFormato" class="form-control" value="<?= $separada[0] . '-' . $separada[1] . '-' . $numCod ?>">
                            <?php else : ?>
                                <input type="text" name="CodFormato" id="CodFormato" class="form-control" value="">
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Proceso</label>
                            <input type="text" name="Proceso" id="Proceso" class="form-control" value="<?= $solicitud->Proceso ?>">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Nombre</label>
                            <input type="text" name="NomFormato" id="NomFormato" class="form-control" value="">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Ruta Formato</label>
                            <input type="text" name="RutaFormato" id="RutaFormato" class="form-control" value="">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Ruta Recuperación</label>
                            <input type="text" name="Recuperacion" id="Recuperacion" class="form-control" value="">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Versión</label>
                            <input type="text" name="Version" id="Version" class="form-control" value="1">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Emisión</label>
                            <input type="date" name="Emision" id="Emision" class="form-control" value="<?= date('Y-m-d'); ?>">
                        </div>
                    </div>
                </div>
                <?php if ($solicitud->TipoSolicitud != 'creacion') : ?>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Actualización</label>
                                <input type="date" name="Actualizacion" id="Actualizacion" class="form-control" value="">
                                <input type="hidden" name="id" id="id" class="form-control" value="">
                            </div>
                        </div>
                    </div><?php endif; ?>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Almacenamiento</label>
                            <input type="text" name="Almacenamiento" id="Almacenamiento" class="form-control" value="">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Tipo Recuperación</label>
                            <input type="text" name="TipoRecuperacion" id="TipoRecuperacion" class="form-control" value="">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Tiempo Retención</label>
                            <input type="text" name="TiempoRetencion" id="TiempoRetencion" class="form-control" value="">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Disposición Final</label>
                            <input type="text" name="DispFinal" id="DispFinal" class="form-control" value="">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Protección</label>
                            <input type="text" name="Proteccion" id="Proteccion" class="form-control" value="">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Responsable</label>
                            <input type="text" name="Responsable" id="Responsable" class="form-control" value="">
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-md-12">
                <input type="button" id="guardar" class="btn btn-success" value="Guardar">
            </div>
        </form>
    </div>
</div>
</div>
</div>
</div>

<script>
    $(document).on('click', '#guardar', function(e) {
        // var data = $("#formResponder").serialize();
        var formData = new FormData($("#formResponder")[0]);

        $.ajax({
            url: "?c=solicitudes&a=GestionFormato",
            type: "POST",
            data: formData,
            contentType: false,
            cache: false,
            processData: false,
            success: function(data) {
                Swal.fire({
                    icon: 'success',
                    title: 'BIEN HECHO!!',
                    timer: 1500
                }, )
                setTimeout(function() {
                    window.location = '?c=solicitudes&a=index';
                    // window.location.reload(1);
                }, 2000)
            }
        });
    });
</script>