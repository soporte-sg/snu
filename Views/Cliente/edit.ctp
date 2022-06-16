<!-- Basic Validation -->
<div class="row clearfix">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">
                <h2>EDITAR DATOS DEL COLEGIO</h2>
            </div>
            <div class="body">
                <?php
                echo $this->Form->create('Colegio', array('type' => 'file'));
                echo $this->Form->input('id');
                ?>

                <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="form-line">
                                    <?php echo $this->Form->input('nombre', array("class" => "form-control")); ?>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Telefono</label>
                                    <?php echo $this->Form->input('telefono', array("class" => "form-control", "label" => false)); ?>

                                </div>
                            </div>
                        </div>                                
                        <div class="col-md-6">

                            <div class="form-group">
                                <div class="form-line">
                                    <label>Dirección</label>
                                    <?php echo $this->Form->input('direccion', array("class" => "form-control", "label" => false)); ?>

                                </div>
                            </div>
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <?php echo $this->Form->input('filename', array("class" => "form-control", "type" => "file", "label" => "Imagen del Colegio")); ?>
                                    <?php echo $this->Form->input('dir', array("type" => "hidden")); ?>
                                </div>
                            </div>                               
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Nombre del Rector</label>
                                    <?php echo $this->Form->input('rector', array("class" => "form-control", "label" => false)); ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Télefono del Rector</label>
                                    <?php echo $this->Form->input('rect_telefono', array("class" => "form-control", "label" => false)); ?>
                                </div>
                            </div>
                        </div>
                        <?php $correos = explode("~", $this->request->data['Colegio']['correos']); ?>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Correo Director</label>
                                    <input type="email" name="data[Colegio][correos][0]" class="form-control" value="<?php echo @$correos[0]; ?>">

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Correo Secretaria</label>
                                    <input type="email" name="data[Colegio][correos][1]" class="form-control" value="<?php echo @$correos[1]; ?>">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Correo Secretaria</label>
                                    <input type="email" name="data[Colegio][correos][2]" class="form-control" value="<?php echo @$correos[2]; ?>">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Salario Minimo Vigente</label>
                                    <?php echo $this->Form->input('salario', array("class" => "form-control", "label" => false)); ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="btn btn-primary waves-effect" type="submit">GUARDAR</button>

                </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- #END# Basic Validation -->