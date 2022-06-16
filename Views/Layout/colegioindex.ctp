<?php
      $user= AuthComponent::user('nombres');
      $rol=  AuthComponent::user('role_id');
      $estado=  AuthComponent::user('activo');
      $id=  AuthComponent::user('id');
      //$estado = $this->Session->read('datos_usuario');
      $datos = $this->requestAction('Colegios/datosColegio'); 
      $path = APP_WWW."plugins/";
      $path2 = APP_WWW."css/";
      $path3 = APP_WWW."js/";
      if($estado == '1'){
      ?>
           <script>
             alert('No tienes permiso para acceder al app usuario inactivo, por favor comunicate con el administrador');
              window.location.replace("https://api.calidadsg.com/documental/users/logout");
          </script>
          
  <?php }
?>
<!DOCTYPE html>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=gb18030">
    
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php
        echo $this->Html->meta('favicon.ico', '/favicon.ico', array ('type' => 'icon'));
    ?>
    <title>Bienvenido a Control De Cambios</title>
    <!-- Favicon-->
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
    <!-- Bootstrap Core Css -->
    <link href=<?php echo $path."bootstrap/css/bootstrap.css"; ?> rel="stylesheet">
    <!-- Waves Effect Css -->
    <link href=<?php echo $path."node-waves/waves.css"; ?> rel="stylesheet">
    <!-- Animation Css -->
    <link href=<?php echo $path."animate-css/animate.css"; ?> rel="stylesheet">
    <!-- Morris Chart Css-->
    <link href=<?php echo $path."morrisjs/morris.css"; ?> rel="stylesheet">
    <!-- Custom Css -->
    <link href=<?php echo $path2."styles.css"; ?> rel="stylesheet">
    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href=<?php echo $path2."themes/all-themes.css"; ?> rel="stylesheet">
    <!-- Bootstrap Tagsinput Css -->
    <link href=<?php echo $path."bootstrap-tagsinput/bootstrap-tagsinput.css"; ?> rel="stylesheet">
    <!-- Bootstrap Select Css -->
    <link href=<?php echo $path."bootstrap-select/css/bootstrap-select.css"; ?> rel="stylesheet">
    <!-- Multi Select Css -->
    <link href=<?php echo $path."multi-select/css/multi-select.css"; ?> rel="stylesheet">
    
    <link href=<?php echo $path."jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css"; ?> rel="stylesheet">
    <!-- Sweet Alert Css -->
    <link href=<?php echo $path2."filter.css"; ?> rel="stylesheet">
    <link href=<?php echo $path."sweetalert/sweetalert.css"; ?> rel="stylesheet">
   
</head>

<body class="theme-red">
        <!-- Top Bar -->
    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="javascript:void(0);" class="bars"></a>
               <a class="navbar-brand" href="">FIRMA CALIDADSG</a>
              
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    
                    <!-- #END# Tasks -->
                    <li class="pull-right">  <a href="<?php echo APP_WWW . 'users/edit/'.$id.'/'.$rol ?>" class="js-right-sidebar btn btn-success" title="Perfil de Usuario"><i class="material-icons">supervised_user_circle</i><?php echo strtoupper($user)?></a></li>
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
                <div style="margin-left:50px ">
                    <img src="https://api.calidadsg.com/documental/img/uploads/colegio/filename/LOGO_FIRMA.png" width ="90%"  height = "90%">
                </div>
              
            </div>
            <!-- #User Info -->
            <!-- Menu -->
            <div class="menu" style="font-size: 5px !important;">
                <ul class="list" >
                    <li class="header">Menú de Navegacion</li>
                    
                    <?php if($rol == 4):?>
                    <li>
                        <a href="<?php echo APP_WWW . "colegios/index"; ?>">
                            <i class="material-icons">account_circle</i>
                            <span>Inicio</span>
                        </a>
                    </li>
                    <li>
                        <a href="<?php echo APP_WWW . "colegios/administracion"; ?>">
                            <i class="material-icons">account_circle</i>
                            <span>Administrar Clientes</span>
                        </a>
                    </li>
                    <li>
                        <a href="<?php echo APP_WWW . "squemas/add"; ?>">
                            <i class="material-icons">account_circle</i>
                            <span>Registrar Bases de Datos </span>
                        </a>
                    </li>
                    <li>
                        <a href="<?php echo APP_WWW . "users/indexadmin"; ?>">
                            <i class="material-icons">account_circle</i>
                            <span>Administrar Usuarios</span>
                        </a>
                    </li>
                     <?php endif;?>
                     <li>
                        <a href="<?php echo APP_WWW . 'users/logout'?>">
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
                    <b>Version: </b> 1.0.1
                </div>
            </div>
            <!-- #Footer -->
        </aside>
        <!-- #END# Left Sidebar -->
        
    </section>
    <section class="content">
        
            <div class="contents small" style="overflow-x: hidden;">
            <?php echo $this->Session->flash(); ?>
                
                    <?php echo $this->fetch('content'); ?>
                
            </div>
             
       
    </section>

