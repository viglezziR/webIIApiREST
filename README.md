# API REST para el recurso de tareas
Una API REST sencilla para manejar un CRUD de productos.

## Importar la base de datos
- importar desde PHPMyAdmin (o cualquiera) database/db_products.php

## Pueba con postman


## Metodo: GET, Url: http://localhost/tucarpetalocal/apiRest/api/products
- Trae todos los productos de la base de datos ordenados por defecto de forma ascendente por id de producto.

```
PAGINACION
Se agregan parametros query para solicitar todos los productos paginados:

/products?page=1&&limit=10

FILTRO
Se agregan parametros query para solicitar todos los productos filtrados por un parametro especifico:

/products?filterBy=brand&&value=VitalCan
/products?filterBy=price&&value=5000

ORDEN
Se agregan parametros query para solicitar todos los productos ordenados por un parametro especifico. Por defecto si no se especifica el tipo de orden, se ordenara en forma ascendete.

/products?orderBy=brand
/products?orderBy=brand&&order=ASC
/products?orderBy=brand&&order=DESC

ACLARACION: La paginacion, los filtros y el orden no son excluyentes.

```

## Metodo: GET, Url: http://localhost/tucarpetalocal/apiRest/api/products/:ID
- Trae de la base de datos solamente el producto de la :ID asignada.




## Metodo: POST, Url: http://localhost/tucarpetalocal/apiRest/api/products
- Genera un nuevo elemento en la base de datos, para ello utilizar la siguiente plantilla en el body.

```
{
    "animal": "Perro",
    "name": "Pollo y Arroz",
    "brand": "Excellent",
    "price": 7300,
    "productWeight": "20 kg",
    "animalAge": "Adulto",
    "animalSize": "Mordida Chica",
    "image": "images/634b4a403673f.jpg"
}
```

## Metodo: PUT, Url: http://localhost/tucarpetalocal/apiRest/api/products/:ID
- Actualiza los campos de un elemento en la base de datos, dado un :ID en especifico. Se debe utilizar la siguiente plantilla.

```
{
    "animal": "Perro",
    "name": "Pollo y Arroz",
    "brand": "Excellent",
    "price": 7300,
    "productWeight": "20 kg",
    "animalAge": "Adulto",
    "animalSize": "Mordida Chica",
    "image": "images/634b4a403673f.jpg"
}
```
## Metodo: DELETE, Url: http://localhost/tucarpetalocal/apiRest/api/products/:ID
- Se elemina un elemento de la base de datos dado un :ID en especifico.