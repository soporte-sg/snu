<script>
    function loadDynamicContentModal(modal){
    var options = {
            modal: true,
            height:300,
            width:600
        };
// Realiza la consulta al fichero php para obtener información de la BD.
    $('#conte-modal').load('?c=Novedades&a=ObtenerDatos&my_modal='+modal, function() {
        $('#bootstrap-modal').modal({show:true});
    });    
}
</script>
<script>
   function upDate(modal){
    var options = {
            modal: true,
            height:300,
            width:600
        };
// Realiza la consulta al fichero php para obtener información de la BD.
    $('#update-modal').load('?c=Novedades&a=actualizar&id='+modal, function() {
        $('#bootstrap-modal1').modal({show:true});
    });    
}
</script>
<script>
    
    function Delete(modal){
    var options = {
            modal: true,
            height:300,
            width:600
        };
// Realiza la consulta al fichero php para obtener información de la BD.
    $('#delete-modal').load('?c=Novedades&a=delete&id='+modal, function() {
        $('#deleteProductModal').modal({show:true});
    });    
}
</script>
</section>
        <div class="container-fluid">
            <!-- Basic Card -->
            <div class="row clearfix">
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 col-md-offset-4">
                    <div class="card">
                        <div class="header">
                            <h2>
                                BUSCAR USUARIO <small>Ingresa el número de identificación del usuarios requerido para el registro de la novedad</small>
                            </h2>
                        </div>
                        <div class="body">
                            <form method="POST" action="?c=Novedades&a=Buscar"> 
                                 
                                     <label>Identificación</label>
                                     <input name="doc" type="number" class="form-control">
                                     <br>
                                           <button type="submit" class="btn btn-success">BUSCAR</button>
                            </form>
                            
                        </div>
                    </div>
                </div>

                
                
            <!-- #END# Basic Card -->
            
        </div>
    </section>
