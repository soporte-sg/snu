<!-- CPU Usage -->
            <div class="row clearfix">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="card">
                        <div class="header">
                            <div class="row clearfix">
                                <div class="col-xs-12 col-sm-12">
                                    <h2>LISTADO DE SOLICITUDES PARA EL CONTROL DE CAMBIOS</h2>
                                </div>
                                
                            </div>
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
                           <div class="sgcDocumentos index">
	
	<div class="table-responsive">
    <table  class="table table-bordered table-striped table-hover dataTable js-exportable">
	<thead>
	<tr>
			
			<th><?php echo $this->Paginator->sort('id','No'); ?></th>
			<th><?php echo $this->Paginator->sort('TipoDocumento',' Tipo Documento'); ?></th>
			<th><?php echo $this->Paginator->sort('NombreSolicitante', 'Solicitante'); ?></th>
			<th><?php echo $this->Paginator->sort('FechaSolicitud','Fecha Solicitud'); ?></th>
			<th><?php echo $this->Paginator->sort('Proceso'); ?></th>
			<th><?php echo $this->Paginator->sort('TipoSolicitud','Tipo Solicitud'); ?></th>
			<th><?php echo $this->Paginator->sort('Codigo'); ?></th>
			<th><?php echo $this->Paginator->sort('Aprobado','Estado'); ?></th>
			<!--
			<th><?php echo $this->Paginator->sort('VersionCambiar'); ?></th>
			<th><?php echo $this->Paginator->sort('TipoDocumento'); ?></th>
			<th><?php echo $this->Paginator->sort('Descripcion'); ?></th>
			<th><?php echo $this->Paginator->sort('EjecucionCambio'); ?></th>
			<th><?php echo $this->Paginator->sort('Aprobado'); ?></th>
			<th><?php echo $this->Paginator->sort('Observaciones'); ?></th>-->
			<th class="actions"><?php echo __('Menu'); ?></th>
	</tr>
	<tbody>
	</thead>
	<?php foreach ($solicitudes as $sgcManejoDocumental): ?>
	<tr>
		<td><?php echo h($sgcManejoDocumental['Solicitude']['id']); ?>&nbsp;</td>
		
		<td> <a href="<?php echo '../'.$sgcManejoDocumental['Solicitude']['dir']."/".$sgcManejoDocumental['Solicitude']['filename']?>" target="_blank"><?php echo ucwords($sgcManejoDocumental['Solicitude']['TipoDocumento']); ?></a>&nbsp;</td>
	
	
		<td><?php echo h($sgcManejoDocumental['Solicitude']['NombreSolicitante']); ?>&nbsp;</td>
		<td><?php echo h($sgcManejoDocumental['Solicitude']['FechaSolicitud']); ?>&nbsp;</td>
		<td><?php echo h($sgcManejoDocumental['Solicitude']['Proceso']); ?>&nbsp;</td>
		<td><?php echo ucwords($sgcManejoDocumental['Solicitude']['TipoSolicitud']); ?>&nbsp;</td>
		<td><?php echo h($sgcManejoDocumental['Solicitude']['Codigo']); ?>&nbsp;</td>
		<td><?php 
		if($sgcManejoDocumental['Solicitude']['Aprobado']=='si'){
		
		echo '<i class="material-icons" title="solicitud aprobada">verified_user</i>';
		
		}
		if($sgcManejoDocumental['Solicitude']['Aprobado']=='no'){
		
		echo '<i  class="material-icons" title=" solicitud Rechazado">highlight_off</i>';
		
		}
		
		if(empty($sgcManejoDocumental['Solicitude']['Aprobado'])){
		
		echo '<i class="material-icons" title=" solicitud en espera de respuesta">feedback</i>';
		
		}
		
		?>
		</td>
	
	
		<td class="actions">
		    
            <?php 
            if($sgcManejoDocumental['Solicitude']['Aprobado'] == 'si'):?>
             <a href="<?php echo APP_WWW . 'solicitudes/ver/'.$sgcManejoDocumental['Solicitude']['id'] ?>" type="button" title="Ver datos de la Solicitud">
                <i class="material-icons">visibility</i>
              </a>
              <?php if($rol_usuario==4 or $rol_usuario==1): ?>
              <a href="<?php echo APP_WWW . 'solicitudes/edit/'.$sgcManejoDocumental['Solicitude']['id'] ?>" type="button" title="Actualizar datos de la Solicitud">
                <i class="material-icons">system_update</i>
              </a>
              <?php  endif;?>
              
           <?php  else:?>
           <?php if($rol_usuario==4 or $rol_usuario==1 ): ?>
             <a href="<?php echo APP_WWW . 'solicitudes/responder/'.$sgcManejoDocumental['Solicitude']['id'] ?>" type="button" title="Responder Solicitud">
                <i class="material-icons " style=outline>library_add</i>
              </a>
              
              
              <?php  endif;?>
              
              
              
              <a href="<?php echo APP_WWW . 'solicitudes/ver/'.$sgcManejoDocumental['Solicitude']['id'] ?>" type="button" title="Ver datos de la Solicitud">
                <i class="material-icons">visibility</i>
              </a>
              <?php if($rol_usuario==4 or $rol_usuario==1): ?>
              <a href="<?php echo APP_WWW . 'solicitudes/edit/'.$sgcManejoDocumental['Solicitude']['id'] ?>" type="button" title="Actualizar datos de la Solicitud">
                <i class="material-icons">system_update</i>
              </a>
            <?php  endif;?>
            
                
                
         <?php endif;?>
         </td>
	</tr>
<?php endforeach; ?>
	</tbody>
	</table>
	</div>
</div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# CPU Usage -->

