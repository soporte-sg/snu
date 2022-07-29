<?php
require_once 'App.php';

class Cliente
{

    private $pdo;
    public $id;
    public $nombre;
    public $telefono;
    public $correos;
    public $direccion;
    public $salario;
    public $matriz;
    public $fechainicio;
    public $rector;
    public $rect_telefono;
    public $filename;
    public $dir;


    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp01();
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
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function getCliente01()
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT clientes.id, nombre FROM  clientes ORDER BY clientes.id ");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function upCliente($id)
    {

        try {

            $stm = $this->pdo->prepare("SELECT * FROM  clientes WHERE id='$id'");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function upClienteValidar($id)
    {

        try {
            $stm = $this->pdo->prepare("SELECT clientes.*, squemas.* FROM  clientes, squemas 
            WHERE clientes.id=squemas.cliente_id AND clientes.id='$id' ");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }



    public function Registrar(Cliente $data)
    {

        try {

            $stm = "INSERT INTO clientes(nombre, direccion, telefono, correos, salario, matriz, fechainicio, rector, rect_telefono, filename,dir )
            VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            $this->pdo->prepare($stm)->execute(array(
                $data->nombre,
                $data->direccion,
                $data->telefono,
                $data->correos,
                $data->salario,
                $data->matriz,
                $data->fechainicio,
                $data->rector,
                $data->rector,
                $data->filename,
                $data->dir = 'img/uploads/colegio/filename'
            ));
            $id_cliente = $this->pdo->lastInsertId();
            
            $squema_nombre = 'documentalsg_' . $data->nombre;
            $squema = "INSERT INTO squemas(squema,cliente_id,created,modified)VALUES(?,?,?,?)";
            $this->pdo->prepare($squema)->execute(array(
                $data->squema = $squema_nombre,
                $data->cliente_id = $id_cliente,
                $data->created = date('Y-m-d'),
                $data->modified = date('Y-m-d'),
            ));
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Actualizar(Cliente $data)
    {

        try {

            $sql = "UPDATE clientes SET nombre='$data->nombre', direccion='$data->direccion', telefono='$data->telefono',
              correos='$data->correos', salario='$data->salario', matriz='$data->matriz', fechainicio='$data->fechainicio',
              rector='$data->rector'  WHERE id = $data->id";
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }


    
}
