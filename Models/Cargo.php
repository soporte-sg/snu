<?php


class Cargo
{

    private $pdo;
    public $id;
    public $cargo;
    public $proceso_id;
    public $cliente_id;



    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp01();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function GetCargo($proceso_id){
     $cliente_id=   $_SESSION['datos_cliente']->id;
        try {
            $result = array();
            $stm = $this->pdo->prepare(" SELECT cargos.id,  cargos.cargo, cargos.proceso_id, cargos.cliente_id,  usuarios.nombres, usuarios.apellidos 
            FROM cargos, usuarios 
            WHERE cargos.id=usuarios.cargo_id
            AND cargos.proceso_id='$proceso_id' 
            AND cargos.cliente_id='$cliente_id'");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }

    }
    public function CargoIndex(){
        $cliente_id = $_SESSION['datos_cliente']->id;
           try {
               $result = array();
               $stm = $this->pdo->prepare(" SELECT cargos.id,  cargos.cargo, cargos.proceso_id, cargos.cliente_id
               FROM cargos 
               WHERE               
               cargos.cliente_id='$cliente_id'");
               $stm->execute();
               return $stm->fetchAll(PDO::FETCH_OBJ);
           } catch (Exception $e) {
               die($e->getMessage());
           }
   
       }


}

/*SELECT *
            FROM  cargos 
            WHERE  */