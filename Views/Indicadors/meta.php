<div class="row clearfix">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="card">
            <div class="header">
                <div class="row clearfix">
                    <div class="col-xs-12 col-sm-12">
                        <h2>REGISTRAR</h2>
                    </div>
                </div>
            </div>
            <div class="body">
                <form action="" name="formMeta" id="formMeta" method="post">
                    <div class="row clearfix">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label>Condición</label>
                                <div class="form-line">
                                    <select name="comparativo" class="form-control" required>
                                        <option value="">seleccionar</option>
                                        <option value="=" <?php  echo $metas->comparativo == '=' ? 'selected' : '' ?>>IGUAL QUE ( = )</option>
                                        <option value=">" <?php echo $metas->comparativo == '>' ? 'selected' : '' ?>>MAYOR QUE( > )</option>
                                        <option value=">=" <?php echo $metas->comparativo == '>=' ? 'selected' : '' ?>>MAYOR IGUAL QUE ( >= )</option>
                                        <option value="< " <?php echo $metas->comparativo == '<' ? 'selected' : '' ?>>MENOR QUE( < )</option>
                                        <option value="<=" <?php echo $metas->comparativo == '<=' ? 'selected' : '' ?>>MENOR IGUAL QUE ( <= )</option>
                                        <option value="entre" <?php echo $metas->comparativo == 'entre' ? 'selected' : '' ?>>ENTRE</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">

                                    <label>Valor</label>
                                    <input type="text" name="valor" class='form-control' value="<?= $metas->valor ?>">
                                    <input type="hidden" name="indicador_id" class='form-control' value="<?php echo $_REQUEST['ind'] ?>">
                                    <input type="hidden" name="id" class='form-control' value="<?= $metas->id ?>?>">

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="form-line">

                                    <label>Fecha Uso</label>
                                    <input type="date" name="fecha_uso" class='form-control' value="<?= $metas->fecha_uso ?>">

                                </div>
                            </div>
                        </div>

                        <input type="button" id="guardar" class="btn btn-default btn-block" value="Registrar">



                        <!-- #END# Input -->

                    </div>
                </form>
            </div>
        </div>
        <script>
            $(document).on('click', '#guardar', function(e) {
                var data = $("#formMeta").serialize();
                $.ajax({
                    data: data,
                    type: "post",
                    url: "?c=indicadors&a=CrudMeta",
                    success: function(data) {
                        Swal.fire({
                            icon: 'success',
                            title: 'BIEN HECHO!!',
                            timer: 1500
                        }, )
                        // $('#resultado').load(' #resultado');
                    }

                })
            });
        </script>