<?php

    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    include_once '../configs/app.php';
    include_once '../configs/database.php';
    include_once '../configs/config.php';
    include_once '../helper/function.php';
    include_once '../models/ordering_model.php';

    //สร้าง Object ที่ทำงานร่วมกับ DataBase และ Table
    $database = new Database();
    $db = $database->connectToSysWarehouseManagement();

    $Sys_WarehouseManagement = new sys_order_action32($db);

    //เรียกใช้ฟังก์ชันที่สร้างไว้ในไฟล์ที่ทำงานกับตาราง
    $stmt = $sys_order_action32->getAllOrdering();
    $num = $stmt->rowCount();

    if($num > 0){
        //มีข้อมูล
        $sys_order_action32_arr = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            extract($row);

            $sys_order_action32_item = array(
                "message" => "1",
                "doc_no" => $doc_no,
                "customer_name" => $customer_name,
                "deliver_date" => $deliver_date,
            );

                array_push($sys_order_action32_arr, $sys_order_action32_item);
            }
            //ทำให้ข้อมูลมาอยู่ในรูป Json
            http_response_code(200);
            echo json_encode($sys_order_action32_arr);
        }
        else if($num == 0){
            //ไม่มีข้อมูล
        $sys_order_action32_arr = array();

        $sys_order_action32_item = array(
            "message" => "2"
        );
        array_push($sys_order_action32_arr, $sys_order_action32_item);

        http_response_code(200);
        echo json_encode($sys_order_action32_arr);

        }
        else{
            //ต้องมีอะไรสักอย่าง
            $sys_order_action32_arr = array();

            $sys_order_action32_item = array(
                "message" => "3"
            );

            array_push($sys_order_action32_arr, $sys_order_action32_item);

            http_response_code(200);
            echo json_encode($sys_order_action32_arr);
        }

    ?>