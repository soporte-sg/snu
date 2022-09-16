<!-- #END# CPU Usage -->
<?php //print_r($docCodigo); 
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
                    <input type="hidden" name="id" value="<?= $docCodigo->id ?>">
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
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label for="">Codigo</label>
                            <?php //$numCod = $separada[2] + 1; 
                            ?>
                            <input type="text" name="CodDocumento" id="CodDocumento" class="form-control" value="<?= $docCodigo->CodDocumento ?>">
                        </div>
                    </div>
                </div>

                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label for="">Nombre Documento</label>
                            <input type="text" name="NomDocumento" id="NomDocumento" class="form-control" value="<?= $docCodigo->NomDocumento ?>">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label for="">Almacenamiento</label>
                            <input type="text" name="Almacenamiento" id="Almacenamiento" class="form-control" value="<?= $docCodigo->Almacenamiento ?>">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label for="">protección</label>
                            <input type="text" name="proteccion" id="proteccion" class="form-control" value="<?= $docCodigo->proteccion ?>">

                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label for="">preservación</label>
                            <input type="text" name="preservacion" id="preservacion" class="form-control" value="<?= $docCodigo->preservacion ?>">
                        </div>
                    </div>
                </div>


                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Emisión</label>
                            <input type="date" name="Emision" id="Emision" class="form-control" value="<?php echo date('Y-m-d', strtotime($docCodigo->Emision)) ?>" required>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Actualización</label>
                            <input type="date" name="Actualizacion" id="Actualizacion" class="form-control" value="<?php echo date('Y-m-d', strtotime($docCodigo->Actualizacion)) ?>" required>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Documento .pdf</label>
                            <input type="file" name="filename" id="filename" class="form-control">
                            <input type="hidden" name="dir" id="dir" class="form-control">
                            <input type="hidden" name="Proceso" id="Proceso" class="form-control" value="<?= $docCodigo->Proceso ?>">
                            <input type="hidden" name="Version" id="Version" class="form-control" value="<?= $docCodigo->Version + 1 ?>">
                            <input type="hidden" name="sol_id" id="sol_id" class="form-control" value="<?= $_REQUEST['id'] ?>">
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
    /* $(document).on('click', '#guardar', function(e) {
        var data = $("#formResponder").serialize();
        $.ajax({
            //async: false,
            data: data,
            type: "post",
            url: "?c=solicitudes&a=GestionDocumento",
            success: function(data) {
                Swal.fire({
                    icon: 'success',
                    title: 'BIEN HECHO!!',
                    timer: 1500
                }, )
                setTimeout(function() {
                    // window.location = '?c=solicitudes&a=index';
                    // window.location.reload(1);
                }, 2000)

            }
        });
    });*/

    $(document).on('click', '#guardar', function(e) {
        // var data = $("#formResponder").serialize();
        var formData = new FormData($("#formResponder")[0]);

        $.ajax({
            url: "?c=solicitudes&a=GestionDocumento",
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
                   // window.location = '?c=solicitudes&a=index';
                    // window.location.reload(1);
                }, 2000)

            }
        });





    });
</script>