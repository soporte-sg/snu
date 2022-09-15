<?php

if (isset($_REQUEST['error'])) {
    if (isset($_COOKIE['visitas'])) {
        setcookie('visitas', $_COOKIE['visitas'] + 1, time() + 3600 * 24);
          $mensaje = 'Numero de visitas: ' . $_COOKIE['visitas'];
    } else {
         setcookie('visitas', 1, time() + 3600 * 24);
         $mensaje = 'Bienvenido por primera vez a nuesta web';
    }
} else {
    setcookie("visitas", 1);
}
session_destroy();
$disable = 0;
$mensaje0='';
$dir="";
?>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Assets\css\estilos.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script>
        setTimeout(function() {
            $("#alert").fadeOut('slow');
        }, 2000);
    </script>
</head>

<?php if(isset($_COOKIE['visitas'])){ 
    if ($_COOKIE['visitas'] >= 3) {
    $disable = 'disabled';
    $mensaje0='El Acceso ha sido bloquedado por intentos fallidos de ingreso, por favor comunicate con soporte tecnico <a href="https://calidadsg.com.co/pqrsf/">IR</a>';
    $dir="<a href='?c=recuperacion&a=info'>Recuperar Clave</a>";
} else {
    $disable = 0;
    $mensaje0='';
    $dir="";
} 
}?>
<body>
    <section class="login-block">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-lg-6 login-sec">
                    <img src="Assets\img\user.png" alt="" width="100px" height="auto" class="user">
                    <br>
                    <h2 class="text-center">Inicia sesión ahora </h2>
                    <?php if (isset($_REQUEST['error'])) :
                    ?>
                        <div id="alert" class="alert alert-danger">
                            Clave o usuario incorrecto, verifica y trata de nuevo intento No. <?= $_COOKIE['visitas'] ?>
                        </div>
                    <?php endif; ?>
                    <form action="?c=seguridad&a=logon" method="POST" name="form-login" id="formulario">
                        <div class="formulario__grupo" id="grupo__usuario">
                            <label for="usuario" class="formulario__label">Usuario</label>
                            <div class="formulario__grupo-input">
                                <input type="text" class="formulario__input" maxlength="10" name="usuario" id="usuario" placeholder="usuario" required>
                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">El usuario tiene que ser de 4 a 10 dígitos y solo puede contener numeros, letras y guion bajo.</p>
                        </div>
                        <br>
                        <div class="formulario__grupo" id="grupo__clave">
                            <label for="clave" class="formulario__label">Contraseña</label>
                            <div class="formulario__grupo-input">
                                <input type="password" class="formulario__input" maxlength="12" name="clave" placeholder="contraseña" id="clave" required>
                                <i class="formulario__validacion-estado fas fa-times-circle"></i>
                            </div>
                            <p class="formulario__input-error">La contraseña tiene que ser de minimo 6 maximo 12 digitos.</p>
                        </div>
                        <br><a type="button" class="ver-politica" data-toggle="modal" data-target="#myModal" >Ver Politica</a>
                        <br>

                        <label for="">
                            <input type="checkbox" name="tdatos" id="tdatos">
                            He leido y aceptó la politica y tratamiento de datos
                        </label>
                        <br></br>
                        <div align="center" class="form-check">
                            <button id="login" class="btn btn-login waves-effect" <?= $disable ?>>Iniciar Sesión</button>
                            <span>
                                <?=$mensaje0?>
                                <?=$dir?>
                            </span>
                        </div>
                    </form>
                    <!-- <div class="copy-text">Creado por Calidadsg.com A.o.A
                        </a>
                    </div> -->
                </div>
                <div class="col-md-4 col-lg-4 baner-sec">
                    <img src="Assets\img\firma.png" alt="" width="400px" height="auto" class="ml">
                </div>
            </div>
        </div>
    </section>
    <script src="Assets\js\validaciones.js"></script>
</body>

