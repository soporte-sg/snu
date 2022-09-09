<?php
//nombrar la clase
class Seleccion
{
    
    private $pdo; // atributo de la conexion a bd
    
    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
     public function Postulados()
     {
        try {
            $stm = $this->pdo->prepare("SELECT * FROM  personal where rol_id = 1 ");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
     }

}