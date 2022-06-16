<!-- Basic Validation -->
<div class="container">    
    <div id="atras">
        <p class="text-left">
            <a href="<?php echo APP_WWW . "colegios/administracion"; ?>" class="btn btn-success btn-xs">
                <i class="glyphicon glyphicon-arrow-left"></i> Atras
            </a>
    </div>
    <div class=" panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title"> EDITAR DATOS DEL CLIENTE </h3>
        </div>
        <div class="panel-body">
            <div class="row">
                <?php
                echo $this->Form->create('Colegio', array('type' => 'file'));
                echo $this->Form->input('id');
                ?>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="form-line">
                                <?php echo $this->Form->input('nombre', array("class" => "form-control", "label" => "Razón Social")); ?>
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
                                <?php echo $this->Form->input('filename', array("class" => "form-control", "type" => "file", "label" => "Imagen del Cliente")); ?>
                                <?php echo $this->Form->input('dir', array("type" => "hidden")); ?>
                            </div>
                        </div>                               
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="form-line">
                                <?php echo $this->Form->input('rector', array("class" => "form-control", "label" => "Responsable")); ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="form-line">
                                
                                <?php echo $this->Form->input('rect_telefono', array("class" => "form-control",  "label" => "Telefono del Responsable")); ?>
                            </div>
                        </div>
                    </div>
                    <?php $correos = explode("~", $this->request->data['Colegio']['correos']); ?>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Correo Responsable</label>
                                <input type="email" name="data[Colegio][correos][0]" class="form-control" value="<?php echo @$correos[0]; ?>">

                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Correo de Contacto 1</label>
                                <input type="email" name="data[Colegio][correos][1]" class="form-control" value="<?php echo @$correos[1]; ?>">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <div class="form-line">
                                <label>Correo de Contacto 2</label>
                                <input type="email" name="data[Colegio][correos][2]" class="form-control" value="<?php echo @$correos[2]; ?>">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                            <div class="form-group">
                                <div class="form-line">
                                    <label>Salario Minimo Vigente</label>
                                    <?php echo $this->Form->input('salario', array("class" => "form-control", "label" => false, 'type' => 'number')); ?>
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
<!-- #END# Basic Validation -->