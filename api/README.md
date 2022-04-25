Implements a PHP 8 CRUD (Create, Read, Update, Delete) RESTful API using MySQL.

Requests to/from the API must be in JSON format.

Inspired by https://www.positronx.io/create-simple-php-crud-rest-api-with-mysql-php-pdo/

    GET - http://localhost/api/read.php Fetch ALL Records
    GET - localhost/api/single_read.php/?id=2 Fetch Single Record
    POST - http://localhost/api/create.php Create Record
    POST - http://localhost/api/update.php Update Record
    DELETE - localhost/api/delete.php Remove Records
