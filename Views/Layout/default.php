<?php 
 session_start();
 $rol=$_SESSION['rol'];
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>SNU-sistema de normalización universal</title>
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

    <!-- Morris Chart Css-->
    <link href="Assets/plugins/morrisjs/morris.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="Assets/css/style.css" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="Assets/css/themes/all-themes.css" rel="stylesheet" />
</head>

<body class="theme-red">
    <!-- Page Loader 
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
            <p>Please wait...</p>
        </div>-->
    </div>
    <!-- #END# Page Loader 
    <!-- Overlay For Sidebars -->
    <div class="overlay"></div>
    <!-- #END# Overlay For Sidebars -->
    
    <!-- Top Bar -->
    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="javascript:void(0);" class="bars"></a>
                <a class="navbar-brand" href="index.html"><?php echo  strtoupper($_SESSION['user']->cliente)  ?></a>
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->
    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
            <div class="user-info">
                <div class="image">
                    <img src="images/user.png" width="48" height="48" alt="User" />
                </div>
                <div class="info-container">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo ucwords($_SESSION['user']->FullName) ?></div>
                    <div class="email">john.doe@example.com</div>
                    <div class="btn-group user-helper-dropdown">
                        <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="javascript:void(0);"><i class="material-icons">person</i>Profile</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="javascript:void(0);"><i class="material-icons">group</i>Followers</a></li>
                            <li><a href="javascript:void(0);"><i class="material-icons">shopping_cart</i>Sales</a></li>
                            <li><a href="javascript:void(0);"><i class="material-icons">favorite</i>Likes</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="javascript:void(0);"><i class="material-icons">input</i>Sign Out</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- #User Info -->
            <!-- Menu -->
            <div class="menu" style="font-size: 5px !important;">
                <ul class="list">
                    <li class="header">Menú de Navegacion</li>
                    <li class="active">
                        <a href="?c=solicitudes&a=index">
                            <i class="material-icons">account_balance</i>
                            <span>RESUMEN</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <!--<a href="productos/buscarindsede/">-->
                            <i class="material-icons">devices_other</i>
                            <span>Solicitudes</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                            <li>
                                <a href="?c=solicitudes&a=add">Registrar</a>
                            </li>
                            <li>
                                <a href="?c=solicitudes&a=index">Consultar</a>
                            </li>

                    </li>
                </ul>
                </li>

                <li>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <!--<a href="productos/buscarindsede/">-->
                        <i class="material-icons">devices_other</i>
                        <span>Autoreporte</span>
                    </a>
                    <ul class="ml-menu">
                        <li>
                        <li>
                            <a href="https://api.calidadsg.com/documental/TbProcesoNoconformes/add">Registro de evento</a>
                        </li>
                        <li>
                            <a href="https://api.calidadsg.com/documental/TbProcesoNoconformes/buscar">Consulta de eventos</a>
                        </li>

                        <li>
                            <a href="https://api.calidadsg.com/documental/tb_condiciones/indexes">Consolidado de eventos</a>
                        </li>
                        <li>
                            <a href="https://api.calidadsg.com/documental/categoriaeventos/index1">Clasificación de eventos</a>
                        </li>

                </li>
                </ul>



                </li>


                <li>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <!--<a href="productos/buscarindsede/">-->
                        <i class="material-icons">devices_other</i>
                        <span>Documentos</span>
                    </a>
                    <ul class="ml-menu">
                        <li>

                        <li>
                            <a href="documentos/index1">Consultar</a>
                        </li>
                        <li>
                            <a href="https://api.calidadsg.com/upload/?emp=<?php echo $datos['Colegio']['nombre'] ?>">Subir</a>
                        </li>

                </li>
                </ul>
                </li>
                <li>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <!--<a href="productos/buscarindsede/">-->
                        <i class="material-icons">devices_other</i>
                        <span>Documentos Externos</span>
                    </a>
                    <ul class="ml-menu">
                        <li>
                            <!--<li>
                                    <a href="SgcDocumentos/add">Registrar</a>
                                </li>-->
                        <li>
                            <a href="sgcexternos/index1">Consultar</a>
                        </li>

                </li>
                </ul>
                </li>
                <li>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <!--<a href="productos/buscarindsede/">-->
                        <i class="material-icons">devices_other</i>
                        <span>Formatos</span>
                    </a>

                    <ul class="ml-menu">
                        <!--<li>
                                <li>
                                    <a href="formatos/add">Registrar</a>
                                </li>-->
                        <li>
                            <a href="formatos/index1">Consultar</a>
                        </li>

                </li>
                </ul>
                <ul class="ml-menu">
                    <!--<li>
                                <li>
                                    <a href="formatos/add">Registrar</a>
                                </li>-->
                    <li>
                        <a href="pqrs/index1"></a>
                    </li>


                    </li>
                </ul>
                </li>
                <li>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <!--<a href="productos/buscarindsede/">-->
                        <i class="material-icons">devices_other</i>
                        <span>Indicadores</span>
                    </a>
                    <ul class="ml-menu">
                        <li>
                        <li>
                            <a href="indicadors/index1">Configurar</a>
                        </li>
                        <li>
                            <a href="indicadors/buscar">Registrar</a>
                        </li>
                        <li>
                            <a href="indicadors/dash"> Consultar</a>
                        </li>

                </li>
                </ul>
                </li>
                <li>
                    <a href="javascript:void(0);" class="menu-toggle">
                        <!--<a href="productos/buscarindsede/">-->
                        <i class="material-icons">devices_other</i>
                        <span>Acciones</span>
                    </a>
                    <ul class="ml-menu">
                        <li>
                        <li>
                            <a href="acpms/gestion">Gestionar</a>
                        </li>
                </li>
                </ul>
                </li>


                <li>
                    <a href="pqrs/index1">
                        <i class="material-icons">account_circle</i>
                        <span>PQRSF</span>
                    </a>
                </li>

                <?php if ($rol == 4 or $rol == 1) : ?>
                    <li>
                        <a href="users/index1">
                            <i class="material-icons">account_circle</i>
                            <span>Usuarios</span>
                        </a>
                    </li>
                    <li>
                        <a href="cargos/index1">
                            <i class="material-icons">account_circle</i>
                            <span>Cargos</span>
                        </a>
                    </li>
                    <li>
                        <a href="procesos/index1">
                            <i class="material-icons">account_circle</i>
                            <span>Procesos</span>
                        </a>
                    </li>
                <?php endif; ?>
                <?php if ($rol == 4) : ?>
                    <li>
                        <a href="colegios/index">
                            <i class="material-icons">home</i>
                            <span>Menu Principal</span>
                        </a>
                    </li>
                <?php endif; ?>

                <li>
                    <a href="users/logout">
                        <i class="material-icons">close</i>
                        <span>SALIR</span>
                    </a>
                </li>
                </ul>



            </div>
            <!-- #Menu -->
            <!-- Footer -->            
            <div class="legal">
                <div class="copyright">
                    &copy; 2016 - 2020 <a href="javascript:void(0);">Control De Cambios</a>.
                </div>
                <div class="version">
                    <b>Version: </b> 1.0.2
                </div>
            </div>            
            <!-- #Footer -->
        </aside>
        <!-- #END# Left Sidebar -->
        <!-- Right Sidebar -->
        <aside id="rightsidebar" class="right-sidebar">
            <ul class="nav nav-tabs tab-nav-right" role="tablist">
                <li role="presentation" class="active"><a href="#skins" data-toggle="tab">SKINS</a></li>
                <li role="presentation"><a href="#settings" data-toggle="tab">SETTINGS</a></li>
            </ul>
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active in active" id="skins">
                    <ul class="demo-choose-skin">
                        <li data-theme="red" class="active">
                            <div class="red"></div>
                            <span>Red</span>
                        </li>
                        <li data-theme="pink">
                            <div class="pink"></div>
                            <span>Pink</span>
                        </li>
                        <li data-theme="purple">
                            <div class="purple"></div>
                            <span>Purple</span>
                        </li>
                        <li data-theme="deep-purple">
                            <div class="deep-purple"></div>
                            <span>Deep Purple</span>
                        </li>
                        <li data-theme="indigo">
                            <div class="indigo"></div>
                            <span>Indigo</span>
                        </li>
                        <li data-theme="blue">
                            <div class="blue"></div>
                            <span>Blue</span>
                        </li>
                        <li data-theme="light-blue">
                            <div class="light-blue"></div>
                            <span>Light Blue</span>
                        </li>
                        <li data-theme="cyan">
                            <div class="cyan"></div>
                            <span>Cyan</span>
                        </li>
                        <li data-theme="teal">
                            <div class="teal"></div>
                            <span>Teal</span>
                        </li>
                        <li data-theme="green">
                            <div class="green"></div>
                            <span>Green</span>
                        </li>
                        <li data-theme="light-green">
                            <div class="light-green"></div>
                            <span>Light Green</span>
                        </li>
                        <li data-theme="lime">
                            <div class="lime"></div>
                            <span>Lime</span>
                        </li>
                        <li data-theme="yellow">
                            <div class="yellow"></div>
                            <span>Yellow</span>
                        </li>
                        <li data-theme="amber">
                            <div class="amber"></div>
                            <span>Amber</span>
                        </li>
                        <li data-theme="orange">
                            <div class="orange"></div>
                            <span>Orange</span>
                        </li>
                        <li data-theme="deep-orange">
                            <div class="deep-orange"></div>
                            <span>Deep Orange</span>
                        </li>
                        <li data-theme="brown">
                            <div class="brown"></div>
                            <span>Brown</span>
                        </li>
                        <li data-theme="grey">
                            <div class="grey"></div>
                            <span>Grey</span>
                        </li>
                        <li data-theme="blue-grey">
                            <div class="blue-grey"></div>
                            <span>Blue Grey</span>
                        </li>
                        <li data-theme="black">
                            <div class="black"></div>
                            <span>Black</span>
                        </li>
                    </ul>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="settings">
                    <div class="demo-settings">
                        <p>GENERAL SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Report Panel Usage</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                            <li>
                                <span>Email Redirect</span>
                                <div class="switch">
                                    <label><input type="checkbox"><span class="lever"></span></label>
                                </div>
                            </li>
                        </ul>
                        <p>SYSTEM SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Notifications</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                            <li>
                                <span>Auto Updates</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                        </ul>
                        <p>ACCOUNT SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Offline</span>
                                <div class="switch">
                                    <label><input type="checkbox"><span class="lever"></span></label>
                                </div>
                            </li>
                            <li>
                                <span>Location Permission</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </aside>
        <!-- #END# Right Sidebar -->
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>DASHBOARD</h2>
            </div>
