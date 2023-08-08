<?php
    class SearchStock{
        //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
         private $conn;

         //ตัวแปรที่เก็บชื่อตาราง
         private $tb_name = "Sys_WarehouseManagement..sys_Search_stock_32";

          //ตัวแปรที่เก็บข้อมูลในตาราง
          public $message; //แนะนำให้เพิ่มไฟล์นี้เข้าไป
          public $partnumber;
          public $prod_group;
          public $category_name;
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
          public function getAllSearchStock(){
          //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
          $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY partnumber,prod_group,category_name,warehouse_name,area_name,row_name,column_name,shelf,qty_in,qty DESC ";

          //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
          $stmt = $this->conn->prepare($sqlQuery);

          //คำสั่ง SQL ทำงาน
          $stmt->execute();

          //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
          return $stmt;
          }
    }

    class SearchStockWH{
            //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
             private $conn;

             //ตัวแปรที่เก็บชื่อตาราง
             private $tb_name = "Sys_WarehouseManagement..sys_Search_stock_32_show";

              //ตัวแปรที่เก็บข้อมูลในตาราง
              public $message; //แนะนำให้เพิ่มไฟล์นี้เข้าไป
              public $warehouse_name;
              public $area_name;
              public $row_name;
              public $column_name;
              public $shelf;
              public $prod_qty_in;
              public $prod_qty_out;
              public $type_code;

              //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
              public function __construct($db){
                 $this->conn = $db;
              }

              //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
              // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
              public function getAllSearchStockWH(){
              //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
              $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY warehouse_name , area_name , row_name , column_name , shelf , prod_qty_in , prod_qty_out , type_code DESC ";

              //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
              $stmt = $this->conn->prepare($sqlQuery);

              //คำสั่ง SQL ทำงาน
              $stmt->execute();

              //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
              return $stmt;
              }
        }

?>