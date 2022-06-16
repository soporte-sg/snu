 <?php
    echo $this->Form->create('', array(
        'url' => array('controller' => 'solicitudes', 'action' => 'add'), 'type' => 'post',));
    ?>
 <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
 <div class="card">
                        <div class="header">
                            <h2>
                                Datos de la Solicitud
                                <small>Solicitud Para el control de cambios</small>
                            </h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else here</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="row clearfix">
                                <div class="col-md-12">
                                        <div class="col-sm-4">
                                            <label>Proceso Solicitante</label>
                                    <select class="form-control show-tick" name="proceso" required>
                                        <option value="">-- Seleccionar --</option>

                                        <?php  foreach($sgcs as $sgc):?>
                                        <option value="<?php  echo $sgc['Proceso']['Iniciales']?>"><?php  echo $sgc['Proceso']['Iniciales']?></option>
                                        <?php  endforeach;?>
                                    </select>
                                </div>
                                <div class="col-sm-4">
                                    <label>Tipo Solicitud</label>
                                    <select class="form-control show-tick" name="solicitud" required>
                                        <option value="">-- Seleccionar --</option>
                                        <option value="creacion">Creación</option>
                                        <option value="actualizacion">Actualización</option>
                                        <option value="eliminacion">Eliminación</option>
                                    </select>
                                </div>
                                <div class="col-sm-4">
                                    <label>Tipo de  Información</label>
                                   
                                    <select class="form-control show-tick" name="informacion" required>
                                        <option value="">-- Seleccionar --</option>
                                        <option value="documento">Documento</option>
                                        <option value="formato">Formato</option>
                                        <option value="software">Software</option>
                                        <option value="externo">Externo</option>
                                       
                                    </select>
                                </div>



                                </div>
                            </div>

                        <?php
                $options = array(
                    'label' => 'Continuar',
                    'class' => 'btn btn-success',
                    'div' => false
                );
                echo $this->Form->end($options);
                ?>
                            </div>
                        </div>


 </div>
 </div>
<br>
<br><br><br><br><br><br><br><br><br><br><br>
 </div>

         