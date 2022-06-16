<!-- CPU Usage -->
            <div class="row clearfix">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="card">
                        <div class="header">
                            <div class="row clearfix">
                                <div class="col-xs-12 col-sm-12">
                                    <h2>LISTADO DE CLIENTES</h2>
                                </div>
                                
                            </div>
                            <ul class="header-dropdown m-r--5">
                            </ul>
                        </div>
                        <div class="body">
                           <div class="sgcDocumentos index">

            <div id="atras">
                <p class="text-left">
                        <a href="<?php echo APP_WWW . "colegios/addadmin"; ?>" class="btn btn-success btn-xs">
                            <i class="glyphicon glyphicon-pencil"></i> Registrar
                        </a> 
                </p>
            </div>
    
            <div class="table-responsive">
                <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                   <thead> 
                    <tr>
                        <th><?php echo $this->Paginator->sort('nombre', 'Razón Social'); ?></th>
                        <th><?php echo $this->Paginator->sort('direccion', 'Dirección'); ?></th>
                        <th><?php echo $this->Paginator->sort('telefono'); ?></th>
                        <th><?php echo $this->Paginator->sort('rector','Cliente'); ?></th>
                        <th><?php echo $this->Paginator->sort('Editar'); ?></th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($colegios as $colegio): ?>
                        <tr>
                            <td><?php echo h($colegio['Colegio']['nombre']); ?>&nbsp;</td>
                            <td><?php echo h($colegio['Colegio']['direccion']); ?>&nbsp;</td>
                            <td><?php echo h($colegio['Colegio']['telefono']); ?>&nbsp;</td>
                            <td><?php echo h($colegio['Colegio']['rector']); ?>&nbsp;</td>
                            <td class="actions ">                            
                                <a href="<?php echo APP_WWW . 'colegios/editadmin/' . $colegio['Colegio']['id']; ?>"  class="btnNew btn-blue btn-circle"><i class="glyphicon glyphicon-edit"></i></a>
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
