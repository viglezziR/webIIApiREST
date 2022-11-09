<?php

class ProductModel {

    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_products;charset=utf8', 'root', '');
    }

    public function getAllProducts () {

        $query = $this->db->prepare("SELECT * FROM products");
        $query->execute();

        $products = $query->fetchAll(PDO::FETCH_OBJ); 
        
        return $products;
    }

    public function getAllProductsOrderBy ($attribute, $order) {

        $query = $this->db->prepare("select * FROM products ORDER BY $attribute $order");
        $query->execute();

        $products = $query->fetchAll(PDO::FETCH_OBJ); 
        
        return $products;
    }

    public function getAllProductsFilterBy ($filter, $value) {

        $query = $this->db->prepare("select * FROM products WHERE $filter = '$value' ");
        $query->execute();

        $products = $query->fetchAll(PDO::FETCH_OBJ); 
        
        return $products;
    }
    
    function getProduct($id) {
        $query = $this->db->prepare("SELECT * FROM `products` WHERE `id_products` = ?");
        $query->execute([$id]);

        $product = $query->fetch(PDO::FETCH_OBJ); 
        
        return $product;
    }

    public function deleteProduct($id) {
        $query = $this->db->prepare('DELETE FROM products WHERE id_products = ?');
        $query->execute([$id]);
    }

    public function insertProduct($animal, $name, $brand, $price, $productWeight, $animalAge, $animalSize) {
        $query = $this->db->prepare ("INSERT INTO products (animal, name, brand, price, productWeight, animalAge, animalSize) VALUES (?, ?, ?, ?, ?, ?, ?)");
        $query->execute([$animal, $name, $brand, $price, $productWeight, $animalAge, $animalSize]);

        return $this->db->lastInsertId();
    }

    public function updateProduct($animal, $name, $brand, $price, $productWeight, $animalAge, $animalSize, $id) {
        $query = $this->db->prepare ("UPDATE products SET animal =?, name=?, brand =?, price =? ,productWeight =?, animalAge =?, animalSize =? WHERE id_products = ?");
        $query->execute([$animal, $name, $brand, $price, $productWeight, $animalAge, $animalSize, $id]);
    }
}