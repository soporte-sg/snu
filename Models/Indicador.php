<?php

class Indicador
{
    private $pdo;
    public $id;
    public $proceso_id;
    public $formula_id;
    public $nombre;
    public $cargo_id;
    public $definicion;
    public $interpretacion;
    public $periodicidad;
    public $fecha_control;
    public $tipo;
    public $comparativo;
    public $valor;


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
            $stm = $this->pdo->prepare("SELECT indicadors.*, indicadors.id as i_id, modelos.*, procesos.NombreProceso
            FROM indicadors ,modelos, procesos
            WHERE indicadors.formula_id=modelos.id
            AND  indicadors.proceso_id=procesos.id ");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }


    public function Categoriaevento()
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT * FROM  categoriaeventos ");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Add(Indicador $data)
    {
        try {

            $stm = "INSERT INTO indicadors(proceso_id, formula_id,nombre,cargo_id,definicion,interpretacion,periodicidad,meta,num_meta,fecha_control, tipo)
            VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            $this->pdo->prepare($stm)->execute(array(

                $data->proceso_id,
                $data->formula_id,
                $data->nombre,
                $data->cargo_id,
                $data->definicion,
                $data->interpretacion,
                $data->periodicidad,
                $data->meta,
                $data->num_meta,
                $data->fecha_control,
                $data->tipo,
                
            ));
            $id_cliente = $this->pdo->lastInsertId();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Update(Indicador $data)
    {
        try {
            $sql = "UPDATE indicadors SET             
                            proceso_id='$data->proceso_id',
                            formula_id='$data->formula_id',
                            nombre='$data->nombre',
                            cargo_id= '$data->cargo_id',
                            definicion= '$data->definicion',
                            interpretacion= '$data->interpretacion',
                            periodicidad= '$data->periodicidad',
                            fecha_control= '$data->fecha_control',
                            tipo= '$data->tipo',
                            num_meta= '$data->num_meta',
                            meta= '$data->meta'  WHERE id = $data->id";
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function GetIndicador($id)
    {

        try {

            $stm = $this->pdo->prepare("SELECT indicadors.*,procesos.* , modelos.* 
            FROM   indicadors, procesos, modelos 
            WHERE 
            indicadors.id='$id'
            AND 
            indicadors.proceso_id= procesos.id
            AND
            indicadors.formula_id= modelos.id
            
             
            ");
            $stm->execute();

            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
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
