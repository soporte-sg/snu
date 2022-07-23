<?php
class Database
{ // Validamos que previamente exista la variable de la sesión 

    public static function StartUp()
    {
        @session_start();

        $host = 'localhost';
        if (!isset($_SESSION['squema'])) {
            $dbname = 'snu';
        } else {
            $dbname = $_SESSION['squema'];
        }
        $username = 'root';
        $password = '';
        try {
            $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $pdo;
            echo "Connected to $dbname at $host successfully.";
        } catch (PDOException $pe) {
            die("Could not connect to the database $dbname :" . $pe->getMessage());
            session_reset();
            session_destroy();
        }
    }


    public static function StartUp01(){
          
        try {
            $host = 'localhost';
            $dbname = 'snu';            
            $username = 'root';
            $password = '';

            $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $pdo;
            echo "Connected to $dbname at $host successfully.";
        } catch (PDOException $pe) {
            die("Could not connect to the database $dbname :" . $pe->getMessage());
            session_reset();
            session_destroy();
        }

    }
}
