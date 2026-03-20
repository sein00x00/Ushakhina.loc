<?php

namespace Src\Controllers;

use src\views\View;

use src\services\Db;

class MainController extends Controller
{
    public $view;
    public $layout = 'default';

    public function __construct()
    {
        $this->view = new View($this->layout);
    }




    public function sayHello($name)
    {
        echo 'Привет, ' . $name;
    }
}
