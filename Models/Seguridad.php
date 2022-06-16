<?php
require_once 'App.php';

class Seguridad
{
    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function getUser($user, $pass)
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT * FROM  usuarios  WHERE  username='$user' AND  password='$pass' AND estado='1'");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Identificar($u, $c)
    {

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            try {
                $result = array();
                $stm = $this->pdo->prepare("SELECT clientes.nombre as cliente, rols.rol, squemas.squema,  CONCAT(usuarios.nombres,' ',usuarios.apellidos) as FullName
                                            FROM  usuarios  
                                            LEFT JOIN clientes ON usuarios.cliente_id = clientes.id 
                                            LEFT JOIN rols ON usuarios.rol_id = rols.id 
                                            LEFT JOIN squemas ON usuarios.squema_id = squemas.id 
                                            WHERE  username='$u' 
                                            AND  password='$c' 
                                            AND estado='1'");
                $stm->execute();
                return $stm->fetch(PDO::FETCH_OBJ);
            } catch (Exception $e) {
                die($e->getMessage());
            }
        } else {
        }
    }
}
