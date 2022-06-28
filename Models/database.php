<?php

class Database
{

    // Validamos que previamente exista la cookie de la sesión 

    public static function StartUp()
    {
        require_once 'Data.php';
        try {
            $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $pdo;
            echo "Connected to $dbname at $host successfully.";
        } catch (PDOException $pe) {
            die("Could not connect to the database $dbname :" . $pe->getMessage());
        }


        
        
    }
}