</html>
<!-- Trigger the modal with a button -->
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h5 class="modal-title">AUTORIZACION PARA EL TRATAMIENTO DE DATOS PERSONALES</h5>
            </div>
            <div class="modal-body">
                <p align="justify" class="texto-politica">De conformidad con la normatividad legal vigente aplicable en el país cliente y
                    en concordancia con la Política de Tratamiento de Datos
                    Personales adoptada <strong><a href="https://documental.calidadsg.com/documental/img/FIRMA%20CALIDADSG/GD-DC-010.pdf" target="_blank">Ver</a></strong> y la Política de Seguridad
                    y Privacidad de la Información definida por FIRMA CALIDADSG <strong><a href="https://documental.calidadsg.com/documental/img/FIRMA%20CALIDADSG/GD-DC-016.pdf" target="_blank">Ver</a></strong>
                    actuando de manera libre, voluntaria, previa, y expresamente que al diligenciar
                    los datos autorizo a FIRMA CALIDADSG para que de forma directa, o a través de terceros,
                    realice el tratamiento de los mismos, el cual consiste en recolectar, almacenar, usar,
                    transferir, suprimir, procesar, compilar, intercambiar, dar tratamiento, actualizar y
                    administrar la información suministrada</p>
            </div>
            <div class="modal-footer">
                <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button> -->
            </div>
        </div>

    </div>
</div>
<script>
</script>
<style type="text/css">
    @import url("//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css");

    body {
        color: #bbb;
    }

    .login-block {
        background-color: #fff;
        align-items: center;
        display: flex;
        float: left;
        width: 100vw;
        height: 100vh;
        padding: 50px 0;
    }

    .banner-sec {
        background: url() no-repeat left bottom;
        background-size: cover;
        min-height: 500px;
        border-radius: 0 10px 10px 0;
        padding: 0;
    }

    .container {
        border-radius: 10px;
        margin-top: 40px;
        margin-left: 10%;
    }

    .ml {
        margin: auto;
        display: block;
        position: relative;
        margin-top: 20%;
        margin-left: 20%;
    }

    .user {
        margin: auto;
        display: flex;
    }

    .baner-sec {
        justify-content: center;
        margin-top: 5%;
    }

    .form-control:focus {
        border-color: beige;
        box-shadow: 0px 0px 1px 2px #e67817;
    }


    .login-sec {
        padding: 50px 30px;
        position: relative;
        background-color: #073c64;
        border-radius: 8px;

    }

    .login-sec .copy-text {
        position: absolute;
        width: 90%;
        bottom: 10px;
        font-size: 13px;
        text-align: center;
    }

    .login-sec .copy-text i {
        color: #FEB58A;
    }

    .login-sec .copy-text a {
        color: #E36262;
    }

    .login-sec h2 {
        margin-bottom: 30px;
        font-weight: 800;
        font-size: 30px;
        color: #707578;
    }

    .login-sec h2:after {
        content: " ";
        width: 100px;
        height: 5px;
        background: #e67817;
        display: block;
        margin-top: 20px;
        border-radius: 3px;
        margin-left: auto;
        margin-right: auto
    }

    .btn-login {
        background: #e5e5e5;
        background-size: 55px;
        text-shadow: 1px 1px 1px #c0c0c0;
        color: #000000;
        border-radius: 10px;
        cursor: pointer;
        transition: all 300ms ease;
    }

    .btn-login:hover {
        box-shadow: 0px 0px 0px #fff,
            0px 0px 0px #c1c1c1,
            inset -10px -10px 15px #fff,
            inset 10px 10px 15px #c1c1c1;
        color: #000;
        text-shadow: 0px 0px 0px #c0c0c0;

    }

    .banner-text {
        width: 70%;
        position: absolute;
        bottom: 40px;
        padding-left: 20px;
    }

    .banner-text h2 {
        color: #fff;
        font-weight: 600;
    }

    .banner-text h2:after {
        content: " ";
        width: 100px;
        height: 5px;
        background: #FFF;
        display: block;
        margin-top: 20px;
        border-radius: 3px;
    }

    .banner-text p {
        color: #fff;
    }
</style>