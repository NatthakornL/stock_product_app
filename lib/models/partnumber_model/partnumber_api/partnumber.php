<?php

   class PartnumberAll{
        //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
        private $conn;

        //ตัวแปรที่เก็บชื่อตาราง
        private $tb_name = "Sys_WarehouseManagement..sys_all";

        //ตัวเเปรที่เก็บข้อมูลในตาราง
        public $message; //เเนะนำให้เพิ่มไฟล์นี้
        public $pn;
        public $imgpart;
        public $grade;
        public $doc_no;
        public $ts_create;
        public $description;
        public $deliver_date;
        public $qty;

        //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
        public function __construct($db){
           $this->conn = $db;
        }

        //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
        // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
        public function getAllPartnumberAll(){
        //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
        $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY pn , imgpart , grade ,  doc_no , ts_create , description , deliver_date , qty DESC ";

        //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
        $stmt = $this->conn->prepare($sqlQuery);

        //คำสั่ง SQL ทำงาน
        $stmt->execute();

        //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
        return $stmt;
        }
    }

   class PartnumberENM{
            //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
            private $conn;

            //ตัวแปรที่เก็บชื่อตาราง
            private $tb_name = "Sys_WarehouseManagement..sys_Engine_Mounting32";

            //ตัวเเปรที่เก็บข้อมูลในตาราง
            public $message; //เเนะนำให้เพิ่มไฟล์นี้
            public $pn;
            public $imgpart;
            public $grade;
            public $doc_no;
            public $ts_create;
            public $description;
            public $deliver_date;
            public $qty;

            //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
            public function __construct($db){
               $this->conn = $db;
            }

            //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
            // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
            public function getAllPartnumberENM(){
            //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
            $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY pn , imgpart , grade , doc_no , ts_create , description , deliver_date , qty DESC ";

            //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
            $stmt = $this->conn->prepare($sqlQuery);

            //คำสั่ง SQL ทำงาน
            $stmt->execute();

            //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
            return $stmt;
            }
        }

    
   class PartnumberCB{
                //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
                private $conn;

                //ตัวแปรที่เก็บชื่อตาราง
                private $tb_name = "Sys_WarehouseManagement..sys_Center_Bearing32";

                //ตัวเเปรที่เก็บข้อมูลในตาราง
                public $message; //เเนะนำให้เพิ่มไฟล์นี้
                public $pn;
                public $imgpart;
                public $grade;
                public $doc_no;
                public $ts_create;
                public $description;
                public $deliver_date;
                public $qty;

                //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
                public function __construct($db){
                   $this->conn = $db;
                }

                //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
                // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
                public function getAllPartnumberCB(){
                //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
                $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY pn , imgpart , grade , doc_no , ts_create , description , deliver_date , qty DESC ";

                //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
                $stmt = $this->conn->prepare($sqlQuery);

                //คำสั่ง SQL ทำงาน
                $stmt->execute();

                //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
                return $stmt;
                }
            }

   class PartnumberSAM{
                    //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
                    private $conn;

                    //ตัวแปรที่เก็บชื่อตาราง
                    private $tb_name = "Sys_WarehouseManagement..sys_Shock_Absorber_Mounting32";

                    //ตัวเเปรที่เก็บข้อมูลในตาราง
                    public $message; //เเนะนำให้เพิ่มไฟล์นี้
                    public $pn;
                    public $imgpart;
                    public $grade;
                    public $doc_no;
                    public $ts_create;
                    public $description;
                    public $deliver_date;
                    public $qty;

                    //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
                    public function __construct($db){
                       $this->conn = $db;
                    }

                    //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
                    // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
                    public function getAllPartnumberSAM(){
                    //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
                    $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY pn , imgpart , grade , doc_no , ts_create , description , deliver_date , qty DESC ";

                    //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
                    $stmt = $this->conn->prepare($sqlQuery);

                    //คำสั่ง SQL ทำงาน
                    $stmt->execute();

                    //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
                    return $stmt;
                    }
                }

   class PartnumberAB{
                        //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
                        private $conn;

                        //ตัวแปรที่เก็บชื่อตาราง
                        private $tb_name = "Sys_WarehouseManagement..sys_Bushing32";

                        //ตัวเเปรที่เก็บข้อมูลในตาราง
                        public $message; //เเนะนำให้เพิ่มไฟล์นี้
                        public $pn;
                        public $imgpart;
                        public $grade;
                        public $doc_no;
                        public $ts_create;
                        public $description;
                        public $deliver_date;
                        public $qty;

                        //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
                        public function __construct($db){
                           $this->conn = $db;
                        }

                        //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
                        // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
                        public function getAllPartnumberAB(){
                        //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
                        $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY pn , imgpart , grade , doc_no , ts_create , description , deliver_date , qty DESC ";

                        //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
                        $stmt = $this->conn->prepare($sqlQuery);

                        //คำสั่ง SQL ทำงาน
                        $stmt->execute();

                        //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
                        return $stmt;
                        }
                    }

   class PartnumberETC{
                            //ตัวแปรที่ทำงานกับการติดต่อฐานข้อมูล
                            private $conn;

                            //ตัวแปรที่เก็บชื่อตาราง
                            private $tb_name = "Sys_WarehouseManagement..sys_other32";

                            //ตัวเเปรที่เก็บข้อมูลในตาราง
                            public $message; //เเนะนำให้เพิ่มไฟล์นี้
                            public $pn;
                            public $imgpart;
                            public $grade;
                            public $doc_no;
                            public $ts_create;
                            public $description;
                            public $deliver_date;
                            public $qty;

                            //คอนสรักเตอร์ ทำงานติดต่อกับฐานข้อมูลมีการเรียกใช้ไฟล์นี้
                            public function __construct($db){
                               $this->conn = $db;
                            }

                            //-- เป็นส่วนของฟังก์ชันต่างๆ ที่ทำงานกับ Database
                            // ฟังก์ชันดึงข้อมูลทั้งหมดในตาราง
                            public function getAllPartnumberETC(){
                            //สร้างตัวแปรเก็บคำสั่ง SQL เพื่อไปดึงข้อมูลทั้งหมดใน
                            $sqlQuery = "Select * from ". $this->tb_name . " ORDER BY pn , imgpart , grade , doc_no , ts_create , description , deliver_date , qty DESC ";

                            //สร้าง Prepared Statment เพื่อทำงานกับคำสั่ง SQL
                            $stmt = $this->conn->prepare($sqlQuery);

                            //คำสั่ง SQL ทำงาน
                            $stmt->execute();

                            //ส่งผลลัพท์ที่ได้จากการทำงานของคำสั่ง SQL ไปใช้งานเมื่อมีเรัยกใชฟังก์ชันนี้
                            return $stmt;
                            }
                        }

?>