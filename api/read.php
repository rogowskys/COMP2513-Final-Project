<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    
    include_once '../config/config.php';
    include_once '../class/item.php';
    $database = new Database();
    $db = $database->getConnection();
    $items = new Item($db);
    $stmt = $items->getItems();
    $itemCount = $stmt->rowCount();

    if($itemCount > 0){
        
        $itemArr = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            extract($row);
            $e = array(
                "id" => $id,
                "name" => $name,
                "type" => $type,
                "date" => $date,
                "serial" => $serial,
                "location" => $location
            );
            array_push($itemArr, $e);
        }
        echo json_encode($itemArr);
    }
    else{
        http_response_code(404);
        echo json_encode(
            array("message" => "No record found.")
        );
    }
