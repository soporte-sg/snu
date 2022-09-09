
<div  class="panel panel-primary panel-outline">
    <!-- Default panel contents -->
    <div class="panel-heading text-right">       
        <button class="btn btn-default" onclick="Clientes_add()" data-toggle="modal" data-target="#modelId">Crear Cliente</button>
    </div>
    <div class="panel panel-body text-center">
        <!-- Table -->
        <table id="example1" class=" text-center table table-bordered" >
            <thead >
                <tr>
                    <th class="text-center" >Logo</th>
                    <th class="text-center" >Nombre</th>
                    <th class="text-center"></th>                    
                </tr>                
            </thead>
            <tbody>
            <?php foreach ($clientes as $cliente) : ?>
                <tr>
                    <td class="text-center"><img src="Assets/img/uploads/colegio/<?php echo  $cliente->filename ?>" alt="Profile Image"  width='100' height='90' class="bg-white" /></td>
                    <td><a href="?c=clientes&a=verificar&id=<?php echo $cliente->cliente_id ?>" class="neu btn-block text-center"><strong><?php echo strtoupper($cliente->nombre); ?></strong></a></td>
                    <td class="text-center"><span><a onclick="Clientes_Edit('<?php echo $cliente->cliente_id ?>')" class="btn btn-primary btn-block" text-center" data-toggle="modal" data-target="#modelId">Editar</a></span></td>
                </tr>
                <?php endforeach; ?>    
            </tbody>
        </table>
        </div>
</div>

<!-- Modal -->
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">                
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
            </div>
            <div class="modal-body" id="clientes"></div>
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