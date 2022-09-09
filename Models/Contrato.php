<?php
class Contrato
{
   private $pdo;
    public $id;
    public $usuario_id;
    public $cargo_id;
    public $duracion;
    public $tipo_contrato;
    public $inicio_contrato;
    public $valor;
    public $registro;
    public $cliente_id;
    public $aux_trans;
    public $obra_id;
	public $sexo;
	public $grupo;
	public $tresidencia;
    
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

    public function Cliente()
	{
		try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT * FROM clientes");
			$stm->execute();

			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}
	public function Historico($user_id)
	{
		try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT usuario_cargo.*,cargos.nombre AS cargo,contratos.nombre as tcontrato,clientes.razonsocial,obras.nombre as obras
			                            FROM  usuario_cargo,cargos,contratos,clientes,obras
			                            WHERE
			                                usuario_cargo.usuario_id=$user_id
			                            AND usuario_cargo.cargo_id=cargos.id
			                            AND usuario_cargo.tipo_contrato=contratos.id
			                            AND usuario_cargo.cliente_id=clientes.id
			                            AND usuario_cargo.obra_id=obras.id
			                            ");
			$stm->execute();

			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}
    public function Cargo()
	{
		try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT * FROM cargos");
			$stm->execute();

			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}
    
    public function TipoContrato()
	{
		try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT * FROM contratos");
			$stm->execute();

			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}
	public function Obra()
	{
		try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT * FROM obras");
			$stm->execute();

			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}

