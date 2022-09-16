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
                            
                            <input type="text" name="codigo" id="codigo" class="form-control" value="<?= $docCodigo->codigo?>">
                        </div>
                    </div>
                </div>               

                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label for="">Nombre</label>
                            <input type="text" name="nombre" id="nombre" class="form-control"  value="<?= $docCodigo->nombre?>">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label for="">Expedición</label>
                            <input type='date' name="expedicion" id="expedicion" class="form-control" value="<?= $docCodigo->expedicion?>">
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label for="">Descripción</label>
                            <textarea name="descripcion" id="descripcion" class="form-control"><?= $docCodigo->descripcion?></textarea>                       
                        </div>
                    </div>
                </div>                
                <div class="col-sm-6">
                    <div class="form-group">
                        <div class="form-line">
                            <label>Documento .pdf</label>
                            <input type="file" name="filename" id="filename" class="form-control">
                            <input type="hidden" name="dir" id="dir" class="form-control">
                            <input type="hidden" name="proceso" id="proceso" class="form-control" value="<?= $solicitud->Proceso ?>">
                        </div>
                    </div>
                </div>            
            <div class="col-md-12">
                <input type="button" id="guardar" class="btn btn-success" value="Guardar">
            </div>
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
            url: "?c=solicitudes&a=GestionDocext",
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