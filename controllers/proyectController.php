<?php


if (isset($_GET['new_proyect'])) {

//    $comment = new Comment([
//        'id' => null,
//        'text' => $_POST["text"],
//        'date' => date("Y-m-d H:i:s"),
//        'userid' => $_POST["ownerid"]->getId(),
//        'articleid' => $_GET['new_comment']
//    ]);
//
//    CommentRepository::guardar($comment);
//
//    header('Location: index.php?proyecto=' . $_GET['new_proyect']);
} if(isset($_GET['proyecto'])){
    $proyect = ProyectRepository::getProyect($_GET['proyecto']);
}

$proyects = ProyectRepository::getProyects();

require_once('views/proyectView.phtml');