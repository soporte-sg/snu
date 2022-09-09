<div class="panel panel-default panel-post">
    <div class="panel-heading">
        <div class="media">
            <div class="media-left">
                <a href="#">
                    <img src=<?= $producto->dir . '/' . $producto->filename ?> />
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">
                    <a href="#"><?= $producto->nombre ?></a>
                </h4>
                Fecha Adquisicion - <?= $producto->fechacompra ?>
            </div>
        </div>
    </div>
    <div class="panel-body">
        <div class="post">
            <div class="post-heading">
                <p> <strong>Numero:</strong> <?= $producto->id ?><br> <strong>Serie: </strong> <?= $producto->serie ?><br></p>
                <p> <strong>Caracteriscas:</strong> <?= utf8_encode($producto->carateristicas) ?><br>
                    <hr> <strong>Estado:</strong> <?= $producto->estado ?><br><strong> Valor</strong>:<?= $producto->preciocosto ?>
                </p>
                <p><hr> 
                    <strong>Fabricante:</strong> <?= $producto->fabricantes ?> Valor:<?= $producto->preciocosto ?>
                    <br> <strong>Sede:</strong> <?= $producto->sede ?> <?= $producto->ubicacion ?>
                </p>
            </div>
            <div class="post-content">

            </div>
        </div>
    </div>
    <div class="media-body">
        <div id="result1">

        </div>
    </div>
    <div class="panel-footer">
        <ul>
            <li>
                <a onclick="Editar('<?= $producto->id ?>')" data-toggle="modal" data-target="#modelId">
                    <i class="material-icons">edit</i>
                    <span>Editar</span>
                </a>
            </li>
            <li>
                <a onclick="Cambio('<?= $producto->id ?>')" data-toggle="modal" data-target="#modelId">
                    <i class="material-icons">phonelink_erase</i>
                    <span>Cambio Estado</span>
                </a>
            </li>
            <li>
                <a onclick="Traslado('<?= $producto->id ?>')">
                    <i class="material-icons">swap_horiz</i>
                    <span>Traslados</span>
                </a>
            </li>
        </ul>
    </div>
</div>

<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <h5 class="modal-title"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="result">

            </div>
        </div>
    </div>
</div>

<script>
    function Editar(id) {
        var id = id
        $.ajax({
            type: "POST",
            url: '?c=productos&a=crud',
            data: {
                idproducto: id
            },
            success: function(resp) {
                $('#result').html(resp);

            }
        });

    }

    function Cambio(id) {
        var id = id
        $.ajax({
            type: "POST",
            url: '?c=productos&a=estado',
            data: {
                id: id
            },
            success: function(resp) {
                $('#result').html(resp);

            }
        });

    }

    function Traslado(id) {
        var producto_id = id
        $.ajax({
            type: "POST",
            url: '?c=traslados&a=crud',
            data: {
                producto_id: producto_id
            },
            success: function(resp) {
                $('#result1').html(resp);

            }
        });

    }
</script>