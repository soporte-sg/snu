<?php
require_once 'App.php';

class Cliente
{
    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }


    public function getCliente()
    {

        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT clientes.*, squemas.* FROM  clientes, squemas 
            WHERE clientes.id=squemas.cliente_id
                               ORDER BY clientes.id ");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (\Throwable $th) {
        }
    }
}
