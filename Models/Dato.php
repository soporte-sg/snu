<?php


class Dato
{
    private $pdo;
    public $id;
    public $indicador_id;
    public $meta_id;
    public $fecha_aplicacion;

    public $expresion;

    public $resultado;


    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }


    public function Add(Dato $data)
    {
        try {
            $stm = "INSERT INTO datos(indicador_id, meta_id, fecha_aplicacion, expresion, resultado  )
            VALUES(?, ?, ?, ?,?)";
            $this->pdo->prepare($stm)->execute(array(
                $data->indicador_id,
                $data->meta_id,
                $data->fecha_aplicacion,
                $data->expresion,                                
                $data->resultado,
            ));
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Update(Dato $data)
    {
        try {
            $sql = "UPDATE datos SET indicador_id='$data->indicador_id', meta='$data->meta_id', fecha_aplicacion='$data->fecha_aplicacion',
            expresion='$data->expresion', resultado='$data->resultado'  WHERE id = $data->id";
          $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function GetDato($id)
    {
        # code...
    }
    public function GetDatos($indicador_id)
    {
        try {
            //code...
            $stm = $this->pdo->prepare("SELECT datos.* , metas.id as meta_id, metas.*
            FROM  datos, metas
            WHERE datos.indicador_id=$indicador_id 
            AND metas.id=datos.meta_id");
            $stm->execute();            
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            //throw $th;
            die($e->getMessage()
        );
        }
    }
}
