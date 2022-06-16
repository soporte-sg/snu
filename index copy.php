<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once 'Models/database.php';
session_start();
if (!$_SESSION['log']) {

    echo 'no hay session iniciada';
    header("Location:View/Seguridad/login.php");
    die();

}else{
    echo 'session iniciada';    
    //Todo esta lógica hara el papel de un FrontController
if (!isset($_REQUEST['c'])) {
    
    header("Location:?c=seguridad&a=logon");

} else {
    // Obtenemos el controlador que queremos cargar
    $controller = strtolower($_REQUEST['c']);
    $accion = isset($_REQUEST['a']) ? $_REQUEST['a'] : 'Index';
    // Instanciamos el controlador
    require_once "Controllers/$controller.controller.php";
    $controller = ucwords($controller). 'Controller';
    $controller = new $controller;
    // Llama la accion
    call_user_func(array($controller, $accion));
}
}
