<?php
require_once './app/models/product_Model.php';
require_once './app/views/api_View.php';

class ProductApiController {
    private $model;
    private $view;

    private $data;

    public function __construct() {
        $this->model = new ProductModel();
        $this->view = new ApiView();
        
        $this->data = file_get_contents("php://input");
    }
    private function getData() {
        return json_decode($this->data);
    }

    public function getProducts($params = null) {

        if (isset($_GET['orderBy']))
            $attribute = $_GET['orderBy'];
        
        if (isset($_GET['filterBy'])){
            $filter = $_GET['filterBy'];
            $value = $_GET['value'];
        }

        if (isset($_GET['order']))
            $order = $_GET['order'];
        else
            $order="ASC";
        
        
        if (isset($attribute) && isset($order)) {
            $products = $this->model->getAllProductsOrderBy($attribute, $order);
            $this->view->response($products);
        }

        else if (isset($filter) && isset($value)) {
            $products = $this->model->getAllProductsFilterBy($filter, $value);
            $this->view->response($products);
        }
        
        else {
            $products = $this->model->getAllProducts();
            $this->view->response($products);
        }

    }

    public function getProduct($params = null) {
        $id = $params[':ID'];
        $product = $this->model->getProduct($id);

        if ($product)
            $this->view->response($product);
        else 
            $this->view->response("El producto solicitado con el id=$id no existe", 404);
    }

    public function deleteProduct($params = null) {
        $id = $params[':ID'];

        $product = $this->model->getProduct($id);
        if ($product) {
            $this->model->deleteProduct($id);
            $this->view->response($product);
        } else 
        $this->view->response("El producto solicitado con el id=$id no existe", 404);
    }

    public function insertProduct($params = null) {
        $product = $this->getData();

        if (empty($product->animal) || empty($product->name) || empty($product->brand) || empty($product->price) || empty($product->productWeight) || empty($product->animalAge) || empty($product->animalSize)) {
            $this->view->response("Complete todos los datos solicitados", 400);
        } 
        
        else {
            $id = $this->model->insertProduct($product->animal, $product->name, $product->brand, $product->price, $product->productWeight, $product->animalAge, $product->animalSize);
            $product = $this->model->getProduct($id);
            $this->view->response($product, 201);
        }
    }

    /* $animal, $name, $brand, $price, $productWeight, $animalAge, $animalSize, $image
    if($_FILES['image']['type'] == "image/jpg" || $_FILES['image']['type'] == "image/jpeg" || $_FILES['image']['type'] == "image/png"){
        $this->productModel->insertProduct($animal, $name, $brand, $price, $productWeight, $animalAge, $animalSize, $_FILES['image']['tmp_name']);
    }
    else {
        $this->productModel->;
    } */

    public function updateProduct($params = null) {
        $id = $params[':ID'];
        $product = $this->model->getProduct($id);

        if ($product) {
            $product = $this->getData();
            $this->model->updateProduct($product->animal, $product->name, $product->brand, $product->price, $product->productWeight, $product->animalAge, $product->animalSize, $id);
            $product = $this->model->getProduct($id);
            $this->view->response($product, 200);
        } 
        else 
            $this->view->response("El producto que intenta modificar con el id=$id no existe", 404);
    }


  /*   function updateProduct($id) {
        if ($_FILES['image']['type'] == "image/jpg" || $_FILES['image']['type'] == "image/jpeg" || $_FILES['image']['type'] == "image/png" ){
            $this->deleteImg($id);
            $this->productModel->updateProduct($animal, $name, $brand, $price, $productWeight, $animalAge, $animalSize, $_FILES['image']['tmp_name'], $id);
        }
        else{
            $this->productModel->updateProduct2($animal, $name, $brand, $price, $productWeight, $animalAge, $animalSize, $id);
        }
    } */

}
