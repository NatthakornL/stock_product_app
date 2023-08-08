<?php
    class StockAdjust{
        //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
         private $conn;

         //ตัวแปรที่เก็บชื่อตาราง
         private $tb_name = "Sys_WarehouseManagement..sys_updown_32";

          //ตัวแปรที่เก็บข้อมูลในตาราง
          public $message; //แนะนำให้เพิ่มไฟล์นี้เข้าไป
          public $partnumber;
          public $description;
          public $warehouse_name;
          public $area_name;
          public $row_name;
          public $column_name;
          public $shelf;
          public $qty_in;
          public $qty;

          //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
          public function __construct($db){
             $this->conn = $db;
          }

          //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
          // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
          public function getAllStockAdjust(){
          //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
          $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY partnumber,description,warehouse_name,area_name,row_name,column_name,shelf,qty_in,qty DESC ";

          //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
          $stmt = $this->conn->prepare($sqlQuery);

          //คำสั่ง SQL ทำงาน
          $stmt->execute();

          //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
          return $stmt;
          }
    }

    class StockAdjustType {
        //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
        private $conn;

        //ตัวแปรที่เก็บชื่อตาราง
        private $tb_name = "Sys_WarehouseManagement..sys_updown_detail";

        //ตัวแปรที่เก็บข้อมูลในตาราง
        public $message; //แนะนำให้เพิ่มไฟล์นี้เข้าไป
        public $type;
        public $issueing_no;
        public $qty_in_before_qty_in_after;
        public $qty_before_qty_after;
        public $qty_in_before_qty_in_after;
        public $qty_before_qty_after;
        public $qty_after;
        public $ts_name;
        public $ts_create;

        //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
        public function __construct($db){
           $this->conn = $db;
        }

        //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
        // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
        public function getAllStockAdjustType(){
        //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
        $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY type,issueing_no,qty_in_before_qty_in_after,qty_before_qty_after,qty_in_before_qty_in_after,qty_before_qty_after,qty_after,ts_name,ts_create DESC ";

        //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
        $stmt = $this->conn->prepare($sqlQuery);

        //คำสั่ง SQL ทำงาน
        $stmt->execute();

        //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
        return $stmt;
        }
    }
?>