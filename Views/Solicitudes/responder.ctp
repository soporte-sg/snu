<!-- CPU Usage -->
        <div class="row clearfix">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="card">
                    <div class="header">
                        <div class="row clearfix">
                            <div class="col-xs-12 col-sm-12">
                                <h2>RESPONDER SOLICITUD</h2>
                            </div>
                         </div>
                        
                    </div>
                    <div class="body">
                    <?php 
                    $codigo0=$ultimoDocumento[0]['codiAnt'];
                    $codigo1 = split('-',$codigo0);
                    @$suma= $codigo1[2]+1;
                    @$muestra=$codigo1[0].'-'.$codigo1[1].'-'.$suma;
                 
                    ?>


<?php foreach ($solicitudes as $key => $value):?>

<?php endforeach; ?>


                    <div class="row clearfix">
                            
                        <div class="row clearfix">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <div class="form-line">
                                       <?php echo $this->Form->input('id',  array('value'=>$value['Solicitude']['id'],'class' =>'form-control','label'=>'Numero de Solicitud','type'=>'text','readonly'));?>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <div class="form-line">
                                       <?php echo $this->Form->input('TipoSolicitud',  array('value'=>$value['Solicitude']['TipoSolicitud'],'class' =>'form-control','label'=>'Tipo Solicitud','type'=>'text','readonly'));?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <div class="form-line">
                                       <?php echo $this->Form->input('Proceso',  array('value'=>$value['Solicitude']['Proceso'],'class' =>'form-control','label'=>'Proceso que Solicita:','type'=>'text','readonly'));?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <div class="form-line">
                                       <?php echo $this->Form->input('TipoDocumento',  array('value'=>$value['Solicitude']['TipoDocumento'],'class' =>'form-control','label'=>'Tipo Cambio:','type'=>'text','readonly'));?>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <div class="form-line">
                                       <?php echo $this->Form->input('NombreSolicitante',  array('value'=>$value['Solicitude']['NombreSolicitante'],'class' =>'form-control','label'=>'Nombre Solicitante:','type'=>'text','readonly'));?>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <div class="form-line">
                                       <?php echo $this->Form->input('FechaSolicitud',  array('value'=>$value['Solicitude']['FechaSolicitud'],'class' =>'form-control','label'=>'Fecha de la solicitud:','type'=>'text','readonly'));?>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <div class="form-line">
                                       <?php echo $this->Form->input('Descripcion',  array('value'=>$value['Solicitude']['Descripcion'],'class' =>'form-control','label'=>'Justificación:','type'=>'textarea','readonly'));?>
                                    </div>
                                </div>
                            </div>

                            
                        </div>
                       </div>
                  </div>
                </div>
            </div>
        </div>
        <!-- #END# CPU Usage -->

        <div class="row clearfix">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="card">
                    <div class="header">
                        <div class="row clearfix">
                            <div class="col-xs-12 col-sm-12">
                                <h2>VALIDACIÓN DE CAMBIOS</h2>
                            </div>
                         </div>
                        
                    </div>
                    <div class="body">
                         <div class="row clearfix">
 <?php 
 echo $sol=$value['Solicitude']['TipoSolicitud'];
 echo  $TipoDocumento=$value['Solicitude']['TipoDocumento'];

//EXTERNOS START

 //------------
 if($sol=='creacion' && ($TipoDocumento=='externo') ): ?>
                            <?php echo $this->element('validarExterno',
                             array(
                                'proceso'=>$value['Solicitude']['Proceso'],
                                'id_sol'=>$value['Solicitude']['id'],
                                'muestra'=> $muestra,
                                'solicitudTipo'=> $sol,
                                    )
                             );

                             ?>
 <?php endif;
 
 
 if($sol=='actualizacion' && ($TipoDocumento=='externo') ): ?>
                            <?php echo $this->element('actExterno',
                             array(
                                'proceso'=>$value['Solicitude']['Proceso'],
                                'id_sol'=>$value['Solicitude']['id'],
                                'muestra'=> $muestra,
                                'solicitudTipo'=> $sol,
                                'externos' => $externos
                                    )
                             );

                             ?>
 <?php endif;
 
//EXTERNOS END

 ?> 
















































<?php

 //------------
 if($sol=='creacion' && ($TipoDocumento=='documento' or $TipoDocumento=='Documento' ) ): ?>
                            <?php echo $this->element('validarDocumentos',
                             array(
                                'proceso'=>$value['Solicitude']['Proceso'],
                                'id_sol'=>$value['Solicitude']['id'],
                                'muestra'=> $muestra,
                                'solicitudTipo'=> $sol,
                                    )
                             );

                             ?>
 <?php endif;    
//----------?>
 <?php  if($sol=='actualizacion'  && ($TipoDocumento=='documento' or $TipoDocumento=='Documento' )): ?>
                            <?php echo $this->element('validarDocumentosAct',
                             array(
                                'proceso'=>$value['Solicitude']['Proceso'],
                                'Documentos'=>$documentos,
                                'id_sol'=>$value['Solicitude']['id'],
                                 'muestra'=> $muestra,
                                 'solicitudTipo'=> $sol
                                    )
                             );

                             ?>
 <?php endif; ?>         
 <?php 
if($sol=='creacion' && ($TipoDocumento=='formato' or $TipoDocumento=='Registro' ) ): ?>
                            <?php echo $this->element('validarFormatos',
                             array(
                                'proceso'=>$value['Solicitude']['Proceso'],
                                'id_sol'=>$value['Solicitude']['id'],
                                'solicitudTipo'=> $sol
                                    )
                             );

                             ?>
 <?php endif;   ?>

<?php
if($sol=='actualizacion' && ($TipoDocumento=='formato' or $TipoDocumento=='Registro') ): ?>
                            <?php echo $this->element('validarformatosact',
                             array(
                                'proceso'=>$value['Solicitude']['Proceso'],
                                'id_sol'=>$value['Solicitude']['id'],
                                'formatos'=>$formatos,
                                'solicitudTipo'=> $sol
                                    )
                             );

                             ?>
                             
                             
 <?php endif;   ?>
 
 <?php
if($sol=='eliminacion'): ?>
                            <?php echo $this->element('eliminar',
                             array(
                                'proceso'=>$value['Solicitude']['Proceso'],
                                'id_sol'=>$value['Solicitude']['id'],
                                'formatos'=>$formatos,
                                'solicitudTipo'=> $sol,
                                'tipoDoc'=> $TipoDocumento
                                    )
                             );

                             ?>
                             
                             
 <?php endif;   ?>
                     </div>
                  </div>
                </div>
            </div>
        </div>
        <!-- #END# CPU Usage -->