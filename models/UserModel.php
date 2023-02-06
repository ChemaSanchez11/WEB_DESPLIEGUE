<?php

class User
{
    public $id;
    public $name;
    public $firstname;
    public $lastname;

    public function __construct ($datos){

        $this->id = $datos['id'];
        $this->name = $datos['username'];
        $this->firstname = $datos['firstname'];
        $this->lastname = $datos['lastname'];
    }

    public function getId(){
        return $this->id;
    }

    public function getName(){
        return $this->name;
    }

    public function getFirstName(){
        return $this->firstname;
    }

    public function getLastName(){
        return $this->lastname;
    }
}