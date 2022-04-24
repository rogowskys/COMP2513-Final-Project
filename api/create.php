<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
    include_once '../config/config.php';
    include_once '../class/item.php';
    $database = new Database();
    $db = $database->getConnection();
    $item = new Item($db);
    $data = json_decode(file_get_contents("php://input"));
    $item->name = $data->name;
    $item->type = $data->type;
    $item->date = $data->date;
    $item->serial = $data->serial;
    $item->location = $data->location;
    
    if($item->createItem()){
        echo json_encode("Item created successfully.");
    } else{
        echo json_encode("Item could not be created.");
    }
?>