<?php

class ProductModel {

    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_products;charset=utf8', 'root', '');
    }

    public function getAllProducts ($filter = null, $value = null, $attribute = null, $order = null, $limit = null, $offset = null) {
        $sql = "SELECT * FROM products ";
        $ext = [];

        if ($filter != null && $value != null){
            $sql .=" WHERE $filter = ? ";
            array_push($ext, $value);
        }

        if ($attribute != null && $order != null){
            $sql .=" ORDER BY $attribute, $order ";
            //array_push($ext, $attribute, $order);
        }

        if ($limit != null && ($offset != null || $offset == 0)) {
            $sql .=" LIMIT $limit OFFSET $offset ";
        }
        
        var_dump($ext);
        $query = $this->db->prepare($sql);
        $query->execute($ext);

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