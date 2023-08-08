<?php

    class BuystockAll{
        //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
        private $conn;

        //ตัวแปรที่เก็บชื่อตาราง
        private $tb_name = "Sys_WarehouseManagement..sys_resive_pur";

        //ตัวเเปรที่เก็บข้อมูลในตาราง
        public $message; //เเนะนำให้เพิ่มไฟล์นี้
        public $rr_no;
        public $doc_no;
        public $partnumber;
        public $category;
        public $qty;
        public $ts_name;
        public $ts_create;
        public $hour;

        //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
        public function __construct($db){
           $this->conn = $db;
        }

        //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
        // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
        public function getAllBuyStockAll(){
        //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
        $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY rr_no , doc_no , partnumber , category , qty , ts_name , ts_create , hour DESC ";

        //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
        $stmt = $this->conn->prepare($sqlQuery);

        //คำสั่ง SQL ทำงาน
        $stmt->execute();

        //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
        return $stmt;
        }
    }

    class BuystockENM{
            //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
            private $conn;

            //ตัวแปรที่เก็บชื่อตาราง
            private $tb_name = "Sys_WarehouseManagement..sys_resive_pur1";

            //ตัวเเปรที่เก็บข้อมูลในตาราง
            public $message; //เเนะนำให้เพิ่มไฟล์นี้
            public $rr_no;
            public $doc_no;
            public $partnumber;
            public $category;
            public $qty;
            public $ts_name;
            public $ts_create;
            public $hour;

            //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
            public function __construct($db){
               $this->conn = $db;
            }

            //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
            // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
            public function getAllBuyStockENM(){
            //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
            $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY rr_no , doc_no , partnumber , category , qty , ts_name , ts_create , hour DESC ";

            //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
            $stmt = $this->conn->prepare($sqlQuery);

            //คำสั่ง SQL ทำงาน
            $stmt->execute();

            //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
            return $stmt;
            }
        }

        class BuystockCB{
                //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
                private $conn;

                //ตัวแปรที่เก็บชื่อตาราง
                private $tb_name = "Sys_WarehouseManagement..sys_resive_pur2";

                //ตัวเเปรที่เก็บข้อมูลในตาราง
                public $message; //เเนะนำให้เพิ่มไฟล์นี้
                public $rr_no;
                public $doc_no;
                public $partnumber;
                public $category;
                public $qty;
                public $ts_name;
                public $ts_create;
                public $hour;

                //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
                public function __construct($db){
                   $this->conn = $db;
                }

                //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
                // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
                public function getAllBuyStockCB(){
                //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
                $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY rr_no , doc_no , partnumber , category , qty , ts_name , ts_create , hour DESC ";

                //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
                $stmt = $this->conn->prepare($sqlQuery);

                //คำสั่ง SQL ทำงาน
                $stmt->execute();

                //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
                return $stmt;
                }
            }

            class BuystockSAM{
                    //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
                    private $conn;

                    //ตัวแปรที่เก็บชื่อตาราง
                    private $tb_name = "Sys_WarehouseManagement..sys_resive_pur3";

                    //ตัวเเปรที่เก็บข้อมูลในตาราง
                    public $message; //เเนะนำให้เพิ่มไฟล์นี้
                    public $rr_no;
                    public $doc_no;
                    public $partnumber;
                    public $category;
                    public $qty;
                    public $ts_name;
                    public $ts_create;
                    public $hour;

                    //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
                    public function __construct($db){
                       $this->conn = $db;
                    }

                    //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
                    // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
                    public function getAllBuyStockSAM(){
                    //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
                    $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY rr_no , doc_no , partnumber , category , qty , ts_name , ts_create , hour DESC ";

                    //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
                    $stmt = $this->conn->prepare($sqlQuery);

                    //คำสั่ง SQL ทำงาน
                    $stmt->execute();

                    //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
                    return $stmt;
                    }
                }

                class BuystockAB{
                        //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
                        private $conn;

                        //ตัวแปรที่เก็บชื่อตาราง
                        private $tb_name = "Sys_WarehouseManagement..sys_resive_pur4";

                        //ตัวเเปรที่เก็บข้อมูลในตาราง
                        public $message; //เเนะนำให้เพิ่มไฟล์นี้
                        public $rr_no;
                        public $doc_no;
                        public $partnumber;
                        public $category;
                        public $qty;
                        public $ts_name;
                        public $ts_create;
                        public $hour;

                        //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
                        public function __construct($db){
                           $this->conn = $db;
                        }

                        //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
                        // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
                        public function getAllBuyStockAB(){
                        //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
                        $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY rr_no , doc_no , partnumber , category , qty , ts_name , ts_create , hour DESC ";

                        //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
                        $stmt = $this->conn->prepare($sqlQuery);

                        //คำสั่ง SQL ทำงาน
                        $stmt->execute();

                        //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
                        return $stmt;
                        }
                    }

                    class BuystockETC{
                            //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
                            private $conn;

                            //ตัวแปรที่เก็บชื่อตาราง
                            private $tb_name = "Sys_WarehouseManagement..sys_resive_pur5";

                            //ตัวเเปรที่เก็บข้อมูลในตาราง
                            public $message; //เเนะนำให้เพิ่มไฟล์นี้
                            public $rr_no;
                            public $doc_no;
                            public $partnumber;
                            public $category;
                            public $qty;
                            public $ts_name;
                            public $ts_create;
                            public $hour;

                            //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
                            public function __construct($db){
                               $this->conn = $db;
                            }

                            //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
                            // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
                            public function getAllBuyStockETC(){
                            //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
                            $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY rr_no , doc_no , partnumber , category , qty , ts_name , ts_create , hour DESC ";

                            //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
                            $stmt = $this->conn->prepare($sqlQuery);

                            //คำสั่ง SQL ทำงาน
                            $stmt->execute();

                            //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
                            return $stmt;
                            }
                        }

?>