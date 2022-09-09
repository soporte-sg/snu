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
			$this->pdo = Database::StartUp();
		} catch (Exception $e) {
			die($e->getMessage());
		}
	}

	public function GetCargo($proceso_id)
	{
	    echo $proceso_id;
		echo $cliente =  $_SESSION['datos_cliente']->id;
		try {
			$result = array();
			$stm = $this->pdo->prepare(" SELECT cargos.id, cargos.cargo, cargos.proceso_id,
			 normalizacion_snu.usuarios.nombres, normalizacion_snu.usuarios.apellidos,
			 procesos.*
            FROM normalizacion_snu.usuarios, procesos, cargos
           Where
              normalizacion_snu.usuarios.cargo_id = cargos.id            
            AND procesos.Iniciales='$proceso_id' 
            AND procesos.id=cargos.proceso_id            
            AND normalizacion_snu.usuarios.cliente_id=$cliente
            ");
			$stm->execute();
			return $stm->fetchAll(PDO::FETCH_OBJ);
		} catch (Exception $e) {
			die($e->getMessage());
		}
	}

	public function GetCargos($cargo_id)
	{

		try {
			$result = array();
			$stm = $this->pdo->prepare(" SELECT cargos.id,  cargos.cargo, cargos.proceso_id   
               FROM cargos  
               WHERE cargos.id = $cargo_id");
			$stm->execute();
			return $stm->fetch(PDO::FETCH_OBJ);
		} catch (Exception $e) {
			die($e->getMessage());
		}
	}
	public function SetCargos()
	{

		try {
			$result = array();
			$stm = $this->pdo->prepare(" SELECT cargos.id,  cargos.cargo, cargos.proceso_id   
               FROM cargos ");
			$stm->execute();
			return $stm->fetchAll(PDO::FETCH_OBJ);
		} catch (Exception $e) {
			die($e->getMessage());
		}
	}

	public function CargoIndex()
	{	
	    
		$cliente_id = $_SESSION['datos_cliente']->id;

		try {
			$result = array();
			$stm = $this->pdo->prepare(" SELECT cargos.id,  cargos.cargo, cargos.proceso_id FROM cargos");
			$stm->execute();
			return $stm->fetchAll(PDO::FETCH_OBJ);
		} catch (Exception $e) {
			die($e->getMessage());
		}
	}

	public function IndexUsuarios($cliente_id)
	{
		try {
			$stm = $this->pdo->prepare("SELECT normalizacion_snu.usuarios.*, normalizacion_snu.rols.rol, normalizacion_snu.clientes.nombre AS cliente
            FROM  normalizacion_snu.usuarios
             LEFT JOIN normalizacion_snu.clientes ON normalizacion_snu.clientes.id = normalizacion_snu.usuarios.cliente_id
             JOIN normalizacion_snu.rols ON normalizacion_snu.usuarios.rol_id=normalizacion_snu.rols.id
             AND normalizacion_snu.clientes.id=$cliente_id");
			$stm->execute();
			return $stm->fetchAll(PDO::FETCH_OBJ);
		} catch (Exception $e) {
			die($e->getMessage());
		}
	}

	public function Add(Cargo $data)
	{
		try {

			$stm = "INSERT INTO cargos (cliente_id, codigo, cargo, proceso_id )
            VALUES(?,?,?,?)";
			$this->pdo->prepare($stm)->execute(array(
				$data->cliente_id,
				$data->codigo = 0,
				$data->cargo,
				$data->proceso_id,
			));
			$id = $this->pdo->lastInsertId();
		} catch (Exception $e) {
			die($e->getMessage());
		}
	}


	public function Edit(Cargo $data)
	{
		try {
			$sql = "UPDATE cargos SET cliente_id='$data->cliente_id', cargo='$data->cargo', proceso_id='$data->proceso_id'  WHERE id = $data->id";
			$this->pdo->prepare($sql)->execute();
		} catch (Exception $e) {
			die($e->getMessage());
		}
	}
	public function Delete($id)
	{
		try {
			$sql = "DELETE FROM `cargos` WHERE  id = $id";
			$this->pdo->prepare($sql)->execute();
		} catch (Exception $e) {
			die($e->getMessage());
		}
	}
}
