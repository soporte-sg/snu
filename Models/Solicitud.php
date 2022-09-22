<?php
class Solicitud
{
    private $pdo;
    public $id;
    public $NombreSolicitante;
    public $FechaSolicitud;
    public $Proceso;
    public $TipoSolicitud;
    public $Codigo;
    public $VersionCambiar;
    public $TipoDocumento;
    public $Descripcion;
    public $EjecucionCambio;
    public $Aprobado;
    public $Observaciones;
    public $filename;
    public $dir;

    public function __CONSTRUCT()
    {
        try {
            $this->pdo = Database::StartUp();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    //fin dashboard//
    public function SolicitudesTotal()
    {
        try {

            $stm = $this->pdo->prepare("SELECT count(id)as total FROM solicitudes");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function SolicitudesSi()
    {
        try {

            $stm = $this->pdo->prepare("SELECT count(id)as total FROM solicitudes WHERE Aprobado ='si'");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function SolicitudesNo()
    {
        try {

            $stm = $this->pdo->prepare("SELECT count(id)as total FROM solicitudes WHERE Aprobado ='no'");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function SolicitudesRev()
    {
        try {

            $stm = $this->pdo->prepare("SELECT count(id)as total FROM solicitudes WHERE Aprobado ='revision'");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function SolicitudesMax()
    {
        try {

            $stm = $this->pdo->prepare("SELECT MAX(id)as ULTIMA FROM solicitudes");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
    public function SolicitudesVacias()
    {
        try {

            $stm = $this->pdo->prepare("SELECT count(id)as total FROM solicitudes WHERE Aprobado =''");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    //fin dashboard//
    //GESTION DE SOLICITUDES//
    public function Solicitudes()
    {
        try {

            $stm = $this->pdo->prepare("SELECT * FROM solicitudes where Proceso!='so'");
            $stm->execute();
            return $stm->fetchAll(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function GetSolicitud($id)
    {
        try {

            $stm = $this->pdo->prepare("SELECT * FROM solicitudes WHERE id='$id'");
            $stm->execute();
            return $stm->fetch(PDO::FETCH_OBJ);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Registrar(Solicitud $data)
    {
        // print_r($data);

        try {
            $stm = "INSERT INTO solicitudes(NombreSolicitante, FechaSolicitud, Proceso, TipoSolicitud, Codigo, VersionCambiar, TipoDocumento, Descripcion, EjecucionCambio, Aprobado,Observaciones,filename, dir)
            VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?)";
            $this->pdo->prepare($stm)->execute(array(
                $data->NombreSolicitante,
                $data->FechaSolicitud,
                $data->Proceso,
                $data->TipoSolicitud,
                $data->Codigo,
                $data->VersionCambiar = 0,
                $data->TipoDocumento,
                $data->Descripcion,
                $data->EjecucionCambio = '0000-00-00',
                $data->Aprobado,
                $data->Observaciones = '',
                $data->filename,
                $data->dir
            ));
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Actualizar(Solicitud $data)
    {
        //print_r($data);
        try {

            $sql = "UPDATE solicitudes SET NombreSolicitante='$data->NombreSolicitante', FechaSolicitud='$data->FechaSolicitud', 	Proceso='$data->Proceso',
              	   TipoSolicitud='$data->TipoSolicitud', Codigo='$data->Codigo', VersionCambiar='$data->VersionCambiar', TipoDocumento='$data->TipoDocumento',
                   Descripcion='$data->Descripcion',EjecucionCambio='$data->EjecucionCambio',Aprobado='$data->Aprobado',Observaciones='$data->Observaciones'  WHERE id = $data->id";
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function ActualizaGestion(Solicitud $data)
    {
        // print_r($data);
        try {

            $sql = "UPDATE solicitudes SET 
              	   Codigo='$data->Codigo', Descripcion='$data->Descripcion',EjecucionCambio='$data->EjecucionCambio',Aprobado='$data->Aprobado',Observaciones='$data->Observaciones'  WHERE id = $data->id";
            $this->pdo->prepare($sql)->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

    public function Descripcion($TipoDocumento, $proceso, $TipoSolicitud)
    {

        if ($TipoDocumento == 'documento' and $TipoSolicitud == 'creacion') {

            echo '<div class="col-sm-3">
                <div class="form-group">
                    <div class="form-line">
                        <label>Descripción</label>
                        <input type="text" name="Codigo" id="Codigo" value="Codigo Automatico" class="form-control" required>
                    </div>
                </div>
            </div>';
        }

        if ($TipoDocumento == 'documento' and ($TipoSolicitud == 'actualizacion' or $TipoSolicitud == 'eliminacion')) {

            try {

                $stm = $this->pdo->prepare("SELECT CodDocumento, NomDocumento FROM documentos WHERE Proceso ='$proceso'");
                $stm->execute();
                $result = $stm->fetchAll(PDO::FETCH_OBJ);
                ///print_r($result);

            } catch (Exception $e) {
                die($e->getMessage());
            }
            echo '<div class="col-sm-3">
            <div class="form-group">
                <div class="form-line">
                    <label>Descripción</label>
                    <select name="Codigo" id="Codigo" class="form-control">';
            foreach ($result as $value) {
                echo   '<option value="' . $value->CodDocumento . '">' . $value->CodDocumento . '-' . $value->NomDocumento . '</option>';
            }
            echo '</select> 
             </div>
            </div>
           </div>';
        }

        if ($TipoDocumento == 'formato' and $TipoSolicitud == 'creacion') {
            echo '<div class="col-sm-3">
                <div class="form-group">
                    <div class="form-line">
                        <label>Descripción</label>
                        <input type="text" name="Codigo" id="Codigo" value="Codigo Automatico" class="form-control" required>
                    </div>
                </div>
            </div>';
        }

        if ($TipoDocumento == 'formato' and ($TipoSolicitud == 'actualizacion' or $TipoSolicitud == 'eliminacion')) {

            try {

                $stm = $this->pdo->prepare("SELECT CodFormato, NomFormato FROM formatos WHERE Proceso ='$proceso'");
                $stm->execute();
                $result = $stm->fetchAll(PDO::FETCH_OBJ);
                ///print_r($result);

            } catch (Exception $e) {
                die($e->getMessage());
            }
            echo '<div class="col-sm-3">
            <div class="form-group">
                <div class="form-line">
                    <label>Descripción</label>
                    <select name="Codigo" id="Codigo" class="form-control">';
            foreach ($result as $value) {
                echo '<option value="' . $value->CodFormato . '">' . $value->CodFormato . '-' . $value->NomFormato . '</option>';
            }
            echo '</select> 
             </div>
            </div>
           </div>';
        }


        if ($TipoDocumento == 'externo' and $TipoSolicitud == 'creacion') {

            echo '<div class="col-sm-3">
                <div class="form-group">
                    <div class="form-line">
                        <label>Descripción</label>
                        <input type="text" name="Codigo" id="Codigo" value="Codigo Automatico" class="form-control" required>
                    </div>
                </div>
            </div>';
        }
        if ($TipoDocumento == 'externo' and ($TipoSolicitud == 'actualizacion' or $TipoSolicitud == 'eliminacion')) {

            try {

                $stm = $this->pdo->prepare("SELECT codigo, nombre FROM sgcexternos WHERE Proceso ='$proceso'");
                $stm->execute();
                $result = $stm->fetchAll(PDO::FETCH_OBJ);
                ///print_r($result);

            } catch (Exception $e) {
                die($e->getMessage());
            }
            echo '<div class="col-sm-3">
            <div class="form-group">
                <div class="form-line">
                    <label>Descripción</label>
                    <select name="Codigo" id="Codigo" class="form-control">';
            foreach ($result as $value) {
                echo   '<option value="' . $value->codigo . '">' . $value->codigo . '-' . $value->nombre . '</option>';
            }
            echo '</select> 
             </div>
            </div>
           </div>';
        }
    }


    //FIN GESTION DE SOLICITUDES//


}
