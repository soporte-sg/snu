<div class="row clearfix">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">
                <h2>Registrar</h2>
            </div>
            <div class="body">
                <form id="frm-nivel" name="frm-nivel" action="" method="post">
                    <input type="hidden" name="id" value="<?php echo $alm->id; ?>" />
                    <div class="row clearfix">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Nivel Academico</label>
                                    <select name="nivel" class="form-control" required>
                                        <?php if (!empty($alm->nivel)) : ?>
                                            <option value="<?php echo $alm->nivel; ?>"> <?php echo $alm->nivel; ?></option>
                                        <?php else : ?>
                                            <option value="">Seleccionar</option>
                                        <?php endif; ?>
                                        <option value="Basica primaria">Básica primaria</option>
                                        <option value="Secundaria">Secundaria</option>
                                        <option value="Media">Media</option>
                                        <option value="Tecnica">Tecnica</option>
                                        <option value="Tecnologica">Tecnologica</option>
                                        <option value="Profesional">Profesional</option>
                                    </select>

                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Estado</label>
                                    <select name="estudio" class="form-control" required>
                                        <?php if (!empty($alm->estudio)) : ?>
                                            <option value="<?php echo $alm->estudio; ?>"> <?php echo $alm->estudio; ?>
                                            </option>
                                        <?php else : ?>
                                            <option value="">Seleccionar</option>
                                        <?php endif; ?>
                                        <option value="Terminado">Terminado</option>
                                        <option value="Aplazado">Aplazado</option>
                                        <option value="Suspendido">Suspendido</option>
                                        <option value="Activo">Activo</option>
                                    </select>
                                    <!-- <input  name="estudio" value="<?php echo $alm->estudio; ?>"  type="text" class="form-control" placeholder="" />-->
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Institución Educativa</label>
                                    <input name="curso_vigilancia" value="<?php echo $alm->curso_vigilancia; ?>" type="text" class="form-control" placeholder="" required />
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Lugar Realización</label>
                                    <input name="lugar" value="<?php echo $alm->lugar; ?>" type="text" class="form-control" placeholder="" required />
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Fecha realización</label>
                                    <input name="fecha" value="<?php echo $alm->fecha; ?>" type="date" class="form-control" placeholder="" required />
                                </div>
                            </div>
                        </div>
                        <input name="usuario_id" value="<?php echo $alm->usuario_id != null ? $alm->usuario_id : $_REQUEST['user_id']; ?>" type="hidden" class="form-control" placeholder="" />
                        <div class="col-md-12">
                            <input type="button" id="botonenviar" class="btn btn-primary btn-block" value="Registrar" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- #END# Textarea -->
<script>
    $(document).ready(function() {
        $("#frm-nivel").submit(function() {
            return $(this).validate();
        });
    
         $('#botonenviar').click(function(){
                 var datos=$('#frm-nivel').serialize();
               $.ajax({
                  type:"POST",
                  url:"?c=Nivelacademico&a=Guardar",
                  data:datos,
                  success:function(r){
                     if(r==1){
                        Swal.fire({
                    icon: 'error',
                    title: 'El registro no se realizo, trata de nuevo',
                    timer: 1500
                }, ),
                setTimeout(function() {                  
                     window.location.reload(1);
                }, 1500)
                     }else{
                        Swal.fire({
                    icon: 'success',
                    title: 'BIEN HECHO!!',
                    timer: 1500
                }, ),
                setTimeout(function() {                   
                      window.location.reload(1);
                }, 1500)
                     }
                  }
               });            
         });
      });
    
</script>