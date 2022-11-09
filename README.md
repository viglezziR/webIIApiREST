# API REST para el recurso de tareas
Una API REST sencilla para manejar un CRUD de tareas

## Importar la base de datos
- importar desde PHPMyAdmin (o cualquiera) database/db_tasks.php


## Pueba con postman
El endpoint de la API es: http://localhost/tucarpetalocal/apiRest/api/products

{
    "animal": "",
    "name": "",
    "brand": "",
    "price": ,
    "productWeight": "",
    "animalAge": "",
    "animalSize": "",
    "image": 
}

PAGINATION
Add query params to GET requests:

/blogs?page=1&limit=10
or /blogs?p=1&l=10


SORTING
Add query params to GET requests:
/api/tareas?sort=prioridad&order=asc


/products?orderBy="parameter"&order=desc


Alternatively you can use sortby, orderBy, or orderby
Note: if you omit order parameter, the default order will be asc
SEARCHING & FILTERING
Add query params to GET request:

/blogs?search=blog1 - search by all fields for string blog1
/blogs?filter=blog1 - search by all fields for string blog1
/blogs?title=blog1 - search by title field for string blog1