    public function ByCc($id)
	{
		try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT personal.id,Nombre,Apellido,cedula,estado,FechaRegistro,rol_id, stados.status 
			FROM personal,stados 
			WHERE cedula like'%$id%' 
			AND stados.id=personal.rol_id 
			ORDER BY cedula");
			$stm->execute();
			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}
    public function ByEst($id)
	{
		try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT personal.id,Nombre,Apellido,cedula, estado, FechaRegistro,rol_id, stados.status 
			FROM personal,stados 
			WHERE rol_id ='$id' 
			AND stados.id=personal.rol_id 
			ORDER BY cedula");
			$stm->execute();
			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}
    public function ByNa($id)
	{
		try
		{
			$result = array();
			$stm = $this->pdo->prepare("SELECT personal.id,Nombre,Apellido,cedula, estado, FechaRegistro,rol_id, stados.status 
			                            FROM personal, stados 
										WHERE (Nombre like'%$id%' 
										OR Apellido like'%$id%') 
										AND stados.id=personal.rol_id 
										ORDER BY Nombre");
			$stm->execute();
			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}

   public function EstadoAsp(Persona $data)
   {
    try {
        $sql = "UPDATE personal 
		SET  rol_id='$data->rol_id'
		WHERE id = '$data->id'";
        $this->pdo->prepare($sql)->execute();
    } catch (Exception $e) {
        die($e->getMessage());
    }
}
	public function obtener_estructura_directorios($ruta){
        // Se comprueba que realmente sea la ruta de un directorio
        if (is_dir($ruta)){
            // Abre un gestor de directorios para la ruta indicada
            $gestor = opendir($ruta);
            echo "<ul>";    
            // Recorre todos los elementos del directorio
            while (($archivo = readdir($gestor)) !== false)  {                    
                $ruta_completa = $ruta . "/" . $archivo;
    
                // Se muestran todos los archivos y carpetas excepto "." y ".."
                if ($archivo != "." && $archivo != "..") {
                    // Si es un directorio se recorre recursivamente
                    if (is_dir($ruta_completa)) {
                        echo "<li>" . $archivo . "</a></li>";
                        $this->obtener_estructura_directorios($ruta_completa);
                    } else {
                        echo "<li> <a href=".$ruta_completa.">" . $archivo . "</a></li>";
                    }
                }
            }            
            // Cierra el gestor de directorios
            closedir($gestor);
            echo "</ul>";
        } else {
            echo "No es una ruta de directorio valida<br/>";
        }
    }


   	public function Historial($id)
	{
		try 
		{
			$stm = $this->pdo->prepare("SELECT persona_contratos.*,cargos.cargo,contratos.nombre as contrato 
			FROM persona_contratos, contratos, cargos 
			WHERE
			persona_contratos.tipo_contrato=contratos.id
			AND
			persona_contratos.cargo_id=cargos.id
			AND			
			 persona_id = ?");        

			$stm->execute(array($id));
			return $stm->fetchAll(PDO::FETCH_OBJ);
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}

	public function Eliminar($id)
	{
		try 
		{
			$stm = $this->pdo->prepare("DELETE FROM usuario_cargo WHERE id ='$id'");			          
         	$stm->execute();
         	
		}catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}


	public function Actualizar($data)
	{
	    
	   // print_r($data);
	    
		try 
		{             $id =$data->id;
		              $usuario_id =$data->usuario_id;
                      $cargo_id =$data->cargo_id;
                      $duracion =$data->duracion;
                      $tipo_contrato =$data->tipo_contrato;
                      $inicio_contrato =$data->inicio_contrato;
                      $valor =$data->valor;
                      $aux_trans =$data->aux_trans;
                      $registro =$data->registro;                      
                      $obra =$data->obra_id;
                
	    
	$sql = "UPDATE persona_contratos SET  cargo_id=$cargo_id, duracion='$duracion', tipo_contrato=$tipo_contrato, inicio_contrato='$inicio_contrato', valor=$valor, aux_trans=$aux_trans WHERE id = '$id'";
			                            
			                            
        $this->pdo->prepare($sql)->execute();
            
            
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}

	public function Registrar(Contrato $data)
	{
	  
		try 
		{
		$sql = "INSERT INTO persona_contratos (persona_id, cargo_id, duracion, tipo_contrato, inicio_contrato, valor, aux_trans, registro, usuario) 
		        VALUES (?,?,?,?,?,?,?,?,?)";

		$this->pdo->prepare($sql)->execute(
				array(
                        $data->usuario_id, 
                        $data->cargo_id,
                        $data->duracion,
                        $data->tipo_contrato,
                        $data->inicio_contrato,
                        $data->valor, 
                        $data->aux_trans,
                        $data->registro,                      
                        $data->usuario
                )
			);
			$sql0 = "UPDATE personal SET  rol_id='3'  WHERE id = '$data->usuario_id'";
			$this->pdo->prepare($sql0)->execute();

		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}
	
   public function GenerarContrato($id){
	   try {
		
		$stm = $this->pdo->prepare("SELECT persona_contratos.*,cargos.cargo,contratos.nombre as contrato, contratos.contenido, personal.*
			FROM persona_contratos, contratos, cargos, personal
			WHERE
			persona_contratos.tipo_contrato=contratos.id
			AND			
			persona_contratos.persona_id=personal.id
			AND			
			persona_contratos.id = ?");        

			$stm->execute(array($id));
			return $stm->fetch(PDO::FETCH_OBJ);

	   } catch (Exception $e) 
	   {
		   die($e->getMessage());
	   }
   }









	public function Novedades($id)
	{
		try 
		{
			$stm = $this->pdo->prepare("SELECT novedades.*, cargos.nombre as cargo, obras.nombre as obras,tiponovedad.novedad 
			                               FROM novedades, tiponovedad, cargos, obras
			                               WHERE usuariocargo_id = ?
			                               AND tiponovedad.id=novedades.tipo_id
			                               AND cargos.id=novedades.cargo_id
			                               AND obras.id=novedades.obra_id
			                               ");
			$stm->execute(array($id));
			return $stm->fetchAll(PDO::FETCH_OBJ);
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}
	   
		public function Contrato(){
	            
	            try{
	                $stm = $this->pdo->prepare("SELECT usuario_cargo.*,cargos.nombre as cargo,contratos.nombre as contrato_tipo,clientes.razonsocial,obras.nombre as obra
	                                            FROM 
	                                                 usuario_cargo,cargos,contratos,clientes,obras
	                                            WHERE
	                                                usuario_cargo.cargo_id=cargos.id
	                                            AND usuario_cargo.tipo_contrato=contratos.id
	                                            AND usuario_cargo.cliente_id=clientes.id
	                                            AND usuario_cargo.obra_id= obras.id
	                                            ORDER BY  usuario_cargo.usuario_id
	                                            ");
	                
	                
	                
	             $stm->execute();
		         return $stm->fetchAll(PDO::FETCH_OBJ);   
		     	
	            }catch(Exception $e){
	                
	                die($e->getMessage());
	             }
	    
	    
	}
	
	public function Usuario_con()
	{
		try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT usuarios.id,Nombre,Apellido,cedula FROM usuarios WHERE estado= 1");
			$stm->execute();

			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}
	
	
	public function Usuario_sin()
	{
		try
		{
			$result = array();
          
			$stm = $this->pdo->prepare("SELECT *
                                          FROM usuarios
                                          WHERE id NOT IN (SELECT usuario_id FROM usuario_cargo)");
			$stm->execute();

			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}
	
	
}