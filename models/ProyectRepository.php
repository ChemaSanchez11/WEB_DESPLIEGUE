<?php

class ProyectRepository
{
    public static function getProyects(){
        $array_proyects = [];

        $DB = Database::conexion();
        $result = $DB->query("SELECT * FROM proyects");

        while ($row = $result->fetch_assoc()) {
            $array_proyects[] = new Proyect($row);
        }

        return $array_proyects;
    }

    public static function getProyect($id){
        $DB = Database::conexion();
        $result = $DB->query("SELECT * FROM proyects WHERE id = $id");

        if($result){
            $proyect = new Proyect($result->fetch_assoc());
        }else $proyect = null;

        return $proyect;
    }
}