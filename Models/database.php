<?php
class Database
{ // Validamos que previamente exista la variable de la sesión 

    public static function StartUp()
    {
        @session_start();

        $host = 'localhost';
        if (!isset($_SESSION['squema'])) {
            $dbname = 'normalizacion_snu';
        } else {
            $dbname = $_SESSION['squema'];
        }
        $username = 'normalizacion_snu';
        $password = '?dXe0dmFlMcG';
        try {
            $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $pdo;
            echo "Connected to $dbname at $host successfully.";
        } catch (PDOException $pe) {
            session_destroy();
             header("Location: /snu ");
             die("Could not connect to the database $dbname :" . $pe->getMessage());          


        }
    }


    public static function StartUp01(){
          
        try {
            $host = 'localhost';
            $dbname = 'normalizacion_snu';            
            $username = 'normalizacion_snu';
            $password = '?dXe0dmFlMcG';

            $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $pdo;
            echo "Connected to $dbname at $host successfully.";
        } catch (PDOException $pe) {
            die("Could not connect to the database $dbname :" . $pe->getMessage());
            session_reset();
            header("Location: /snu ");
            session_destroy();
        }

    }
}
