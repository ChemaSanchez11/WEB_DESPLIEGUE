<?php

require_once('models/UserModel.php');
require_once('models/UserRepository.php');
require_once('models/ProyectModel.php');
require_once('models/ProyectRepository.php');

if(isset($_GET['proyectos']) || isset($_GET['proyecto'])){
    require_once('controllers/proyectController.php');
    die();
}

if(isset($_GET['fp-hispanidad'])){
 require_once('views/fpHispanidadView.phtml');
 die();
}

if(isset($_GET['calendario'])){
 require_once('views/calendarioView.phtml');
 die();
}

if(isset($_GET['tutores'])){
    require_once('views/tutoresView.phtml');
    die();
}

if(isset($_GET['reglamento'])){
    require_once('views/reglamentosView.phtml');
    die();
}

if(isset($_GET['cursos'])){
    require_once('views/cursosView.phtml');
    die();
}

if(isset($_GET['departamentos'])){
    require_once('views/departamentoView.phtml');
    die();
}

require_once('views/mainView.phtml');