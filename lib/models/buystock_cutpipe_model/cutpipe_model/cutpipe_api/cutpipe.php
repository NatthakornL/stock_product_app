<?php

    class CutPipe{
        //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
         private $conn;

         //ตัวแปรที่เก็บชื่อตาราง
         private $tb_name = "Sys_WarehouseManagement..sys_resive_pipe";

          //ตัวแปรที่เก็บข้อมูลในตาราง
          public $message; //แนะนำให้เพิ่มไฟล์นี้เข้าไป
          public $partnumber;
          public $category;
          public $doc_no;
          public $date_pipe;
          public $qty_pipe;
          public $pipe_name;
          public $ts_pipe;

          //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
          public function __construct($db){
             $this->conn = $db;
          }

          //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
          // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
          public function getAllCutPipe(){
          //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
          $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY partnumber , category , doc_no , date_pipe , qty_pipe , pipe_name , ts_pipe DESC ";

          //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
          $stmt = $this->conn->prepare($sqlQuery);

          //คำสั่ง SQL ทำงาน
          $stmt->execute();

          //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
          return $stmt;
          }
    }

?>