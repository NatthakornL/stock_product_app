<?php
    class Ordering{
        //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
         private $conn;

         //ตัวแปรที่เก็บชื่อตาราง
         private $tb_name = "Sys_WarehouseManagement..sys_order_action32";

          //ตัวแปรที่เก็บข้อมูลในตาราง
          public $message; //แนะนำให้เพิ่มไฟล์นี้เข้าไป
          public $doc_no;
          public $customer_name;
          public $deliver_date;

          //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
          public function __construct($db){
             $this->conn = $db;
          }

          //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
          // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
          public function getAllOrdering(){
          //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
          $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY doc_no,customer_name,deliver_date DESC ";

          //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
          $stmt = $this->conn->prepare($sqlQuery);

          //คำสั่ง SQL ทำงาน
          $stmt->execute();

          //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
          return $stmt;
          }
    }

    class OrderingDetail{
            //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
             private $conn;

             //ตัวแปรที่เก็บชื่อตาราง
             private $tb_name = "Sys_WarehouseManagement..sys_show_order32";

              //ตัวแปรที่เก็บข้อมูลในตาราง
              public $message; //แนะนำให้เพิ่มไฟล์นี้เข้าไป
              public $part_upload;
              public $type_description;
              public $rubber;
              public $qty;
              public $issueing_qty;
              public $want_issueing_qty;
              public $qty_in;
              public $qty_out;
              public $qty_set;
              public $qty_receive;
              public $want_issueing_qty_qty_receive;
              public $remark;

              //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
              public function __construct($db){
                 $this->conn = $db;
              }

              //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
              // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
              public function getAllOrderingDetail(){
              //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
              $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY part_upload , type_description , rubber , qty , issueing_qty , want_issueing_qty , qty_in , qty_out , qty_set , qty_receive , want_issueing_qty_qty_receive , remark DESC ";

              //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
              $stmt = $this->conn->prepare($sqlQuery);

              //คำสั่ง SQL ทำงาน
              $stmt->execute();

              //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
              return $stmt;
              }
        }

    class OrderingWH{
        //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
         private $conn;

         //ตัวแปรที่เก็บชื่อตาราง
         private $tb_name = "Sys_WarehouseManagement..sys_show_order32";

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
          public function getAllOrderingWH(){
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