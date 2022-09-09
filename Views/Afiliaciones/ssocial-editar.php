<div class="row clearfix">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">
                <h2>REGISTRAR</h2>
                <ul class="header-dropdown m-r--5">
                    <li class="dropdown">
                    </li>
                </ul>
            </div>
            <div class="body">
                <form id="frmAfiliacion" name="frmAfiliacion" action="" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="id" value="<?php echo $alm->id; ?>" />
                    <?php if (isset($_REQUEST['id'])) {
                        $id = $_REQUEST['id'];
                    } else {
                        $id = $alm->usuario_id;
                    };
                    ?>
                    <input type="hidden" name="usuario_id" value="<?php echo $id; ?>" />
                    <div class="row clearfix">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Eps</label>
                                    <select name='eps' class='form-control' required>
                                        <?php if (isset($alm->eps)) : ?>
                                            <option value="<?php echo $alm->eps; ?>"><?php echo $alm->eps; ?> </option>
                                            <?php foreach ($epss as $esp) : ?>
                                                <option value="<?php echo $esp->nombre; ?>"><?php echo $esp->nombre; ?></option>
                                            <?php endforeach; ?>
                                        <?php else : ?>
                                            <option value="">Seleccionar</option>
                                            <?php foreach ($epss as $esp) : ?>
                                                <option value="<?php echo $esp->nombre; ?>"><?php echo $esp->nombre; ?></option>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Arl</label>
                                    <select name='arl' class='form-control' required>
                                        <?php if (isset($alm->arl)) : ?>
                                            <option value="<?php echo $alm->arl; ?>"><?php echo $alm->arl; ?> </option>
                                            <?php foreach ($arls as $esp) : ?>
                                                <option value="<?php echo $esp->nombre; ?>"><?php echo $esp->nombre; ?></option>
                                            <?php endforeach; ?>
                                        <?php else : ?>
                                            <option value="">Seleccionar</option>
                                            <?php foreach ($arls as $esp) : ?>
                                                <option value="<?php echo $esp->nombre; ?>"><?php echo $esp->nombre; ?></option>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Fondo Pensiones</label>
                                    <select name='fondo' class='form-control' required>
                                        <?php if (isset($alm->fondo)) : ?>
                                            <option value="<?php echo $alm->fondo; ?>"><?php echo $alm->fondo; ?> </option>
                                            <?php foreach ($afps as $esp) : ?>
                                                <option value="<?php echo $esp->nombre; ?>"><?php echo $esp->nombre; ?></option>
                                            <?php endforeach; ?>
                                        <?php else : ?>
                                            <option value="">Seleccionar</option>
                                            <?php foreach ($afps as $esp) : ?>
                                                <option value="<?php echo $esp->nombre; ?>"><?php echo $esp->nombre; ?></option>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Caja Compesación</label>
                                    <?php $esp = $this->model->Eps('CCF'); ?>
                                    <select name='caja' class='form-control' required>
                                        <?php if (isset($alm->caja)) : ?>
                                            <option value="<?php echo $alm->caja; ?>"><?php echo $alm->caja; ?> </option>
                                            <?php foreach ($cajas as $esp) : ?>
                                                <option value="<?php echo $esp->nombre; ?>"><?php echo $esp->nombre; ?></option>
                                            <?php endforeach; ?>
                                        <?php else : ?>
                                            <option value="">Seleccionar</option>
                                            <?php foreach ($cajas as $esp) : ?>
                                                <option value="<?php echo $esp->nombre; ?>"><?php echo $esp->nombre; ?></option>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Fecha de Afiliación</label>
                                    <input type="date" name="afiliacion_fecha" value="<?php echo $alm->afiliacion_fecha; ?>" class="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <input type="button" id="botonenviar" class="neu btn-block" value="Registrar" />
                           
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- #END# Textarea -->

<script>
    $(document).ready(function(){
         $('#botonenviar').click(function(){
                 var datos=$('#frmAfiliacion').serialize();
               $.ajax({
                  type:"POST",
                  url:"?c=afiliaciones&a=add",
                  data:datos,
                  success:function(r){
                     if(r==1){
                        alert("Fallo al agregar");
                     }else{
                        Swal.fire({
                    icon: 'success',
                    title: 'BIEN HECHO!!',
                    timer: 1500
                }, ),
                setTimeout(function() {
                   // window.location = '?c=usuarios&a=index2';
                     window.location.reload(1);
                }, 1500)
                     }
                  }
               });            
         });
      });
    
</script>