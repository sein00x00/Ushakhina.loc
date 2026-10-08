<?php

namespace src\controllers;
use src\views\View;
use src\models\UsersAuthService;
class Controller
{
    public $view;
    protected $user;
    public $layout = 'default';
    public function __construct()
    {

        if(session_status() === PHP_SESSION_NONE){
                session_start();
        }

        if(empty($_SESSION['csrf_token'])){
            $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
        }

        if($_SERVER['REQUEST_METHOD'] === 'post'){
            $tokenfromPost = $_POST['csrf_token'] ?? '';
            $tokenFromSession = $_SESSION['csrf_token'] ?? '';

            if(empty($tokenfromPost)) || !hash_equals($tokenFromSession,$tokenfromPost
            ){
                die('error csrf')
            }
        }




        $this->user = UsersAuthService::getUserByToken();
        $this->view = new View($this->layout);
        $this->view->setVar('user', $this->user);
        $this->view->setVar('csrf_token', $_SESSION['csrf_token'])
    }
}