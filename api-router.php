<?php
require_once './libs/Router.php';
require_once './app/controllers/product_ApiController.php';

$router = new Router();

$router->addRoute('products', 'GET', 'ProductApiController', 'getProducts');
$router->addRoute('products/:ID', 'GET', 'ProductApiController', 'getProduct');
$router->addRoute('products/:ID', 'DELETE', 'ProductApiController', 'deleteProduct');
$router->addRoute('products', 'POST', 'ProductApiController', 'insertProduct');
$router->addRoute('products/:ID', 'PUT', 'ProductApiController', 'updateProduct'); 


$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);