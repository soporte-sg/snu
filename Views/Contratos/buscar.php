<div class="card">
    <div class="card-body">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Identificación</th>
                    <th>Estado</th>
                    <th>Fecha Registro</th>
                    <th>Menu</th>
                </tr>
            </thead>
            <tbody align="center">
                <?php foreach ($result as $key => $value) : ?>
                    <tr>
                        <td><?= $value->id ?></td>
                        <td><?= $value->Nombre ?></td>
                        <td><?= $value->Apellido ?></td>
                        <td><?= $value->cedula ?></td>
                        <td><?= $value->status ?></td>
                        <td><?= $value->FechaRegistro ?></td>
                        <td>
                            <a href="Assets/soportes/<?= $value->cedula ?>/hoja_vida.pdf" type="button" class="btn btn-default" target="_blank" target="">Hoja de Vida</a>
                          <?php if($value->rol_id==1 ):?>
                            <button type="button" id="procesar" onclick="Procesar('<?=$value->id?>')" class="btn btn-default">Procesar Candidato</button>
                          <?php endif;?>
                          <?php if( $value->rol_id==2):?>
                            <button type="button" id="contratar" onclick="Contratar('<?=$value->id?>')" class="btn btn-default">Contratar Candidato</button>
                          <?php endif;?>
                          <?php if( $value->rol_id==3):?>
                            <a href="?c=contratacion&a=historial&id=<?=$value->id?>" type="link" class="btn btn-default">Historial</a>
                          <?php endif;?>
                            <button type="button" id="novedad" onclick="Novedad('<?=$value->id?>')" class="btn btn-default">Novedades</button>
                            <!--  <button type="button" class="btn btn-default">button</button> -->
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>
<script>
    function Procesar(dato) {          
        console.log(dato);
        $.ajax({
            type: "POST",
            url: '?c=contratacion&a=procesar',
            data: {
                id: dato
            },
            beforeSend: function() {
                $('#cargando').html("<h5 class='text-center'>Cargando a:" + data + "</h5>");
            },
            success: function(resp) {
                $('#resultado').html(resp);
            }
        });

    }

    function Novedad() {
        var data = document.getElementById("novedad").value
        $.ajax({
            type: "POST",
            url: '?c=contratacion&a=novedad',
            data: {
                id: data
            },
            beforeSend: function() {
                $('#resultado').html("<h5 class='text-center'>Buscando a:" + data + "</h5>");
            },
            success: function(resp) {
                $('#resultado').html(resp);
            }
        });
    }
    function Contratar(data) {        
        $.ajax({
            type: "POST",
            url: '?c=contratacion&a=contratar',
            data: {
                id: data
            },
            beforeSend: function() {
                $('#resultado').html("<h5 class='text-center'>Buscando a:" + data + "</h5>");
            },
            success: function(resp) {
                $('#resultado').html(resp);
            }
        });
    }
</script>