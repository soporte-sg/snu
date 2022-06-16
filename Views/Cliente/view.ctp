<div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>DATOS DEL USUARIO</h2>
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
                       <div class="row">

                        <div class="col-md-12 text-center">

<table class="table table-bordered">
	<tr class="text-center">
		
		<th class="text-center"><?php echo __('Nombres'); ?></th>
		<th class="text-center"><?php echo __('Apellidos'); ?></th>
		<th class="text-center"><?php echo __('Identificacion'); ?></th>
		<th class="text-center"><?php echo __('Cargo'); ?></th>
		<th class="text-center"><?php echo __('Usuario'); ?></th>
		

   </tr>


<tr>

		<td>
			<?php echo h($usuario['User']['nombres']); ?>
			&nbsp;
		</td>
		
		<td>
			<?php echo h($usuario['User']['apellidos']); ?>
			&nbsp;
		</td>
		
		<td>
			<?php echo h($usuario['User']['identificacion']); ?>
			&nbsp;
		</td>
		
		<td>
			<?php echo h($usuario['Role']['rol']); ?>
			&nbsp;
		</td>
		
		<td>
			<?php echo h($usuario['User']['username']); ?>
			&nbsp;
		</td>
		
		
		
	</tr>
</table>
</div>
 </div>
                                </div>
                                
                              </div> 

                            
                         </div>
                            
                        </div>
                    </div>