<div class="row clearfix">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="card">
            <div class="header">
                <div class="row clearfix">
                    <div class="col-xs-12 col-sm-6">
                        <h2>LISTADO DE ROLES</h2>
                    </div>
                    <div class="col-xs-12 col-sm-6 align-right">
                        <a href="?c=roles&a=addedit" class="btn btn-success ">CREAR</a>
                    </div>
                </div>
            </div>
            <div class="body">
                <div class="sgcDocumentos index">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nombres</th>
                                    <th>Creación</th>
                                    <th>Editar</th>
                                </tr>
                            <tbody>
                                </thead>
                                <?php
                                $i = 1;
                                foreach ($roles as $rol) :
                                ?>
                                    <tr>
                                        <td><?php echo $i++; ?>&nbsp;</td>
                                        <td><?php echo ucwords($rol->rol) ?></td>
                                        <td><?php echo $rol->created; ?>&nbsp;</td>
                                        <td class="actions">
                                            <a href="?c=roles&a=addedit&id=<?= $rol->id ?>" type="button" title="Editar Rol">
                                                <span class="material-icons">
                                                    bookmark_add
                                                </span>
                                            </a>
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
<!-- #END# CPU Usage -->


<?php
if (isset($_REQUEST['success'])) {
}
echo "    
<script>
Swal.fire({    
    icon: 'success',
    title: 'BIEN HECHO!!',
    timer: 1500
},

)
    </script>";

?>