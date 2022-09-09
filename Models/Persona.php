<?php
//nombrar la clase
class Persona
{
    // crear los atributos poner los mismo nombre de la tb

    private $pdo; // atributo de la conexion a bd
    public $nombre; //atributo del objeto

    public  $idNombre; public  $Apellido;
     public  $Correo;
     public  $telefono_fijo;
     public  $celular;
     public  $rol_id;
     public  $Sexo;
      public  $estatura;
      public  $cedula;
      public  $expedicion;
      public  $rh;
      public  $LugarNacimiento;
      public  $FechaNacimiento;
       public  $nivel_libreta;
       public  $direccion;
       public  $Barrio;
       public  $ciudad_res;
       public  $tipo_residencia;
        public  $estrato;
        public  $getnico;
        public  $estado_civil;
        public  $nacionalidad;
        public  $exequiales;
        public  $victima_conflicto;
         public  $usuario_tipo;
         public  $usuario;
         public  $clave;
         public  $estado;
        public  $FechaRegistro;
         


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
            $stm = $this->pdo->prepare("SELECT * FROM  personal ");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function GetPersona($id)
    {
        try {
            $result = array();
            $stm = $this->pdo->prepare("SELECT * FROM  personal WHERE id=$id  ");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Add(Persona $data)
    {
        try {

            $stm = "INSERT INTO tb_proceso_noconformes(proceso, cargo_id, TbCondiciones_id, descEvento, lugarEvento,                
                        estado, fechaRegistro, fechaValidacion, respuesta, usuario,observacion_1, observacion, fechaRespuesta, num_accion_corr )
            VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            $this->pdo->prepare($stm)->execute(array(
                $data->proceso,
                $data->cargo_id,
                $data->TbCondiciones_id,
                $data->descEvento,
                $data->lugarEvento,
                $data->estado,
                $data->fechaRegistro,
                $data->fechaValidacion,
                $data->respuesta,
                $data->usuario,
                $data->observacion_1,
                $data->observacion,
                $data->fechaRespuesta,
                $data->num_accion_corr,
            ));
            $id_cliente = $this->pdo->lastInsertId();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Edit(Persona $data)
    {
        try {
            $sql = "UPDATE tb_proceso_noconformes SET nombre='$data->nombre', direccion='$data->direccion', telefono='$data->telefono',
                correos='$data->correos', salario='$data->salario', matriz='$data->matriz', fechainicio='$data->fechainicio',
                rector='$data->rector'  WHERE id = $data->id";
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
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
