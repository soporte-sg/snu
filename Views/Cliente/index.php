<div class="row">
    <?php foreach ($clientes as $cliente) : ?>

        <div class="col-md-4 hidden-xs">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="col-md-4">
                        <img src="Assets/img/uploads/colegio/<?php echo  $cliente->filename ?>" alt="" width='100' height='90'>
                    </div>
                    <div class="col-md-8 text-center">
                        <h5>
                            <font face="roboto" color="#37474F"> <strong><?php echo strtoupper($cliente->nombre); ?></strong></font>
                        </h5>
                        <a href="?c=clientes&a=verificacion/<?php echo  $cliente->id; ?>" class="btn btn-primary">ENTRAR</a>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>
</div>