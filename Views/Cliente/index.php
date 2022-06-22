<section>
<div class="col-md-12">
            <button class="btn btn-success" onclick="Clientes_add()" data-toggle="modal" data-target="#modelId">Crear Cliente</button>
        </div>
    <div class="container-fluid">   
            
            <div class="row clearfix">
                <?php foreach ($clientes as $cliente) : ?>
                <div class="col-xs-12 col-sm-3">
                    <div class="card profile-card">
                        <div class="profile-header">&nbsp;</div>
                        <div class="profile-body">
                            <div class="image-area">
                                <img src="Assets/img/uploads/colegio/<?php echo  $cliente->filename ?>" alt="Profile Image"  width='100' height='90' class="bg-white" />
                            </div>
                            <div class="content-area">
                                <font face="roboto" color="#37474F"> <strong><?php echo strtoupper($cliente->nombre); ?></strong></font>
                            </div>
                        </div>
                        <div class="profile-footer">
                            <ul>
                                <li>
                                    <span>Editar</span>
                                    <span><a onclick="Clientes_Edit('<?php echo $cliente->cliente_id ?>')"  data-toggle="modal" data-target="#modelId"><i class="glyphicon glyphicon-edit"></i></a></span>
                                </li>                                                                
                            </ul>
                            <button class="btn btn-primary btn-lg waves-effect btn-block">ENTRAR</button>
                        </div>
                    </div>                    
                </div>
                <?php endforeach; ?>        
            </div>
        </div>   
</section>
<!-- Modal -->
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">                
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
            </div>
            <div class="modal-body" id="clientes">
               
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
               
            </div>
        </div>
    </div>
</div>
<script>
function Clientes_Edit(val) {  
   $.ajax({
      type: "POST",
      url: '?c=clientes&a=crud',
       data: 'id=' + val,
      success: function(resp) {
        $('#clientes').html(resp);
        $('#respuesta').html("");
      }
    });
  }
  function Clientes_add() {  
   $.ajax({
      type: "POST",
      url: '?c=clientes&a=crud',
     success: function(resp) {
        $('#clientes').html(resp);
        $('#respuesta').html("");
      }
    });
  }

</script>