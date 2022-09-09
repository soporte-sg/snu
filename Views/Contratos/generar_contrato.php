<?php print_r($datos) ?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Panel title</h3>
    </div>
    <div class="panel-body" align="justify">
        <p>
        <div class="col-md-12 text-center"><br><?= utf8_encode($datos->contrato); ?></div>
        <div class="col-md-12 "> <br><br><br><br>
            <table class="table table-bordered">
                <tr>
                    <td>NOMBRE DEL CONTRATANTE:
                        <br>FIRMA CALIDAD SG S.A.S
                    </td>
                    <td>DOMICILIO DEL CONTRATANTE:
                        <br>CALLE 20 #27-49
                    </td>
                </tr>
                <!-- -------------------------------------------- -->
                <tr>
                    <td>NOMBRE DEL CONTRATISTA: <br><?= utf8_encode($datos->Nombre . ' ' . $datos->Apellido); ?></td>
                    <td>DOMICILIO DEL CONTRATISTA: <br><?= utf8_encode($datos->direccion); ?></td>
                </tr>
                <!-- -------------------------------------------- -->
                <tr>
                    <td>TELÉFONO FIJO – CELULAR DEL CONTRATISTA: <br><?= utf8_encode($datos->celular); ?></td>
                    <td>CORREO ELECTRÓNICO DEL CONTRATISTA <br><?= utf8_encode($datos->Correo); ?></td>
                </tr>
                <!-- -------------------------------------------- -->
                <tr>
                    <td>DOCUMENTO IDENTIDAD DEL CONTRATISTA: <br><?= utf8_encode($datos->cedula); ?></td>
                    <td>LUGAR Y FECHA DE NACIMIENTO DEL CONTRATISTA: <br><?= utf8_encode($datos->LugarNacimiento . ' ' . $datos->FechaNacimiento); ?></td>
                </tr>
                <!-- -------------------------------------------- -->
                <tr>
                    <td>CARGO A DESARROLLAR POR EL CONTRATISTA: <br><?= utf8_encode($datos->cargo); ?></td>
                    <td>HONORARIOS:: <br>XXXX</td>
                </tr>
                <tr>
                    <td>FECHA DE INICIO DE ACTIVIDADES CONTRATISTA:<br>xxxxxx</td>
                    <td>LUGAR DONDE VA DESEMPEÑAR LAS ACTIVIDADES:<br>XXXX</td>
                </tr>
            </table>
        </div>

        <div class="col-md-12 text-justify">
            <p>
            <div class="col-md-8 col-md-offset-2 text-justify">
                Entre los suscritos a saber:
                xxxxxx, mayor y vecino de esta ciudad, identificado con la cédula de ciudadanía número 1113.637.538 de Palmira, Con cargo de Directora Administrativa y obrando en representación de la empresa FIRMA CALIDADSG, con Nit. 901256342 quien para efectos del presente convenio se denominará EL CONTRATANTE, por una parte
                y de otra, XXXXXX mayor de edad, identificado con cédula de C.C. No. XXXX actuando en nombre propio quien para efectos del presente convenio se denominará EL CONTRATISTA.
                Vigencia del convenio: $XXXXX
                Valor de la hora en el convenio: A convenir según los eventos.
                Las PARTES han negociado, ajustado y celebrado de buena fe y mutuamente el presente convenio, regulado por las normas del Código de Comercio y lo estipulado en las siguientes cláusulas
                </div>
            </p>
        </div>
        <br><br><br><br>
        <?= utf8_encode($datos->contenido); ?>
        </p>
        <div class="col-md-12">
            <div class="col-md-4">
                <table>
                    <tr>
                        <th><img src="/Assets/firmas/firmaEmpresa.png" width="60%" height="auto"></th>
                    </tr>
                    <tr>
                        <td>Firma Empresa</td>
                    </tr>
                </table>
            </div>
            <div class="col-md-4">
                <table>
                    <tr>
                        <img src="/Assets/firmas/firmaEmpleado.jpg" width="60%" height="auto">
                    </tr>
                    <tr>
                        <td>Firma Empleado</td>
                    </tr>
                </table>


            </div>
        </div>
    </div>
</div>