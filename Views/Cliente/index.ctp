<!--<div id="text-left">  
        <?php
        //$AdminControl = 'Super Administrador';
        if ($datos_usuario['role_id'] == '4') {
            ?>
            <a href="<?php echo APP_WWW . "colegios/administracion"; ?>" class="btn btn-primary waves-effect">
                <i class="glyphicon glyphicon-cog"></i> Administrar Clientes 
            </a> 
            <a href="<?php echo APP_WWW . "squemas/add"; ?>" class="btn btn-primary waves-effect">
                <i class="glyphicon glyphicon-folder-close"></i> Registrar Squemas de BD
            </a> 
            <a href="<?php echo APP_WWW . "users/indexadmin"; ?>" class="btn btn-primary waves-effect">
                <i class="glyphicon glyphicon-user"></i> Administrar Usuarios 
            </a> 
            <?php
        }
        ?>   
</div>-->
    
            <div class="row">
                <?php foreach ($colegios as $colegio): ?>

                    <div class="col-md-4 hidden-xs">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                
                                    <div class="col-md-4">
                                        <?php echo $this->Html->image('uploads/colegio/filename/' . $colegio['Colegio']['filename'], array('fullBase' => true ,'alt' => $colegio['Colegio']['nombre'], 'width' => '100', 'height' => '90')) ?>
                                    </div>
                                    <div class="col-md-8 text-center">
                                        <h4><font face="roboto" color="#37474F"> <strong><?php echo strtoupper($colegio['Colegio']['nombre']); ?></strong></font></h4>
                                       <!-- <label>Dirección:</label> <?php echo h($colegio['Colegio']['direccion']); ?><br>
                                        <label>Télefono:</label> <?php echo h($colegio['Colegio']['telefono']); ?>
                                        <br> -->
                                        <a href="<?php echo APP_WWW . 'colegios/verificacion/' . $colegio['Colegio']['id']; ?>" class="btn btn-primary">ENTRAR</a>
                                    </div>
                                
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-12 visible-xs">
                        <div class="cuadro-xs">
                            <?php echo $this->Html->image('uploads/colegio/filename/' . $colegio['Colegio']['filename'], array('alt' => $colegio['Colegio']['nombre'], 'class' => 'img-responsive')); ?>
                            <p class="texto-xs text-center">
                                <a href="<?php echo APP_WWW . 'colegios/verificacion/' . $colegio['Colegio']['id']; ?>" class="btn btn-primary">ENTRAR</a>
                            </p>			
                        </div>
                    </div>
                    
                <?php endforeach; ?> 
            
            <div class="col-md-12">
                <ul class="pagination">
                    <li> <?php echo $this->Paginator->prev('< ' . __('anterior'), array('tag' => FALSE), null, array('class' => 'prev disabled')); ?></li>
                    <li> <?php echo $this->Paginator->numbers(array('separator' => '', 'tag' => 'li', 'currentTag' => 'a', 'currentClass' => 'active')); ?></li>
                    <li> <?php echo $this->Paginator->next(__('siguiente') . ' >', array('tag' => FALSE), null, array('class' => 'next disabled')); ?></li>
                </ul>
            </div>
        </div>
    </div>

<script>
    $(document).ready(function () {
        $('[data-toggle="popover"]').popover();
    });
</script>