<?php 
//phpinfo();

  echo $this->Html->script("jquery.min");
//echo $this->Html->script("jquery"); 
//echo $this->Html->script("default"); 

?>
<!-- Bootstrap Core Js -->
<script src=<?php echo $path."bootstrap/js/bootstrap.js"; ?>></script>

<!-- Bootstrap Material Datetime Picker Plugin Js -->
<!--{!!Html::script('plugins/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js')!!}-->

<!-- Select Plugin Js -->
<script src=<?php echo $path."bootstrap-select/js/bootstrap-select.js"; ?>></script>
<!-- Slimscroll Plugin Js -->
<script src=<?php echo $path."jquery-slimscroll/jquery.slimscroll.js"; ?>></script>
<!-- Waves Effect Plugin Js -->
<script src=<?php echo $path."node-waves/waves.js"; ?>></script>
<!-- Jquery DataTable Plugin Js -->
<script src="<?php echo $path."jquery-datatable/jquery.dataTables.js"; ?>"></script>
<script src="<?php echo $path."jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"; ?>"></script>
<!-- Jquery Validation Plugin Css -->
<script src=<?php echo $path."jquery-validation/jquery.validate.js"; ?>></script>
<!-- JQuery Steps Plugin Js -->
<script src=<?php echo $path."jquery-steps/jquery.steps.js"; ?>></script>

<!-- Bootstrap Tags Input Plugin Js -->
<script src=<?php echo $path."bootstrap-tagsinput/bootstrap-tagsinput.js"; ?>></script>

<?php
    echo $this->Html->script("pages/forms/form-wizard");
?>
<!-- Morris Plugin Js -->
<script src=<?php echo $path."raphael/raphael.min.js"; ?>></script>
<script src=<?php echo $path."morrisjs/morris.js"; ?>></script>

<!-- Sparkline Chart Plugin Js -->
<script src=<?php echo $path."jquery-sparkline/jquery.sparkline.js"; ?>></script>

<?php
//  Custom Js 
echo $this->Html->script('filter.js');
echo $this->Html->script('admin.js');
echo $this->Html->script('pages/tables/jquery-datatable.js');
echo $this->Html->script('pages/index.js');
echo $this->Html->script('pages/forms/form-validation.js');
echo $this->Html->script('pages/forms/advanced-form-elements.js');
echo $this->Html->script('pages/ui/modals.js');

// Demo Js 
echo $this->Html->script('demo.js');
echo $this->Html->css('animate.css');

?>

<!-- Jquery DataTable Plugin Js -->
    <script src=<?php echo $path."jquery-datatable/jquery.dataTables.js";?>></script>
    <script src=<?php echo $path."jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js";?>></script>
    <script src=<?php echo $path."jquery-datatable/extensions/export/dataTables.buttons.min.js";?>></script>
    <script src=<?php echo $path."jquery-datatable/extensions/export/buttons.flash.min.js";?>></script>
    <script src=<?php echo $path."jquery-datatable/extensions/export/jszip.min.js";?>></script>
    <script src=<?php echo $path."jquery-datatable/extensions/export/pdfmake.min.js";?>></script>
    <script src=<?php echo $path."jquery-datatable/extensions/export/vfs_fonts.js";?>></script>
    <script src=<?php echo $path."jquery-datatable/extensions/export/buttons.html5.min.js";?>></script>
    <script src=<?php echo $path."jquery-datatable/extensions/export/buttons.print.min.js";?>></script>
</body>
</html>