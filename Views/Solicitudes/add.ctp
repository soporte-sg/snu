<?php echo $this->Form->create('Solicitude', array('type' => 'file'));  ?>
            <!-- Input -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                REGISTRAR SOLICITUD DE CAMBIO
                            </h2>
                            
                        </div>
                        <div class="body">
                            <h2 class="card-inside-title">Detalles de la Solictud</h2>
                            <div class="row clearfix">
                            	<div class="col-sm-3">
                                    <div class="form-group">
                                        <div class="form-line">
                                        	<label>Numero Solicitud</label>
                                        	<input type="text" name="id" value="<?php echo $consecutivo[0][0]['conse']+1 ?>"  class="form-control" readonly>
                                         </div>
                                    </div>
                                </div>
                                 <div class="col-sm-3">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <?php echo $this->Form->input('NombreSolicitante',  array('class' =>'form-control','label'=>'Solicitante','type'=>'text','value'=>$user,'required'));?>
                                           
                                        </div>
                                    </div>
                                </div>

                                 <div class="col-sm-3">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <label>Fecha Solicitud</label>
                                            <?php  $fecha=date('Y-m-d'); ?>
                                            <input type="date" name="data[Solicitude][FechaSolicitud]"  class='form-control'value="<?php echo $fecha ?>" readonly>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                       <div class="form-line">
                                       <label>Proceso Solicitante</label>     
                                    <select class="form-control show-tick" id="select_proceso" name="data[Solicitude][Proceso]" required>
                                        <option value="<?php echo $proceso ?>"><?php echo $proceso?></option>
                                        
                                    </select>
                               
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-3">
                                    <div class="form-group">
                                       <div class="form-line">
                                       <label>Tipo Solicitud</label>     
                                    <select class="form-control show-tick" name="data[Solicitude][TipoSolicitud]" required>
                                        <option value="<?php echo $solicitud ?>"><?php echo ucfirst($solicitud)  ?></option>
                                        
                                    </select>
                               
                                        </div>
                                    </div>
                                </div>


                                <div class="col-sm-3">
                                    <div class="form-group">
                                       <div class="form-line">
                                       <label>Tipo Información</label>     
                                    <select  name="data[Solicitude][TipoDocumento]" class="form-control show-tick" id="info"  required>
                                        <option value="<?php echo $informacion ?>"><?php echo ucfirst($informacion) ?></option>
                                        
                                    </select>
                               
                                        </div>
                                    </div>

                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <div class="form-line" id="info2">
<!------------------------------------------------------>
                                      <?php 
                                        if($solicitud=='creacion'):
                                            echo $this->Form->input('Codigo',  array('class' =>'form-control', 'id'=>'cod','label'=>'Descripción','type'=>'text', 'value'=>'Código Automático','readonly'));
                                            endif;
                                        ?>
<!------------------------------------------------------>
                                        <?php if(($solicitud =='actualizacion' or $solicitud =='eliminacion') && $informacion =='documento'):?>
                                                <label>Descripcion</label>
                                        <select  name="data[Solicitude][Codigo]" class="form-control show-tick" id="info"  required>

                                         <?php foreach($Documentos as $Documento):?>
                                          <option value="<?php echo $Documento['Documento'] ['CodDocumento'] ?>">  <?php echo $Documento['Documento']['CodDocumento']." - ".$Documento['Documento']['NomDocumento']?>  </option>
                                           <?php endforeach; ?>
                                        </select>

                                        <?php endif; ?>
<!------------------------------------------------------>
                                        <?php if(($solicitud =='actualizacion' or $solicitud =='eliminacion') && $informacion =='formato'):?>
                                                <label>Descripción</label>
                                        <select  name="data[Solicitude][Codigo]" class="form-control show-tick" id="info"  required>

                                         <?php foreach($Formatos as $Formato):?>
                                          <option value="<?php echo $Formato['Formato'] ['CodFormato'] ?>">  <?php echo $Formato['Formato']['CodFormato']." - ".$Formato['Formato']['NomFormato']?>  </option>
                                           <?php endforeach; ?>
                                        </select>

                                        <?php endif; ?>
<!--------------------------------------------------->
                                        <?php if(($solicitud =='actualizacion' or $solicitud =='eliminacion') && $informacion =='externo'):?>
                                                <label>Descripción</label>
                                        <select  name="data[Solicitude][Codigo]" class="form-control show-tick" id="info"  required>

                                         <?php foreach($Externos as $Externo):?>
                                          <option value="<?php echo $Externo['Sgcexterno'] ['codigo'] ?>">  <?php echo $Externo['Sgcexterno']['codigo']." - ".$Externo['Sgcexterno']['nombre']?>  </option>
                                           <?php endforeach; ?>
                                        </select>

                                        <?php endif; ?>                            
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <label>Adjuntar Archivo</label>
                                                    <?php echo $this-> Form-> input ('filename', array ("class" => "form-control", "type" => "file", 'label' => false) ); ?>
                                                    <?php echo $this-> Form-> input ('Aprobado', array ("class" => "form-control", "type" => "hidden", 'value' =>' ') ); ?>
                                                    <?php echo $this-> Form-> input ('dir', array ("type" => "hidden")); ?>
                                            
                                                   <!--<input name="data[Solicitude][filename]" type="file" class="form-control">
                                                   <input name="dir" type="hidden" class="form-control">-->
                                               </div>
                                    </div>
                                </div>
                                

                            </div>
                            <div class="row clearfix">
                                
                                <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                           <?php echo $this->Form->input('Descripcion',  array('class' =>'form-control','label'=>'Justificación','type'=>'textarea','required','placeholder'=>'Digite la justificación del cambio'));?>
                                        </div>
                                    </div>
                                </div>
                                

                                
                            </div>
                            <?php echo $this->Form->end(__('Guardar', array('class' =>'btn btn-success'))) ?>
                        </div>
                    </div>
                </div>
            </div>
          </div>  
            <!-- #END# Input -->

