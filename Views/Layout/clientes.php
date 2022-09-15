<?php require_once 'Models/Estadistica.php';
$data = new Estadistica();
$entrada = $data->Get();
header('Content-type: text/html; charset=utf-8');
?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>SNU-sistema de Normalización Universal</title>
    <!-- Favicon
    <link rel="icon" href="favicon.ico" type="image/x-icon">-->
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
    <!-- Bootstrap Core Css -->
    <link href="Assets/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">
    <!-- Waves Effect Css -->
    <link href="Assets/plugins/node-waves/waves.css" rel="stylesheet" />
    <!-- Animation Css -->
    <link href="Assets/plugins/animate-css/animate.css" rel="stylesheet" />
    <!-- JQuery DataTable Css -->
    <link rel="stylesheet" href="Assests/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="Assests/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="Assests/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
    <!-- Custom Css -->
    <link href="Assets/css/style.css" rel="stylesheet">
    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="Assets/css/themes/all-themes.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <!--alertas-->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!--alertas-->
    <script>
        $(document).ready(function() {
            function disableBack() {
                window.history.forward()
            }
            window.onload = disableBack();
            window.onpageshow = function(e) {
                if (e.persisted)
                    disableBack();
            }
        });
    </script>

</head>
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-C1M8CKX4E1"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());
    gtag('config', 'G-C1M8CKX4E1');
</script>

<body class="theme">
    <!-- Page Loader  :)-->
    <!-- <div class="page-loader-wrapper">
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
        </div>
    </div> -->
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
                    <!-- Call Search 
                    <li><img src="Assets/img/uploads/colegio/<?php echo $_SESSION['datos_cliente']->filename ?>" alt="User" class="imgbrand" /></li>
                     #END# Call Search -->
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <!-- Call Search -->
                    <a href="?c=seguridad&a=Logout" class="navbar-brand btn btn-circle " href="index.html"><i class="glyphicon glyphicon-off"></i></a>
                    <!-- #END# Call Search -->
                </ul>
                <!--  -->
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
                    <!-- <img src="images/user.png" width="48" height="48" alt="User" />-->
                </div>
                <div class="info-container">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo ucwords($_SESSION['user']->FullName) ?></div>
                    <!-- <div class="email">john.doe@example.com</div> -->
                </div>
            </div>
            <!-- #User Info -->
            <!-- Menu -->
            <div class="menu" style="font-size: 5px !important;">
                <ul class="list">
                    <li class="header">Menú de Navegacion</li>
                    <li>
                        <a href="?c=clientes&a=index">
                            <i class="material-icons">account_circle</i>
                            <span>Inicio</span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="?c=servicios&a=index">
                            <i class="material-icons">view_carousel</i>
                            <span>Universos</span>
                        </a>
                    </li>
                    <li>
                        <a href="?c=roles&a=index">
                            <i class="material-icons">contacts</i>
                            <span>Administrar Roles</span>
                        </a>
                    </li>
                    <li>
                        <a href="?c=permisos&a=index">
                            <i class="material-icons">phonelink_lock</i>
                            <span>Administrar Permisos</span>
                        </a>
                    </li>
                    <li>
                        <a href="?c=usuarios&a=indexadmin">
                            <i class="material-icons">account_circle</i>
                            <span>Administrar Usuarios</span>
                        </a>
                    </li>
                    <li>
                        <a href="?c=estadisticas&a=index">
                            <i class="material-icons">dvr</i>
                            <span>Registro Eventos</span>
                        </a>
                    </li>                  

                    <li>
                        <a href="?c=seguridad&a=logout">
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

    </section>
    <section class="content">
        <div class="container-fluid">