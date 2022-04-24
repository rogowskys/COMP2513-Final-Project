<?php
    class Item{
        // Connection
        private $conn;
        // Table
        private $db_table = "items";
        // Columns
        public $id;
        public $name;
        public $type;
        public $date;
        public $serial;
        public $location;
        // Db connection
        public function __construct($db){
            $this->conn = $db;
        }
        // GET ALL
        public function getItems(){
            $sqlQuery = "SELECT id, name, type, date, serial, location FROM " . $this->db_table . "";
            $stmt = $this->conn->prepare($sqlQuery);
            $stmt->execute();
            return $stmt;
        }
        // CREATE
        public function createItem(){
            $sqlQuery = "INSERT INTO
                        ". $this->db_table ."
                    SET
                        name = :name, 
                        type = :type, 
                        date = :date, 
                        serial = :serial, 
                        location = :location";
        
            $stmt = $this->conn->prepare($sqlQuery);
        
            // sanitize
            $this->name=htmlspecialchars(strip_tags($this->name));
            $this->type=htmlspecialchars(strip_tags($this->type));
            $this->date=htmlspecialchars(strip_tags($this->date));
            $this->serial=htmlspecialchars(strip_tags($this->serial));
            $this->location=htmlspecialchars(strip_tags($this->location));
        
            // bind data
            $stmt->bindParam(":name", $this->name);
            $stmt->bindParam(":type", $this->type);
            $stmt->bindParam(":date", $this->date);
            $stmt->bindParam(":serial", $this->serial);
            $stmt->bindParam(":location", $this->location);
        
            if($stmt->execute()){
               return true;
            }
            return false;
        }
        // READ single
        public function getSingleItem(){
            $sqlQuery = "SELECT
                        id, 
                        name, 
                        type, 
                        date, 
                        serial, 
                        location
                      FROM
                        ". $this->db_table ."
                    WHERE 
                       id = ?
                    LIMIT 0,1";
            $stmt = $this->conn->prepare($sqlQuery);
            $stmt->bindParam(1, $this->id);
            $stmt->execute();
            $dataRow = $stmt->fetch(PDO::FETCH_ASSOC);
            
            $this->name = $dataRow['name'];
            $this->type = $dataRow['type'];
            $this->date = $dataRow['date'];
            $this->serial = $dataRow['serial'];
            $this->location = $dataRow['location'];
        }        
        // UPDATE
        public function updateItem(){
            $sqlQuery = "UPDATE
                        ". $this->db_table ."
                    SET
                        name = :name, 
                        type = :type, 
                        date = :date, 
                        serial = :serial, 
                        location = :location
                    WHERE 
                        id = :id";
        
            $stmt = $this->conn->prepare($sqlQuery);
        
            $this->name=htmlspecialchars(strip_tags($this->name));
            $this->type=htmlspecialchars(strip_tags($this->type));
            $this->date=htmlspecialchars(strip_tags($this->date));
            $this->serial=htmlspecialchars(strip_tags($this->serial));
            $this->location=htmlspecialchars(strip_tags($this->location));
            $this->id=htmlspecialchars(strip_tags($this->id));
        
            // bind data
            $stmt->bindParam(":name", $this->name);
            $stmt->bindParam(":type", $this->type);
            $stmt->bindParam(":date", $this->date);
            $stmt->bindParam(":serial", $this->serial);
            $stmt->bindParam(":location", $this->location);
            $stmt->bindParam(":id", $this->id);
        
            if($stmt->execute()){
               return true;
            }
            return false;
        }
        // DELETE
        function deleteItem(){
            $sqlQuery = "DELETE FROM " . $this->db_table . " WHERE id = ?";
            $stmt = $this->conn->prepare($sqlQuery);
        
            $this->id=htmlspecialchars(strip_tags($this->id));
        
            $stmt->bindParam(1, $this->id);
        
            if($stmt->execute()){
                return true;
            }
            return false;
        }
    }
?>