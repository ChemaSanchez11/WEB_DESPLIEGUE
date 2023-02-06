<?php

class Proyect
{
    public $id;
    public $icon;
    public $title;
    public $url;
    public $text;
    public $author;

    public function __construct ($datos){
        $this->id = $datos['id'];
        $this->icon = $datos['icon'];
        $this->title = $datos['title'];
        $this->url = $datos['url'];
        $this->text = $datos['text'];
        $this->author = UserRepository::getUserById($datos['ownerid']);
    }

    public function getId(){
        return $this->id;
    }

    public function getIcon()
    {
        return $this->icon;
    }

    public function getTitle(){
        return $this->title;
    }

    public function getUrl()
    {
        return $this->url;
    }

    public function getText()
    {
        return $this->text;
    }

    public function getAuthor()
    {
        return $this->author;
    }

    public function __toString(){
        return $this->title;
    }
}