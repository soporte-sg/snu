<ol class="breadcrumb">
    <li><a href="?c=Usuario">Planta de Personal</a></li>
    <li class="active"> Lista de Aspirantes</li>
</ol>
<div class="container-fluid">
    <div class="row">
        <div class="pull-right">
            <a href="?c=seleccion&a=FormAspirante" type="button" class="neu">Registrar Aspirante</a>
        </div>
    </div>
</div>
<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">Lista de Aspirantes</h3>
    </div>
    <div class="panel-body">
        <table class="table">
            <thead>
                <tr>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Cedula</th>
                    <th>Correo</th>
                    <th>Celular</th>
                    <th>Opciones</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($postulados as $value) : ?>
                    <tr>
                        <td><?= $value->Nombre ?></td>
                        <td><?= $value->Apellido ?></td>
                        <td><?= $value->cedula ?></td>
                        <td><?= $value->Correo ?></td>
                        <td><?= $value->celular ?></td>
                        <td class="text-center">
                            <!--ir al panel de gestion -->
                            <a href="?c=seleccion&a=gestion&id=<?=$value->id?>" class="neu"><i class="glyphicon glyphicon-user"></i></a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

    </div>
</div>