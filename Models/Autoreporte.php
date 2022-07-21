<?php

class Autoreporte 
{
    private $pdo;    
    public $proceso;
    public $cargo_id;
    public $TbCondiciones_id;
    public $descEvento;
    public $lugarEvento;
    public $estado;
    public $fechaRegistro;
    public $fechaValidacion;
    public $respuesta;
    public $usuario;
    public $observacion_1;
    public $observacion;
    public $fechaRespuesta;
    public $num_accion_corr;

    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }


    public function Index()
     {
             try {
                $result = array();
                $stm = $this->pdo->prepare("SELECT * FROM  usuarios ");
                $stm->execute();
                return $stm->fetchAll(PDO::FETCH_OBJ);
            } catch (Exception $e) {
                die($e->getMessage());
            }
     }


    public function Categoriaevento(){
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT * FROM  categoriaeventos ");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

     public function Add()
     {
             try {
                
            } catch (Exception $e) {
                die($e->getMessage());
            }
     }
     
     public function Edit()
     {
             try {
                
            } catch (Exception $e) {
                die($e->getMessage());
            }
     }


     public function Delete()
     {
             try {
                
            } catch (Exception $e) {
                die($e->getMessage());
            }
     }
     

    }

