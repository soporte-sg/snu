<?php
$disable='0';
$imagenBase2='';
$firmaButton='';
$id=$_REQUEST['id'];
$firma1 = "Assets/firmas/firmaEmpresa.png";
$imagenBase1 = "data:image/png;base64," . base64_encode(file_get_contents($firma1));
if(!empty($firma)){
$firma2 = "Assets/firmas/".$firma->imgfirma;
$imagenBase2 = "data:image/png;base64," . base64_encode(file_get_contents($firma2));
file_exists($firma2) and is_file($firma2) ? $disable="disabled": $disable="" ;

}else{$firmaButton='<a href="?c=contratacion&a=firmar&id='.$id.'" class="neu">Firmar</a>';}
?>
<div class="col-md-12">
    <br>
  <?=$firmaButton?>   
    <a href="?c=contratacion&a=exportar&id=<?= $_REQUEST['id'] ?>" class="neu" <?=$disable?>>Exportar</a>
</div>
<div style="background-color:white">
    <?php
    echo $parte0 = "
<style>
table, th, td {    
    text-align:center
  }
  .border{
    border: 1px solid;
  }
  div{
    align:justify
  }  
  .parrafo {
    padding-top: 10px;
    padding-right: 25px;
    border-left-width: 15px;
    padding-left: 20px;
    text-align:justify
}
</style>
<table align='center'>
<tr><th>" . utf8_encode($datos->contrato) . "</th></tr>
</table>
<br><br><br><br><br><br>
<table  class='border' align='center'>
    <tr class='border'>
        <td class='border'>NOMBRE DEL CONTRATANTE:
            <br>FIRMA CALIDAD SG S.A.S
        </td>
        <td class='border'>DOMICILIO DEL CONTRATANTE:
            <br>CALLE 20 #27-49
        </td>
    </tr>    
    <tr class='border'>
        <td class='border'>NOMBRE DEL CONTRATISTA: <br>" . utf8_encode($datos->Nombre . ' ' . $datos->Apellido) . " </td>
        <td class='border'>DOMICILIO DEL CONTRATISTA: <br>" . utf8_encode($datos->direccion) . "</td>
    </tr>   
    <tr class='border'>
        <td class='border'>TELÉFONO FIJO – CELULAR DEL CONTRATISTA: <br>" . utf8_encode($datos->celular) . " </td>
        <td class='border'>CORREO ELECTRÓNICO DEL CONTRATISTA <br>" . utf8_encode($datos->Correo) . "</td>
    </tr>

    <tr class='border'>
        <td class='border'>DOCUMENTO IDENTIDAD DEL CONTRATISTA: <br>" . utf8_encode($datos->cedula) . "</td>
        <td class='border'>LUGAR Y FECHA DE NACIMIENTO DEL CONTRATISTA: <br>" . utf8_encode($datos->LugarNacimiento . ' ' . $datos->FechaNacimiento) . "</td>
    </tr>
    
    <tr class='border' >
        <td class='border' >CARGO A DESARROLLAR POR EL CONTRATISTA: <br>" . utf8_encode($datos->cargo) . "</td>
        <td class='border' >HONORARIOS:: <br>XXXX</td>
    </tr>
    <tr class='border' >
        <td class='border'>FECHA DE INICIO DE ACTIVIDADES CONTRATISTA:<br>xxxxxx</td>
        <td class='border'>LUGAR DONDE VA DESEMPEÑAR LAS ACTIVIDADES:<br>XXXX</td>
    </tr>
</table>
<div class='col-md-12 parrafo'>
    <p class>
    <div class='col-md-10 col-md-offset-1 text-justify'>
        Entre los suscritos a saber:
        xxxxxx, mayor y vecino de esta ciudad, identificado con la cédula de ciudadanía número 1113.637.538 de Palmira, Con cargo de Directora Administrativa y obrando en representación de la empresa FIRMA CALIDADSG, con Nit. 901256342 quien para efectos del presente convenio se denominará EL CONTRATANTE, por una parte
        y de otra, XXXXXX mayor de edad, identificado con cédula de C.C. No. XXXX actuando en nombre propio quien para efectos del presente convenio se denominará EL CONTRATISTA.
        Vigencia del convenio:XXXXX<br>
        Valor de la hora en el convenio: A convenir según los eventos.
        Las PARTES han negociado, ajustado y celebrado de buena fe y mutuamente el presente convenio, regulado por las normas del Código de Comercio y lo estipulado en las siguientes cláusulas
    </div>
    </p>
</div>
<br>
<div class=' parrafo'>
<p>" . utf8_encode($datos->contenido) . "
<br><br>
<table>
            <tr>
                <th><img src='" . $imagenBase1 . "' width='160px' height='90px'></th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th>
                    <img src='" . $imagenBase2 . "' width='160px' height='90px' id='firma'>
                </th>
            </tr>
            <tr>
                <td>FIRMA CALIDAD SG S.A.S <br> NIT:</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>" . utf8_encode($datos->Nombre . ' ' . $datos->Apellido) . "<br>CC:" . utf8_encode($datos->cedula) . "</td>
            </tr>
        </table></p>
</div>"; ?>
    <?php
    $_SESSION['content'] = $parte0; ?>
    <script>
        function Firmar(val) {
            var id = val
            $.ajax({
                data: {
                    id: id
                },
                type: "post",
                url: "?c=contratacion&a=firmar",
                success: function(resp) {
                    $('#index').html(resp);
                    //$('#resultado').html("<div class='alert alert-success'></div>");
                }
            });
        }
    </script>