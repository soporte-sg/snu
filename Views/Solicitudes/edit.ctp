<?php echo $this->Form->create('Solicitude'); ?>
<div class="row clearfix">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<div class="card">
			<div class="header">
				<div class="row clearfix">
					<div class="col-xs-12 col-sm-12">
						<h2>ACTUALIZAR SOLICITUD</h2>
					</div>
				</div>

			</div>
			<div class="body">
				<div class="row clearfix">
				<?php  echo $this->Form->input('id');?>
                       <div class="col-sm-3">
                                
                                  
		
			                     <?php echo $this->Form->input('NombreSolicitante', array('class'=>'form-control')); ?>
			                              
                        </div>
                        <div class="col-sm-3">
                                <label>Fecha Solicitud</label>
                                 <input type="date" name="data[Solicitude][FechaSolicitud]" class="form-control" value="<?php echo $this->request->data['Solicitude']['FechaSolicitud']; ?>">
		
			                    
			                              
                        </div>
                        <div class="col-sm-3">
                                  
		
			                     <?php echo $this->Form->input('Proceso', array('class'=>'form-control')); ?>
			                              
                        </div>
                        <div class="col-sm-3">
                                
                                  
		
			                     <?php echo $this->Form->input('Codigo', array('class'=>'form-control')); ?>
			                              
                        </div>
                        <div class="col-sm-3">
                                
                                 
		
			                     <?php echo $this->Form->input('VersionCambiar', array('class'=>'form-control')); ?>
			                              
                        </div>
                        <div class="col-sm-3">
                                
                                  
		
			                     <?php echo $this->Form->input('TipoDocumento', array('class'=>'form-control')); ?>
			                              
                        </div>
                        
                        
                        <div class="col-sm-3">
                                <label>Ejecución Cambio</label>
                                   <input type="date" name="data[Solicitude][EjecucionCambio]" class="form-control" value="<?php echo $this->request->data['Solicitude']['EjecucionCambio']; ?>">
		
		
			                     		                              
                        </div>
                        <div class="col-sm-3">
                                
                                  <label>Estado de la Solicitud</label>

                                    <select name="data[Solicitude][Aprobado]" class="form-control"  value=">

                                        <option value="<?php echo $this->request->data['Solicitude']['Aprobado']; ?>">Seleccionar :)</option>
                                        <option value="si">Aprobado</option>
                                        <option value="no">No Aprobado</option>
                                        <option value="revision">En revisión</option>
                                    </select>
		
			                    
			                              
                        </div>
                        <div class="col-sm-6">
                                
                                  
		
			                     <?php echo $this->Form->input('Descripcion', array('class'=>'form-control')); ?>
			                              
                        </div>
                        <div class="col-sm-6">
                                
                                  
		                          <?php  echo $this->Form->input('Observaciones', array('class'=>'form-control'));?>
                        </div>

                </div>
                <?php echo $this->Form->end(__('ACTUALIZAR')); ?>
			</div>
		</div>
	</div>
</div>
