<?php  if(isset($_POST['doc']) or isset($_REQUEST['doc'])):
       $cc= $_REQUEST['doc'];  
       $_SESSION['cc']=$cc;
       $rol =$datos[0]['rol_id'];
       $id=$datos[0]['id'];
       if(empty($listar=$this->model->Buscar($cc))){
                    
                    echo"<div class='col-lg-8 col-md-8 col-sm-8 col-xs-8 col-md-offset-2 alert alert-warning text-center' role='alert' '>
                                  El número identificación consultado no se encuentra registrado
                         </div> ";
                    
                }else{
               
?>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>Registro histórico del trabajador</h2>
              <ul class="header"> 
              
              <?php
                 /*           echo '<pre>';
             print_r($_SESSION['menu']);
              echo '</pre>';*/
foreach($_SESSION['menu'] as $menu){
    

if($menu->modulo=='Novedades' && $menu->escritura=='si' ){?>
   
                               <ul class="header-dropdown m-r--5">
                                <a  href="?c=Novedades&a=Registro&id=<?php echo $_POST['doc']?>" class="btn btn-success">Registrar Novedad</a>
                            </ul>
<?php    
}
}
?>
              
                             
                            
                        </div>
         <div class="body">
             <p id="demo"></p>
             
             <table class="table table-bordered text-center">
                 <th><?php   
            foreach( $listar as $r): 
                $nombre_fichero = '../usuarios/archivos/'.$r->cedula.'/foto.jpg';
                $nombre_fichero2 = '../usuarios/archivos/'.$r->cedula.'foto.jpg';
                $nombre_fichero3 = '../usuarios/archivos/'.$r->cedula.'/foto.jpg.jpg';

                if(file_exists($nombre_fichero3)){
                         echo "<img src='$nombre_fichero3' width='50' height='60' class='text-center'>";
                }else{
                  
                        if(file_exists($nombre_fichero2)) {
                            echo "<img src='$nombre_fichero2' width='50' height='60' class='text-center'>";
                        } 
                        
                        else{
                            echo "<img src='$nombre_fichero' width='50' height='60' class='text-center'>";
                        }  
                }?>
                <?php endforeach; ?> </th>
                 <th><?php echo $r->Nombre.' '.$r->Apellido; ?>
                 <td><?php echo $r->cedula; ?></td></th>
                 <th><?php echo $r->Correo; ?></th>
                 <th><?php echo $r->celular; ?></th>
             </table>
             <br>
            <div class="table-responsive">
               <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                    <thead>
                        <tr>
                            <th>Novedad</th>
                            <th>Descripción</th>
                            <th>Otro_si</th>
                            <th>Fecha del Contrato</th>
                            <th>Fecha Novedad</th>
                            <!--<th>Obra</th>-->
                            <th>Servicio</th>
                            <th>Opción</th>
                        </tr>
                   </thead>
                    <tfoot>
                            <th>Novedad</th>
                            <th>Descripción</th>
                            <th>Otro_si</th>
                            <th>Fecha del Contrato</th>
                            <th>Fecha Novedad</th>
                            <!--<th>Obra</th>-->
                            <th>Servicio</th>
                            <th>Opción</th>
                            
                        </tr>
                    </tfoot>
            <tbody>
                <?php
              /* echo '<pre>';
                print_r($this->model->novedad($cc));  
                echo '<pre>';*/
                $listar=$this->model->novedad($cc);
                
                foreach( $listar as $r):
                $contrato=$this->model->Listacontrato01($r->usuariocargo_id);
               /* echo '<pre>';
                print_r($contrato);  
                echo '<pre>';*/
                
                
                foreach($contrato as $c){}
                ?>
        <tr>
            <td><a  onClick="loadDynamicContentModal('<?php echo $r->id ?>')"><?php echo $r->novedad; ?></a></td>
            <td><?php echo substr($r->descripcion, 0, 50).'...'; ?></td>
            <td><?php echo substr($r->otro_si, 0, 50).'...'; ?></td>
            <td><?php
            
            if($r->usuariocargo_id == @$c->id ){echo @$c->inicio_contrato;}else{echo $r->fecha_novedad;}
            
            ?>
            </td>
            <td><?php echo $r->fecha_novedad; ?></td>
            <!--<td><?php echo $r->obra; ?></td>-->
            <td><?php echo $r->nombre; ?></td>
            <td>
                <?php if($r->novedad=="Otro Si"): $_SESSION['id_datos']=$r->id  ?>
                <a href="https://sgvalle.com/vista/firmas"  title="firma del empleado"><i class="glyphicon glyphicon-pencil"></i></a>
                
                <?php endif;   ?>
                
                <a onClick="upDate('<?php echo $r->id ?>')" ><i class="glyphicon glyphicon-edit"></i></a>
                <a onclick="javascript:return confirm('Seguro de eliminar este registro?');" href="?c=Novedades&a=Delete&id=<?php echo $r->id; ?>"title="Eliminar" data-toggle="popover" data-trigger="hover" data-content="Elimina los datos de la novedad " ><i class="glyphicon glyphicon-trash"></i></a>
            </td>
        </tr>
    <?php endforeach; ?>
                       </tbody>
            </table>
  <?php }; endif; ?>                                     
                                
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Exportable Table -->
            
    <!--OTRO SI-->        
    <div class="modal fade" id="bootstrap-modal" role="dialog">
        <div class="modal-dialog" role="document"> 
          <!-- Modal contenido-->
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Detalles Novedad</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
              <p id="demo"></p>
            </div>
            <div class="modal-body">
              <div id="conte-modal"></div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            </div>
          </div>
        </div>
      </div>
    </div>        
            
   <!--ACTUALIZAR-->         
    <div class="modal fade" id="bootstrap-modal1" role="dialog">
        <div class="modal-dialog" role="document"> 
          <!-- Modal contenido-->
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Actualización de Novedad</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
            </div>
            <div class="modal-body">
              <div id="update-modal"></div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            </div>
          </div>
        </div>
      </div>
    </div>    
   <!--ELIMINAR-->
    </script>
<div id="deleteProductModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form name="delete_product" id="delete_product">
					<div class="modal-header">						
						<h4 class="modal-title">Eliminar Novedad# <?php echo $id ?></h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					
					<div class="modal-body">
					    <div id="delete-modal">					
						<p>¿Seguro que quieres eliminar este registro?</p>
						<p class="text-warning"><small>Esta acción no se puede deshacer.</small></p>
						<input type="hidden" name="delete_id" id="delete_id" value="<?php echo $id ?>">
					</div>
					</div>
					<div class="resultados" id="resultados" ></div>
					
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
						<input  class="btn btn-danger" onclick=" myFunction()" value="Eliminar">
					</div>
				</form>
			</div>
		</div>
	</div>

       

    
    
    