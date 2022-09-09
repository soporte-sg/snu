
<table class="table table-bordered table-responsive">
    <thead class="thead-inverse">
        <tr>
            <th scope="row">Codigo</th>
            <th>Elementos</th>
            <th>Descripcion</th>
            <th>Estado</th>
        </tr>
        </thead>
        <tbody>            
            <?php foreach ($plan as  $value):?>
            <tr>
                <td scope="row"><?=$value->codigo?></td>
                <td> <a class="btn btn-primary" onclick="Elementos('<?=$value->codigo ?>')" data-toggle="modal" href='#modal-id'>ver</a></td>
                <td  align="justify" class="<?=$estado?>"><?=$value->descripcion?></td>
                <td><?php
                if ($value->est_solicitud =='planeacion') {
                    echo"<span class='bg-success'>Planeado<br></span>";
                }
                if ($value->est_ejecucion =='ejecucion') {
                    echo"Ejecutado<br>";
                }

                if ($value->est_verificacion =='verificacion') {
                    echo"Verificado";
                }
                ?></td>                
            </tr>
            <?php endforeach;?>
        </tbody>
</table>
<div class="modal fade" id="modal-id">
    <div class="modal-dialog">
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body" id="result">
                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>                
            </div>
        </div>
    </div>
</div>

<script>
        function Elementos(id) {
       // var id = document.getElementById("ubicacion").value
        $.ajax({
            type: "POST",
            url: '?c=mantenimientos&a=elementos',
            data: {
                codigo: id
            },            
            success: function(resp) {
                $('#result').html(resp);                
            }
        });
    }    

</script>
