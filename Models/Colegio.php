<?php
// app/Model/User.php
App::uses('AppModel', 'Model');

class Colegio extends AppModel {

    var $actsAs = array(
        'MeioUpload' => array('filename')
    );

    /**
     * Display field
     *
     * @var string
     */
    public $displayField = 'nombre';
    
    public $hasMany = array(
        'Squema' => array(
            'className' => 'Squema',
            'foreignKey' => 'colegio_id',
            'dependent' => false,
            'conditions' => '',
            'fields' => '',
            'order' => '',
            'limit' => '',
            'offset' => '',
            'exclusive' => '',
            'finderQuery' => '',
            'counterQuery' => ''
        )
    );

}
