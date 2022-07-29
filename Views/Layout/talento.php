<?php
require_once 'Models/Estadistica.php';
$data = new Estadistica();
$entrada = $data->Get(); ?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>SNU sistema de normalización universal</title>
    <!-- Favicon-->
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="Assets/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="Assets/plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="Assets/plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- JQuery DataTable Css 
    <link href="Assets/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">-->
    <!-- Morris Chart Css-->
    <link href="Assets/plugins/morrisjs/morris.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="Assets/css/style.css" rel="stylesheet">


    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="Assets/css/themes/all-themes.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
 <style>

 .imgbrand{
     padding: 10px;       
     width: 78px;
     height: 78px;

 }
 .navbar{
    background-color:#F4F6F6;
 }
 .user-info{
    background: url('Assets/img/uploads/colegio/<?php echo $_SESSION['datos_cliente']->filename ?>') no-repeat no-repeat;
 }
</style>
</head>
<body class="theme">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="preloader">
                <div class="spinner-layer pl-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
            <p>Cargando los recursos</p>
        </div>
    </div>
    <!-- #END# Page Loader -->
    <!-- Overlay For Sidebars -->
    <div class="overlay"></div>
    <!-- #END# Overlay For Sidebars -->
    
    <!-- Top Bar -->
    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="javascript:void(0);" class="bars"></a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-left">
                    <!-- Call Search -->
                    <li><img src="Assets/img/uploads/colegio/<?php echo $_SESSION['datos_cliente']->filename ?>"  alt="User" class="imgbrand" /></li>
                       <!-- #END# Call Search -->
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <!-- Call Search -->                    
                    <a href="?c=seguridad&a=Logout" class="navbar-brand" href="index.html"><i class="glyphicon glyphicon-off"></i> Salir</a>
                    <!-- #END# Call Search -->
                </ul>
            </div>
            
        </div>
    </nav>
    <!-- #Top Bar -->
    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
            <div class="user-info">
                <div class="info-container">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">                       
                        <?php echo ucwords($_SESSION['user']->FullName) ?>                   
                    </div>
                    <div class="email"> <?= $entrada->ULTIMA ?></div>
                </div>
            </div>
            <!-- #User Info -->
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li class="header"><?php echo $_SESSION['datos_cliente']->nombre ?></li>
                    <li class="active">
                        <a href="?c=clientes&a=dashboard">
                            <i class="material-icons">home</i>
                            <span>Inicio</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">widgets</i>
                            <span>Solicitudes</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="?c=solicitudes&a=index">Consultar</a>
                            </li>
                            <li>
                                <a href="?c=solicitudes&a=add">Registrar</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">swap_calls</i>
                            <span>Autoreportes</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="?c=autoreportes&a=add">Registro del evento</a>
                            </li>
                            <li>
                                <a href="?c=autoreportes&a=buscarIndex">Consulta del evento</a>
                            </li>
                            <li>
                                <a href="pages/ui/badges.html">Consolidado de eventos</a>
                            </li>

                            <li>
                                <a href="pages/ui/breadcrumbs.html">Clasificacion de eventos</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">assignment</i>
                            <span>Documentos</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="?c=documentos&a=index">Consultar</a>
                            </li>
                            <li>
                                <a href="pages/forms/advanced-form-elements.html">Subir</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">view_list</i>
                            <span>Documentos Externos</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="?c=doc_exts&a=index">Consultar</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">perm_media</i>
                            <span>Formatos</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="?c=formatos&a=index">Consultar</a>
                            </li>

                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">pie_chart</i>
                            <span>indicadores</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="?c=indicadors&a=index">Configurar</a>
                            </li>
                            <li>
                                <a href="pages/charts/flot.html">Registrar</a>
                            </li>
                            <li>
                                <a href="pages/charts/chartjs.html">Consultar</a>
                            </li>
                            <li>
                                <a href="pages/charts/sparkline.html">Gestioanar</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">content_copy</i>
                            <span>Acciones</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="pages/examples/profile.html">Gestionar</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">map</i>
                            <span>Maps</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="pages/maps/google.html">Google Map</a>
                            </li>
                            <li>
                                <a href="pages/maps/yandex.html">YandexMap</a>
                            </li>
                            <li>
                                <a href="pages/maps/jvectormap.html">jVectorMap</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="">
                            <i class="material-icons">trending_down</i>
                            <span>PQRSF</span>
                        </a>
                    </li>
                    <li>
                        <a href="?c=usuarios&a=index2">
                            <i class="material-icons">face</i>
                            <span>Usuarios</span>
                        </a>
                    </li>
                    <li>
                        <a href="pages/changelogs.html">
                            <i class="material-icons">update</i>
                            <span>Cargos</span>
                        </a>
                    </li>
                    <li>
                        <a href="pages/changelogs.html">
                            <i class="material-icons">update</i>
                            <span>Procesos</span>
                        </a>
                    </li>
                    <li>
                        <a href="?c=permisos&aindex">
                            <i class="material-icons">update</i>
                            <span>Permisos</span>
                        </a>
                    </li>
                    <li class="header">LABELS</li>
                    <li>
                        <a href="?c=seguridad&a=Logout">
                            <i class="material-icons col-red">donut_large</i>
                            <span>Salir</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- #Menu -->
            <!-- Footer -->
            <div class="legal">
                <div class="copyright">
                    &copy; 2016 - 2022 <a href="javascript:void(0);">Firma - Calidadsg</a>.
                </div>
                <div class="version">
                    <b>Version: </b> 1.0.2
                </div>
            </div>
            <!-- #Footer -->
        </aside>
        <!-- #END# Left Sidebar -->
    </section>

    <section class="content">
        <div class="container-fluid">
            <?php
            $data->Est();
            $data->url = $_SERVER['PHP_SELF'];
            $data->url = $_SERVER['HTTP_REFERER'];
            $data->navegador = $_SERVER['HTTP_USER_AGENT'];
            $data->fecha_hora = date("Y-m-d h:i:sa");
            $data->ip = $data->getUserIpAddress();
            $data->usuario = $_SESSION['user']->FullName;
            $datas = $data->Add($data);
?>