<?php
include("Turnos.php");

class Novedades
{
	private $pdo;
    public $id;
    public $usuario_id;
    public $tipo_id;
    public $cargo_id; 
    public $obra_id;
    public $descripcion;
    public $otro_si;
    public $fecha_novedad;
    public $fecha_registro;
   
     
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

	public function Listar()
	{
		try
		{
			$result = array();
            $stm = $this->pdo->prepare("SELECT * FROM tiponovedad");
			$stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}
	
	
	
	public function Obras()
	{
		try
		{
			$result = array();
            $stm = $this->pdo->prepare("SELECT * FROM obras ORDER BY cliente_id ");
			$stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}
	
	public function Puestos()
	{
		try
		{
			$result = array();
            $stm = $this->pdo->prepare("SELECT * FROM puestos ORDER BY obra_id ");
			$stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}
	
	
	public function Buscar($cc)
	{
		try
		{
			$result = array();
            $stm = $this->pdo->prepare("SELECT usuarios.*, usuarios.id as user ,roles.*, roles.id AS ROL_ID FROM usuarios,roles WHERE usuarios.cedula='$cc' AND  usuarios.rol_id=roles.id");
			$stm->execute();

			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}
	
	
	public function novedad($id){
	    
	    try
		{
			$result = array();
            $stm = $this->pdo->prepare("SELECT novedades.* , tiponovedad.novedad, cargos.nombre, obras.nombre as obra, usuarios.cedula
                                         FROM novedades, tiponovedad, cargos, obras, usuarios
                                         WHERE 
                                             usuarios.cedula=$id
                                         AND novedades.usuario_id=usuarios.id
                                         AND novedades.tipo_id=tiponovedad.id
                                         AND novedades.cargo_id=cargos.id
                                         AND novedades.obra_id=obras.id
                                         ORDER BY `novedades`.`fecha_novedad` DESC");
			$stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
            
            
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	    
	}
	
	
	public function Max(){
	    try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT MAX(num_orden) AS n_orden FROM ordenes");
			$stm->execute();

			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	    
	}
	
    public function Listarobras()
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
	
	
	public function Listarpuestos()
	{
		try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT * FROM puestos ");
			$stm->execute();

			return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}

public function Clientes()
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

	public function Usuario($id)
	{
	   // echo $id;
		try 
		{
		    $result = array();
			$stm = $this->pdo->prepare("SELECT * FROM usuarios WHERE cedula = '$id'");
			$stm->execute();
			return $stm->fetch(PDO::FETCH_OBJ);
			
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}

public function UsuarioCam()
	{
	   // echo $id;
		try 
		{
		    $result = array();
			$stm = $this->pdo->prepare("SELECT id,Nombre,Apellido FROM usuarios");
			$stm->execute();
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
			$stm = $this->pdo
			            ->prepare("DELETE FROM ordenes WHERE id = ?");			          

			$stm->execute(array($id));
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}

	public function Actualizar($data)
	{
	                  $id= $data->id;
	                  $num_orden=   $data->num_orden;
                      $solicitante_id=  $data->solicitante_id;
                      $servicio_id=  $data->servicio_id;
                      $obra_id=  $data->obra_id;
                      $personal_requerido=  $data->personal_requerido;
                      $fecha_inicio=  $data->fecha_inicio;
                      $duracion=  $data->duracion;
                      $fecha_terminacion=  $data->fecha_terminacion;
                      $valor_mes_puesto=  $data->valor_mes_puesto;
	try 
		{
		     
			$sql = "UPDATE ordenes SET num_orden='$num_orden' ,solicitante_id='$solicitante_id',servicio_id='$servicio_id',obra_id='$obra_id',personal_requerido='$personal_requerido',fecha_inicio='$fecha_inicio',duracion='$duracion',fecha_terminacion='$fecha_terminacion',valor_mes_puesto='$valor_mes_puesto' WHERE id ='$id'";
            $this->pdo->prepare($sql)->execute();
            
		} catch (Exception $e) 
		{
			die($e->getMessage());
			echo 'Exception -> ';
            var_dump($e->getMessage());
		}
		//exit();
	}

	public function Registrar(Novedades $data)
	{
	    
		try 
		{
	
			switch($data->tipo_id) {

                    case 1:
                    $sql = "INSERT INTO novedades (usuario_id, tipo_id, cargo_id, obra_id,usuariocargo_id , descripcion, otro_si, fecha_novedad, fecha_registro) 
		            VALUES (?,?,?,?,?,?,?,?,?)";
                    $this->pdo->prepare($sql)->execute(array(
                                    $data->usuario_id,
                                    $data->tipo_id,
                                    $data->cargo_id,
                                    $data->obra_id,
                                    $data->usuariocargo_id,
                                    $data->descripcion,
                                    $data->otro_si,
                                    $data->fecha_novedad,
                                    $data->fecha_registro
                            )
            			);        
                    
                           $sql = "INSERT INTO  usuario_cargo (usuario_id, cargo_id, duracion, valor, registro, cliente_id)
		                   VALUES (?,?,?,?,?,?)";
                           $this->pdo->prepare($sql)->execute(array(
                                        $data->usuario_id,
                                        $data->cargo_id,
                                        $data->duracion,
                                        $data->valor,
                                        $data->fecha_novedad,
                                        $data->cliente_id
                                )
                			);
                	
                    break;
                    
                    case 2:
                    break;
                    
                    case 3:
                    
                    echo '$variable es igual a 3.';
                    
                    break;
                    case 6:
                    
                               $sql = "INSERT INTO novedades (usuario_id, tipo_id, cargo_id, obra_id,usuariocargo_id , descripcion, otro_si, fecha_novedad, fecha_registro)VALUES (?,?,?,?,?,?,?,?,?)";
                                $this->pdo->prepare($sql)->execute(
                    				array(
                                            $data->usuario_id,
                                    $data->tipo_id,
                                    $data->cargo_id,
                                    $data->obra_id,
                                    $data->usuariocargo_id,
                                    $data->descripcion,
                                    $data->otro_si,
                                    $data->fecha_novedad,
                                    $data->fecha_registro
                                    )
                    			);
                    			
                    			try{
                    			$sql = "INSERT INTO usuario_estado (usuario_id, estado_id,fecha_r)VALUES (?,?,?)
                    			        ON DUPLICATE KEY UPDATE estado_id=$data->estado_id";
                                    $this->pdo->prepare($sql)->execute(
                    				array(
                                            $data->usuario_id,
                                            $data->estado_id,
                                            $data->fecha_registro
                                    )
                    			);
                    				$sql1 = "UPDATE usuarios SET estado=$data->estado_id  WHERE id =$data->usuario_id";
                    			        $this->pdo->prepare($sql1)->execute();
                    			} catch (Exception $e) 
                        		{
                        			die($e->getMessage());
                        		}
                    			
                    		echo '<script> 
                			alert("El registro de la terminacion de contrato fue realizado con exito");
                			window.location="https://sgvalle.com/usuarios/index.php?c=Novedades&a=rest&id='.$data->usuario_id.'";        
                			</script>';
                    break;
                    case 5:
                    case 4:  
                               $sql = "INSERT INTO novedades (usuario_id, tipo_id, cargo_id, obra_id,usuariocargo_id, descripcion, otro_si, fecha_novedad, fecha_registro)VALUES (?,?,?,?,?,?,?,?,?)";
                                $this->pdo->prepare($sql)->execute(
                    				array(
                                            $data->usuario_id,
                                            $data->tipo_id,
                                            $data->cargo_id,
                                            $data->obra_id,
                                            $data->usuariocargo_id,
                                            $data->descripcion,
                                            $data->otro_si,
                                            $data->fecha_novedad,
                                            $data->fecha_registro
                                    )
                    			);
                    			
                    			
                    			
                    	 try{		
                    			$sql = "INSERT INTO usuario_estado (usuario_id, estado_id,fecha_r)VALUES (?,?,?)
                    			        ON DUPLICATE KEY UPDATE estado_id=$data->estado_id";
                                $this->pdo->prepare($sql)->execute(
                    				array(
                                            $data->usuario_id,
                                            $data->estado_id,
                                            $data->fecha_registro
                                    )
                    			);
                    			
                    		    $sql1 = "UPDATE usuarios SET estado=$data->estado_id  WHERE id =$data->usuario_id";
                    			        $this->pdo->prepare($sql1)->execute();
                    	 } catch (Exception $e) 
                        		{
                        			die($e->getMessage());
                        		}	    
                    			
                    			 
                                // get details of the uploaded file
                                     $fileTmpPath = $_FILES['doc_renuncia']['tmp_name'];
                                     $fileName = $_FILES['doc_renuncia']['name'];
                                     $fileSize = $_FILES['doc_renuncia']['size'];
                                     $fileType = $_FILES['doc_renuncia']['type'];
                                     $fileNameCmps = explode(".", $fileName);
                                     $fileExtension = strtolower(end($fileNameCmps));
                                     $newFileName = 'doc_renuncia.'.$fileExtension ;
                                   
                                    $allowedfileExtensions = array('pdf');
                                    if (in_array($fileExtension, $allowedfileExtensions)) {
                                        
                                     // directory in which the uploaded file will be moved
                                    $uploadFileDir = '../usuarios/archivos/'.$data->usuario_id.'/';
                                    
                                    $dest_path = $uploadFileDir . $newFileName;
                                    if (!file_exists($uploadFileDir)) {
                                        mkdir($uploadFileDir, 0777, true);
                                    }
                                    if(move_uploaded_file($fileTmpPath, $dest_path))
                                        {
                                          $message ='El archivo se cargó correctamente.';
                                        }
                                        else
                                        {
                                             $message = 'Hubo algún error al mover el archivo al directorio de carga. Asegúrese de que el servidor web pueda escribir en el directorio de carga.';
                                        }
                                    
                                    }
                                    
                         echo '<script> 
                			alert("El registro de la terminacion de contrato fue realizado con exito'.$message.'");
                			window.location="https://sgvalle.com/usuarios/index.php?c=Novedades&a=rest&id='.$data->usuario_id.'";        
                			</script>';
                       
                        		
                   
                    
                    
                    
                    break;
                    }
			
			
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	}
	
	public function rest($user_id){
	    
	    try{
	        $result = array();
			$stm = $this->pdo->prepare("SELECT usuarios.Nombre,cedula, novedades.* 
	                    FROM usuarios, novedades
	                    WHERE 
	                        usuario_id='$user_id'
	                    AND 
	                        usuarios.id=usuario_id
	                    
                        ");
			$stm->execute();
			
		return $stm->fetchAll(PDO::FETCH_OBJ);
        
            
	        
	    }catch(Exception $e){
	        	die($e->getMessage());
	    }
	    
	} 
	
	public function Ver($novedad_id){
	  
	    try{
	       $result= array();
	       $stm = $this->pdo->prepare("SELECT * FROM novedades WHERE id=$novedad_id");
	       $stm->execute();
	       return  $stm->fetchAll(PDO::FETCH_OBJ);
	         
	    }catch(Excepion $e){
	        	die($e->getMessage());
	        
	    }
	}
	
	public function turnos($user)
	{
		try
		{
			$result = array();
            $stm = $this->pdo->prepare("SELECT turnos.*,turnos.puesto_id as id_puesto,turnos.id as turnoid,
                                               obras.id,
                                               obras.nombre as nom_obra,
                                               puestos.id,puestos.nombre as nom_puesto,
                                               ordenes.*
                                        FROM turnos, obras, puestos, ordenes
                                        WHERE 
                                            turnos.usuario_id=$user
                                        AND turnos.puesto_id=puestos.id
                                        AND turnos.orden_id=ordenes.id
                                        AND ordenes.obra_id=obras.id
                                        ");
            
            
            
            
            
            
            if($stm->execute()){
                	return $stm->fetchAll(PDO::FETCH_OBJ);
            }else{
               echo "alert('no hay nada')";
            }
			

		
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}

 public function UpdateTurno($datas,$data){
     
//print_r($datas);
  //  print_r($data);
     $_SESSION["cc"];
    //EXIT(); 
     $id=$datas->id;
     $datas->orden_id;
     $user=$datas->usuario_id;
     $puesto=$datas->puesto_id;
     $fecha= $datas->fecha;
     $jor=$datas->jornada;
     
     try 
		{
		     
			$sql = "UPDATE turnos SET usuario_id='$user' ,puesto_id='$puesto',fecha='$fecha', jornada='$jor' WHERE id ='$id'";
            $sql1 = "INSERT INTO novedades (usuario_id, tipo_id, cargo_id, obra_id, descripcion, otro_si, fecha_novedad, fecha_registro)VALUES (?,?,?,?,?,?,?,?)";
                                $this->pdo->prepare($sql1)->execute(
                    				array(
                                            $data->usuario_id,
                                            $data->tipo_id,
                                            $data->cargo_id=21,
                                            $data->obra_id,
                                            $data->descripcion,
                                            $data->otro_si,
                                            $data->fecha_novedad,
                                            $data->fecha_registro
                                            
                                            ));
            
            
            $sql2 = "INSERT INTO  usuario_cargo (usuario_id, cargo_id, duracion, valor, registro, cliente_id)
		                   VALUES (?,?,?,?,?,?)";
                           $this->pdo->prepare($sql2)->execute(array(
                                        $data->usuario_id,
                                        $data->cargo_id=0,
                                        $data->duracion,
                                        $data->valor,
                                        $data->fecha_novedad,
                                        $data->cliente_id=0
                                )
                			);
                		
            
            if($this->pdo->prepare($sql)->execute()){
                	echo '<script> 
                			alert("El cambio de turno se realizo con éxito");
                			window.location="https://sgvalle.com/novedades/?c=Novedades&a=Registro&id='.$_SESSION["cc"].'";        
                			</script>';
            }else{
                 '<script> 
                			alert("El cambio de turno no se realizo con éxito, trata de nuevo");
                			window.location="https://sgvalle.com/novedades/?c=Novedades&a=Registro&id='.$_SESSION["cc"].'";        
                			</script>';
                
            }
            
		} catch (Exception $e) 
		{
			die($e->getMessage());
			echo 'Exception -> ';
            var_dump($e->getMessage());
		}
		//exit();
     
     
     
 }
	
	
	public function Listacontrato($id){
	  
	    try 
		{
		     $result = array();
		    	$stm = $this->pdo->prepare("SELECT usuario_cargo.*,cargos.nombre as CARGO, usuario_cargo.id as usuariocargo_id,
		    	                                   usuarios.Nombre,Apellido,Correo,celular,cedula,direccion,
		    	                                   clientes.razonsocial,nit,
		    	                                   contratos.nombre as nom_c,contratos.contenido,
		    	                                   obras.nombre as OBRAS ,obras.ubicacion
		    	FROM usuario_cargo, cargos, usuarios ,clientes,contratos,obras
		    	WHERE usuario_id='$id' 
		    	AND usuario_cargo.usuario_id=usuarios.id 
		    	AND usuario_cargo.cargo_id=cargos.id
		    	AND usuario_cargo.cliente_id=clientes.id
		    	AND usuario_cargo.tipo_contrato=contratos.id
		    	AND usuario_cargo.obra_id=obras.id
		    	");
	         	$stm->execute();
                return $stm->fetchAll(PDO::FETCH_OBJ);
		
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	
	}
	
	
	public function Listacontrato01($id){
	  
	    try 
		{
		     $result = array();
		    	$stm = $this->pdo->prepare("SELECT usuario_cargo.*,cargos.nombre as CARGO, usuario_cargo.id as usuariocargo_id,
		    	                                   usuarios.Nombre,Apellido,Correo,celular,cedula,direccion,
		    	                                   clientes.razonsocial,nit,
		    	                                   contratos.nombre as nom_c,contratos.contenido,
		    	                                   obras.nombre as OBRAS ,obras.ubicacion
		    	FROM usuario_cargo, cargos, usuarios ,clientes,contratos,obras
		    	WHERE usuario_cargo.id='$id' 
		    	AND usuario_cargo.usuario_id=usuarios.id 
		    	AND usuario_cargo.cargo_id=cargos.id
		    	AND usuario_cargo.cliente_id=clientes.id
		    	AND usuario_cargo.tipo_contrato=contratos.id
		    	AND usuario_cargo.obra_id=obras.id
		    	");
	         	$stm->execute();
                return $stm->fetchAll(PDO::FETCH_OBJ);
		
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	
	}
	
	
	
	
	
	
	
	
	
	
	public function Novedad_($id){
	      
	      try{
	        $result = array();
            $stm = $this->pdo->prepare("SELECT novedades.id , tiponovedad.novedad FROM novedades, tiponovedad WHERE usuariocargo_id=$id AND novedades.tipo_id=tiponovedad.id ");
           if($stm->execute()){
                	return $stm->fetchAll(PDO::FETCH_OBJ);
            }else{
               echo "alert('no hay nada')";
            }
	      }catch(Exception $e){die($e->getMessage());}
	    
	}
	
	
	
	public function ListarDatos($id){
	    
	    try
		{
			$result = array();
            $stm = $this->pdo->prepare("SELECT novedades.* , tiponovedad.novedad, cargos.nombre, obras.nombre as obra, usuarios.cedula
                                         FROM novedades, tiponovedad, cargos, obras, usuarios
                                         WHERE 
                                             novedades.id=$id
                                         AND novedades.usuario_id=usuarios.id
                                         AND novedades.tipo_id=tiponovedad.id
                                         AND novedades.cargo_id=cargos.id
                                         AND novedades.obra_id=obras.id
                                         ORDER BY `novedades`.`fecha_novedad` DESC");
			$stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
            
            
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	    
	}
	
	
	public function TipoNovedad(){
	    
	     try{
	         
	         $stm = $this->pdo->prepare("SELECT * FROM tiponovedad");
	         $stm->execute();
             return $stm->fetchAll(PDO::FETCH_OBJ);
	         
	     }catch(Exception $e)
		{
			die($e->getMessage());
		}
	}
	
	public function Cargos()
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
	

	
	public function Usuariocargo($usuario)
	{
		try
		{
			$result = array();
            $stm = $this->pdo->prepare("SELECT contratos.nombre as tipo,usuario_cargo.tipo_contrato,usuario_cargo.id as contrato_id FROM usuario_cargo, contratos WHERE  contratos.id=usuario_cargo.tipo_contrato AND usuario_id=$usuario ");
			$stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
	}
	
	public function Editar($datas){
	   // print_r($datas);
	  try
	 	{
	 	    
	           $tipo_id=$datas->tipo_id;
               $obra_id= $datas->obra_id;
               $descripcion=$datas->descripcion;
               $otrosi=$datas->otro_si;
               $cargo_id=$datas->cargo_id;
               $id=$datas->id;
             
        
		    $sql = "UPDATE novedades SET tipo_id=$tipo_id , cargo_id=$cargo_id , descripcion='$descripcion' , otro_si='$otrosi', obra_id=$obra_id WHERE id ='$id'";
		    
		 //   $sql = "UPDATE usuario_cargo SET cliente_id=$cliente_id, obra_id=$obra,cargo_id=$cargo_id, duracion='$duracion', tipo_contrato=$tipo_contrato, inicio_contrato='$inicio_contrato', valor=$valor, aux_trans=$aux_trans WHERE id = '$id'";
	
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            
          	die($e->getMessage());
          	
        }
	    
	    
	}
	
	public function Eliminar0($id){
	    try 
		{ 
		    echo $id=$_REQUEST['id'];
			$stm = $this->pdo->prepare("DELETE FROM novedades WHERE id = $id");			          

			$stm->execute();
			
			
		} catch (Exception $e) 
		{
			die($e->getMessage());
		}
	    
	    
	}
	
	
	function User_novturno(){
        try
		{
			$result = array();

			$stm = $this->pdo->prepare("SELECT novedades.*, novedades.id as nov_id, usuarios.Nombre,Apellido,cedula, tiponovedad.novedad
			                            FROM novedades , usuarios,tiponovedad
			                            WHERE 
			                                usuarios.id=novedades.usuario_id
			                            AND tiponovedad.id=tipo_id
			                                ");
			$stm->execute();

		return	 $stm->fetchAll(PDO::FETCH_OBJ);
		
			
		}
		catch(Exception $e)
		{
			die($e->getMessage());
		}
		
    }
	
	
	
}