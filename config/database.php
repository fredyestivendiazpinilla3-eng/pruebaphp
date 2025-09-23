<?php
<<<<<<< HEAD

class database{
    public static function conectar(){
        $conexion = new mysqli("localhost","root","", "tienda2");
        $conexion->query("SET NAMES 'utf-8'");
=======
class database{
    public static function conectar(){
        $conexion = new mysqli("localhost","root","tienda","","tienda2");
        $conexion->query("SET NAMES 'utf-8'");

        return $conexion;
>>>>>>> e2b0ca57bdc55ca0719bbea6644a2107ae309256
    }
}