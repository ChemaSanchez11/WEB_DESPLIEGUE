<?php

class UserRepository
{
    public static function getUserById($id){
        $DB = Database::conexion();
        $result = $DB->query("SELECT * FROM users WHERE id = $id");

        if($result){
            $user = new User($result->fetch_assoc());
        }else $user = null;

        return $user;
    }

    public static function getUserByDepartament($departamento){
        $DB = Database::conexion();
        $result = $DB->query("SELECT * FROM users WHERE departamento = '$departamento'");

        $array_users = [];

        while ($row = $result->fetch_assoc()) {
            $array_users[] = new User($row);
        }

        return $array_users;
    }
}