<div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
 <div class="card">
 <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title"> <i class="glyphicon glyphicon-info-sign" onclick="showModal(this)" data-titulo='Informacion' data-src='/infos/cursos/' data-width='95'></i> &nbsp; Consultar Indicador </h3>
        </div>
        <?php
        echo $this->Form->create('', array(
            'url' => array('controller' => 'indicadors'),
            'type' => 'get'));
        ?>
        <input type="hidden" name="method" value="PUT">
        <div class="panel-body">
            <div class="row">
                <div class="col-md-4">
                    <?php echo $this->Form->input("proceso_id", array('empty'=>'Seleccionar',   'class' => 'form-control', 'label' => 'Proceso', 'required' => false)); ?>
                </div>
                
                <div class="col-md-4">
                    <div class="input date">
                       <?php echo $this->Form->input("cargo_id", array('empty'=>'Seleccionar', 'class' => 'form-control', 'label' => 'Cargo', 'required' => false)); ?>
                    </div> 
                </div>
                
                <div class="col-md-4">
                    <div class="input date">
                        <label for="CursoFicha">Periodicidad</label>
                         <?php echo $this->Form->input("periodicidad", array(
                         'options'=>array('mensual'=>'Mensual','trimestral'=>'Trimestral','semestral'=>'Semestral','anual'=>'Anual'),
                         'empty'=>'Seleccionar',
                         'class' => 'form-control', 'label' => '', 'required' => false)); ?>
                        
                    </div> 
                </div>
                
            </div>
        </div>
        
        <?php
        $options = array(
            'label' => 'Consultar',
            'class' => 'btn btn-primary',
            'div' => false
        );
        echo $this->Form->end($options);
        ?>
        <br><br><br><br><br><br>
    </div>
</div>
 </div>
</div>
<?php


if ($vista == 1) { ?>
     
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">Listado de Indicadores</h3>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table cellpadding="0" cellspacing="0" class="table table-bordered table-hover">
                        <tr class="active">
                            <th><?php echo $this->Paginator->sort('nombre'); ?></th>
                            <th><?php echo $this->Paginator->sort('responsable'); ?></th>
                            <th><?php echo $this->Paginator->sort('periodicidad'); ?></th>
                            <th><?php echo $this->Paginator->sort('fecha_control','Fecha Control'); ?></th>
                            <th><?php echo $this->Paginator->sort('Registros'); ?></th>
                            <th class="actions"><?php echo __('Opciones'); ?></th>
                        </tr>
                        <?php 
                         //debug($indicadors);
                        $data=0;
                        foreach ($indicadors as $indicador): ?>
                            <tr>
                                <td><?php echo h($indicador['Indicador']['nombre']); ?>&nbsp;</td>
                                <td><?php echo h($indicador['Proceso']['NombreProceso'] . " - " . $indicador['Cargo']['cargo']); ?>&nbsp;</td>
                                <td><?php echo h($indicador['Indicador']['periodicidad']); ?>&nbsp;</td>
                                <td><?php echo h($indicador['Indicador']['fecha_control']); ?>&nbsp;</td>
                                <td><?php
                                       $acumulador = 0;
                                foreach($indicador['Dato'] as $datos):
                                  if($indicador['Indicador']['id'] == $datos['indicador_id']):
                                    $acumulador ++;   
                                  endif;
                                endforeach;
                                  echo $acumulador;
                                  ?>&nbsp;</td>
                               
                                <td class="actions">
                                    <a href="<?php echo APP_WWW . 'indicadors/datos/'.$indicador['Indicador']['id'] ?>"><i title="Registrar Datos" class="glyphicon glyphicon-plus"></i></a>
                                    <a href="<?php echo APP_WWW . 'indicadors/ver/'.$indicador['Indicador']['id'] ?>"><i title="Ver Datos" class="glyphicon glyphicon-search"></i></a>
                                    <a href="<?php echo APP_WWW . 'indicadors/acciones/'.$indicador['Indicador']['id'] ?>"><i title="Plan de Accion" class="glyphicon glyphicon-paperclip"></i></a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </table>
                    <p>
                        <?php
                        echo $this->Paginator->counter(array(
                            'format' => __('Pagina {:page} of {:pages}, Visualizando {:current} registros de {:count}, Iniciando en {:start}, Terminando en {:end}')
                        ));
                        ?>
                    </p>
                    <div class="paging">
                        <?php
                        echo "&nbsp;" . $this->Paginator->first("Primero");
                        echo $this->Paginator->prev('< ' . __('Anterior'), array(), null, array('class' => 'prev disabled '));
                        echo $this->Paginator->numbers(array('separator' => ''));
                        echo $this->Paginator->next(__('Siguiente') . ' >', array(), null, array('class' => 'next disabled'));
                        echo "&nbsp;" . $this->Paginator->last("Ultimo");
                        ?>
                        <br/><br/>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php } ?>