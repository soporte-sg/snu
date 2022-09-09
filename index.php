<?php
date_default_timezone_set('America/Bogota');
//mostrar errores
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
//mostrar errores
if (isset($_SESSION['start']) && (time() - $_SESSION['start'] > 1800)) {
  session_unset();
  session_destroy();
  echo "<script type='text/javascript'>  
            alert('LA APLICACION SE CERRARA POR INACTIVIDAD');
            window.location.href = '?c=seguridad&a=Logout';
          </script>";
}

require_once 'Models/database.php';
require_once 'Models/Estadistica.php';
$data = new Estadistica();
//$parameter=$_REQUEST['c'];
if(isset($_SESSION['user'])):
$data->Est();
$data->url = $_SERVER['PHP_SELF'];
$data->url = $_SERVER['HTTP_REFERER'];
$data->navegador = $_SERVER['HTTP_USER_AGENT'];
$data->fecha_hora = date("Y-m-d h:i:sa");
$data->ip = $data->getUserIpAddress();
$data->usuario = $_SESSION['user']->FullName;
$datas = $data->Add($data);
endif;
$controller = 'Seguridad';
// Todo esta lógica hara el papel de un FrontController
if (!isset($_REQUEST['c'])) {
  require_once "Controllers/$controller.Controller.php";
  $controller = ucwords($controller) . "Controller";
  $controller = new $controller;
  $controller->Index();
} else {
  // Obtenemos el controlador que queremos cargar
  $controller = strtolower($_REQUEST['c']);
  $accion = isset($_REQUEST['a']) ? $_REQUEST['a'] : 'Index';
  // Instanciamos el controlador
  require_once "Controllers/$controller.Controller.php";
  $controller = ucwords($controller) . "Controller";
  $controller = new $controller;
  // Llama la accion


  call_user_func(array($controller, $accion));
}
