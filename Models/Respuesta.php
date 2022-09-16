<?php

class Respuesta
{
    private $pdo;
    public $id;
    public $Iniciales;
    public $NombreProceso;
    public $tipo;
    public $cod_int;

    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

}