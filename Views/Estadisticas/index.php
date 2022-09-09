<!-- Exportable Table -->
<div class="row clearfix">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">
                <h2>
                    Registro de eventos
                </h2>
            </div>
            <div class="body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="example1">
                        <thead>
                            <tr>
                                <th>Ip</th>
                                <th>Url</th>
                                <th>Navegador</th>
                                <th>Usuario</th>
                                <th>Fecha-Hora</th>                              
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Ip</th>
                                <th>Url</th>
                                <th>Navegador</th>
                                <th>Usuario</th>
                                <th>Fecha-Hora</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <?php foreach ($eventos as $r) :?>
                                <tr>
                                    <td><?php echo $r->ip; ?></td>
                                    <td><?php echo $r->url; ?></td>
                                    <td><?php echo $r->navegador; ?></td>
                                    <td><?php echo $r->usuario; ?></td>
                                    <td><?php echo $r->fecha_hora; ?></td>
                                </tr>
                            <?php endforeach; ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- #END# Exportable Table -->