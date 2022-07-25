<?php 

class Accion
{
 private $pdo;
 public $id;
public $dato;
public $analisis;
public $accion;
public $f_ejecucion;
public $cargo_id;

    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Add(Accion $data)
    {
        try {
            $stm = "INSERT INTO accions(dato_id, analisis, accion, f_ejecucion, cargo_id  )
            VALUES(?, ?, ?, ?, ?)";
            $this->pdo->prepare($stm)->execute(array(
                $data->dato_id,
                $data->analisis,
                $data->accion,
                $data->f_ejecucion,                                
                $data->cargo_id,
            ));
          
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Update(Accion $data)
    {
        # code...
    }

    public function GetPlanAccion()
    {
       try {
        //code...
       } catch (Exception $e) {
        die($e->getMessage());
       }
    }

    public function GetPlanAccions()
    {
        try {
            //code...
           } catch (Exception $e) {
            die($e->getMessage());
           }
    }


    public function GetAccionInd($indicador_id)
    {
        try {
            //code...
            $stm = $this->pdo->prepare("SELECT accions.* , datos.id as dato_id
            FROM  datos, accions
            WHERE datos.indicador_id=$indicador_id 
            AND accions.dato_id=datos.id");
            $stm->execute();            
            return $stm->fetchAll(PDO::FETCH_OBJ);
           } catch (Exception $e) {
            die($e->getMessage());
           }
    }
}