<?php

class Proceso 
{
    private $pdo;
    private $id;
    private $Iniciales;
    private $NombreProceso;
    private $tipo;
    private $cod_int;

    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

     public function getProceso()
     {
             try {
                $result = array();
                $stm = $this->pdo->prepare("SELECT * FROM  procesos ");
                $stm->execute();
                return $stm->fetchAll(PDO::FETCH_OBJ);
            } catch (Exception $e) {
                die($e->getMessage());
            }
     }

     public function Index()
    {
        try {
            $stm = $this->pdo->prepare("SELECT * FROM rols");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

     

    }

