<?php

class Database
{
    public static function conexion(){
        $conexion=new mysqli("localhost:33306", "root", "", "hispanidad");
        $conexion->query("SET NAMES 'utf8'");
        return $conexion;
    }
}