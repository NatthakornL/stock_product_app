<?php
/*
//ไฟล์นี้ใช้ติดต่อ Database
    class Database
    {
        private $host = "103.253.72.12";  //localhost, 127.0.0.1, ip address ของเครื่อง server, ชื่อ domain name
        private $database_name = "Sys_WarehouseManagement";
        private $username = "strubberDB";
        private $password = "strDB2020!";

        public $conn;

        public function getConnection()
        {
            $this->conn = null;
            try {
                $this->conn = new PDO(
                    "mysql:host="
                        . $this->host
                        . ";dbname="
                        . $this->database_name,
                    $this->username,
                    $this->password
                );
                $this->conn->exec("set names utf8");
            } catch (PDOException $exception) {
                echo "Database could not be connected: " . $exception->getMessage();
            }
            return $this->conn;
        }
    }
?>
