<div class="card">
    <div class="header">
        <h2>
            Documentos
            <small>De clic en el proceso para ver el listado de documentos</small>
        </h2>
</div>
<div class="body">

<table id="example1" class="table table-bordered table-striped ">
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Nombre</th>
                    <th>Responsable</th>
                    <th>Versión</th>
                    <th>Recuparación</th>
                    <th>Emisión</th>
                    <th>Actualización</th>
                    <th>Menu</th>
                </tr>
            </thead>
            <tbody>
                <?php
                foreach ($documentos as $value) : 
                    $dir='Assets/img/'.$_SESSION['datos_cliente']->nombre.'/'.$value->CodDocumento.'pdf';
                    ?>
                    <tr>
                        <td><?= $value->CodDocumento ?></td>
                        <td><a  href="Assets/img/<?=$_SESSION['datos_cliente']->nombre.'/'.$value->CodDocumento?>.pdf" target="_blank"><?= $value->NomDocumento ?></a>   </td>
                        <td><?= $value->proteccion ?></td>
                        <td><?= $value->Version ?></td>
                        <td><?= $value->preservacion ?></td>
                        <td><?= $value->Emision ?></td>
                        <td><?= $value->Actualizacion ?></td>
                        <td>
                            <?php if ($_SESSION['user']->rol_id == 4 or $_SESSION['user']->rol_id == 1) : ?>
                                <a data-toggle="modal" href='#modal-id' type="button" onclick="Edit('<?php echo $value->id ?>')" type="button" title="Actualizar datos del Documento">
                                    <i class="material-icons">edit</i>
                                </a>
                            <?php endif; ?>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>            
        </table>
        </div>
   
</div>

<div class="modal fade" id="modal-id">
    <div class="modal-dialog modal-lg" >
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body" id="resultado">
                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>

<script>

   function Get(doc_id){
    var doc_id =  doc_id
        $.ajax({
            data: {
                doc_id: doc_id
            },
            type: "post",
            url: "?c=documentos&a=Getdoc",            
            success: function(data) {
                $('#resultado').html(data);
                //$('#resultado').html("<div class='alert alert-success'></div>");
            }
        });
   }
   function Edit(doc_id){
    var doc_id =  doc_id
        $.ajax({
            data: {
                doc_id: doc_id
            },
            type: "post",
            url: "?c=documentos&a=Edit",            
            success: function(data) {
                $('#resultado').html(data);
                //$('#resultado').html("<div class='alert alert-success'></div>");
            }
        });
   }
</script>
