
<?php
class Pqrsf
{
	private $pdo;
	
    public $id;
    public $url;
    public $nombres;
    public $apellidos;
    public $tipo_peticion;
    public $identificacion;
    public $correo;
    public $n_contacto;
    public $descripcion;
    public $fecha_registro;
    public $estado;
    public $radicado;


    
    public function __CONSTRUCT()
	{
		try
		{
			$this->pdo = Database::StartUp();     
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}
	public function Imagen($id){
		try
		{
			

			$stm = $this->pdo->prepare("SELECT filename, dir FROM colegios WHERE id= $id");
			$stm->execute();

			return $stm->fetch(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function Listar()
	{
		try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT * FROM pqrs");
			$stm->execute();

			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}

	public function Obtener($id)
	{
		try 
		{
			$stm = $this->pdo
			          ->prepare("SELECT * FROM pqrs WHERE id = ?");
			          

			$stm->execute(array($id));
			return $stm->fetch(PDO::FETCH_OBJ);
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}

	public function Eliminar($id)
	{
		try 
		{
			$stm = $this->pdo->prepare("DELETE FROM pqrs WHERE id = ?");			          

			$stm->execute(array($id));
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}

	public function Actualizar($data)
	{
	    
	    
	                 $id=$data->id;
	                 $nombre = $data->nombre; 
                     $apellido =  $data->apellido;
                     $identificacion = $data->identificacion;
                     $direccion =  $data->direccion;
                     $celular =  $data->celular;
                     $telefono_fijo =  $data->telefono_fijo;
                     $email =  $data->email;
                     $n_empresa =  $data->n_empresa;
                     $lugar_hecho =  $data->lugar_hecho;
                     $dirigido =  $data->dirigido;
                     $tipopqrs =  $data->tipopqrs; 
                     $f_registro =  $data->f_registro;
                     $descripcion =  $data->descripcion;
                     $f_respuesta = $data->f_respuesta; 
                     $respuesta =  $data->respuesta; 
                     $estado =  $data->estado;
                     $usuario =  $data->usuario;
	    
	    
	   
		try 
		{
			$sql = "UPDATE pqrs SET f_respuesta='$f_respuesta', respuesta='$respuesta', estado='$estado',usuario='$usuario' WHERE id = $id";
            $this->pdo->prepare($sql)->execute();
			
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}

	public function Registrar(Pqrs $data)
	{
	   // print_r($data);
	   // exit();
		try 
		{
		$sql = "INSERT INTO pqrs (url, tipo_peticion,nombres,apellidos,identificacion,email,n_contacto,descripcion,fecha_registro,estado,radicado,empresa) 
		        VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";

		$this->pdo->prepare($sql)
		     ->execute( 
		         
				array(  $data->url,
				        $data->tipo_peticion,
                        $data->nombres, 
                        $data->apellidos,
                        $data->identificacion,
                        $data->correo, 
                        $data->n_contacto,
                        $data->descripcion, 
                        $data->fecha_registro,
                        $data->estado, 
                        $data->radicado,
                        $data->empresa
                        
                        
                )
			);
		   
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}
	

	public function Max()
	{
		try 
		{
			$stm = $this->pdo->prepare("SELECT MAX(id) as l_id  FROM pqrs ");
			          
            $stm->execute();
			return $stm->fetch(PDO::FETCH_OBJ);
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}
	
	
	
	
	
}