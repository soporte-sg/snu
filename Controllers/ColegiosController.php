<?php
App::uses('AppController', 'Controller');
App::uses('MeioUploadBehavior', 'Model');
App::uses("Validation", 'Utility');
/**
 * Usuarios Controller
 *
 * @property Usuario $Usuario
 * @property PaginatorComponent $Paginator
 * @property FlashComponent $Flash
 * @property SessionComponent $Session
 */
class ColegiosController extends AppController {

    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('add');
        
        $this->loadModel('Squema');
    }

    /**
     * Components
     *
     * @var array
     */
    public $components = array('Paginator', 'Flash', 'Session', 'Cookie');

    /**
     * index method
     *
     * @return void
     */
    public function index() {
        $this->layout = 'colegioindex';
        $this->Session->delete("nombre_bd_squema"); // Borra los datos de la variable de session del squema
        $this->Session->delete("id_colegio"); // Borra los datos de la variable de session del colegio
        $datos_usuario = $this->Auth->user();
        //debug($datos_usuario);
        //exit();
        if($datos_usuario['role_id'] == 5){
           $colegiosexplode = explode('~', $datos_usuario['colegios']);	
           $filtro['Colegio.id IN'] = $colegiosexplode;	
        }else{
           $filtro[] = '';	
        }
        $user_colegio = @$datos_usuario['colegio_id'];
        
        $this->Paginator->settings = array(
            'conditions' => array($filtro),
            'limit' => 12,
            'order' => array('Producto.ubicacion_id'));

        $this->set('colegios', $this->Paginator->paginate());
        $data = $this->Paginator->paginate('Colegio');        
        $this->set(compact('colegios', 'datos_usuario', 'user_colegio', 'data'));
    }

    /* El método verificacion permite crear la variable de sesión empresa que se utilizara en varios métodos  */

    public function verificacion($id) {
        //$encriptado_id = Security::cipher($id, Configure::read('Security.salt'));
        $squemas = $this->Squema->find('first', array('conditions' => array('Squema.colegio_id' => $id), 'fields' => 'nombre_bd', 'recursive' => -1));
        $this->Session->write('id_colegio', $id);
        $this->Session->write('nombre_bd_squema', $squemas['Squema']['nombre_bd']);
        if ($this->Session->check('id_colegio')) {
            return $this->redirect(array('controller' => 'solicitudes', 'action' => 'tablero')); 
        }
    }
    
    public function datosColegio() {
        $id_colegio = $this->Session->read('id_colegio');
        return $this->Colegio->find('first', array('conditions' => array('Colegio.id' => $id_colegio), 'recursive' => 0));
    }

    /* El método addadmin permite al usuario Super Administrador registrar colegio */
    
    public function addadmin() {
        $this->layout = 'colegioindex';
          if ($this->request->is('post')) {
            $this->Colegio->create();
            $var_implode = implode("~", $this->request->data['Colegio']['correos']);
            $this->request->data['Colegio']['correos'] = $var_implode;
            if ($this->Colegio->save($this->request->data)) {
               // $this->setFlash('Los datos del colegio fueron registrados');
                return $this->redirect('/colegios/administracion');
            }
            $this->Session->setFlash( __('The user could not be saved. Please, try again.'));
        }
    }
    
    /* El método administracion permite visualizar todos los colegios existenten para poder retirarla o integrarla al sistema */

    public function administracion() {
        $this->layout = 'colegioindex';
        
        $this->Paginator->settings = array(
            'fields' => array('Colegio.id', 'Colegio.nombre', 'Colegio.direccion', 'Colegio.telefono', 'Colegio.rector'),
            'recursive' => -1,
            'limit' => 15
        );
        $colegios = $this->Paginator->paginate();
        
        $this->set('colegios', $colegios);
        $data = $this->Paginator->paginate('Colegio');
    }

    /**
     * edit method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function edit($id = null) {

        if (!$this->Colegio->exists($id)) {
            throw new NotFoundException(__('Invalid usuario'));
        }
        if ($this->request->is(array('post', 'put'))) {
            $var_implode = implode("~", $this->request->data['Colegio']['correos']);
            $this->request->data['Colegio']['correos'] = $var_implode;

            if ($this->Colegio->save($this->request->data)) {
                $this->Flash->success(__('Los datos del colegio fueron actualizados'));
                return $this->redirect('/productos/indexproductos');
            } else {
                $this->Flash->error(__('The usuario could not be saved. Please, try again.'));
            }
        } else {
            $options = array('conditions' => array('Colegio.' . $this->Colegio->primaryKey => $id));
            $this->request->data = $this->Colegio->find('first', $options);
        }
        // $this->set('datos',$this->request->data);
    }
    
    public function editadmin($id = null) {
        $this->layout = 'colegioindex';
        if (!$this->Colegio->exists($id)) {
            throw new NotFoundException(__('Invalid usuario'));
        }
        if ($this->request->is(array('post', 'put'))) {
            $var_implode = implode("~", $this->request->data['Colegio']['correos']);
            $this->request->data['Colegio']['correos'] = $var_implode;

            if ($this->Colegio->save($this->request->data)) {
                $this->Session->setFlash('Los datos del colegio fueron actualizados','flash_success');
                return $this->redirect('/colegios/administracion');
            } else {
               $this->Session->setFlash('The usuario could not be saved. Please, try again.','flash_success');
            }
        } else {
            $options = array('conditions' => array('Colegio.' . $this->Colegio->primaryKey => $id));
            $this->request->data = $this->Colegio->find('first', $options);
        }
        // $this->set('datos',$this->request->data);
    }

    /**
     * delete method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function delete($id = null) {
        // $this->Usuario->id = $id;
        // if (!$this->Usuario->exists()) {
        // 	throw new NotFoundException(__('Invalid usuario'));
        // }
        // $this->request->allowMethod('post', 'delete');
        // if ($this->Usuario->delete()) {
        // 	$this->Flash->success(__('The usuario has been deleted.'));
        // } else {
        // 	$this->Flash->error(__('The usuario could not be deleted. Please, try again.'));
        // }
        // return $this->redirect(array('action' => 'index'));
    }

}
