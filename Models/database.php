<?php
class Database
{    
     
// Validamos que previamente exista la cookie de la sesión 

    public static function StartUp()
    {  
        @session_start();
        if(!isset($_SESSION['log'])) {
            
        }else{
            $squema = $_SESSION['squema'];
            print_r($squema);
        }
        //$pdo = new PDO('mysql:host=localhost;dbname=woodensp_sgvalle;charset=utf8', 'woodensp_sgvalle', 'eAi3NOPAF,G_');
        //$pdo = new PDO('mysql:host=localhost;dbname='.$squema.';charset=utf8', 'root', '');
        $pdo = new PDO('mysql:host=localhost;dbname=snu;charset=utf8', 'root', '');
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $pdo;
       
    }
}