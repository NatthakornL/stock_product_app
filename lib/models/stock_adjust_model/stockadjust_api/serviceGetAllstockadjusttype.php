<?php

    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    include_once "./database.php";
    include_once "./stock_adjust.php";

    //สร้าง Object ที่ทำงานร่วมกับ DataBase และ Table
    $database = new Database();
    $db = $database->getConnection();

    $Sys_WarehouseManagement = new sys_updown_detail($db);

    //เรียกใช้ฟังก์ชันที่สร้างไว้ในไฟล์ที่ทำงานกับตาราง
    $stmt = $sys_updown_detail->getAllStockAdjustType();
    $num = $stmt->rowCount();

    if($num > 0){
        //มีข้อมูล
        $sys_updown_detail_arr = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            extract($row);

            $sys_updown_detail_item = array(
                "message" => "1",
                "type" => $type,
                "issueing_no" => $issueing_no,
                "qty_in_before_qty_in_after" => $qty_in_before_qty_in_after,
                "qty_before_qty_after" => $qty_before_qty_after,
                "qty_in_before_qty_in_after" => $qty_in_before_qty_in_after,
                "qty_before_qty_after" => $qty_before_qty_after,
                "qty_after" => $qty_after,
                "ts_name" => $ts_name,
                "ts_create" => $ts_create,
            );

                array_push($sys_updown_detail_arr, $sys_updown_detail_item);
            }
            //ทำให้ข้อมูลมาอยู่ในรูป Json
            http_response_code(200);
            echo json_encode($sys_updown_detail_arr);
        }
        else if($num == 0){
            //ไม่มีข้อมูล
        $sys_updown_detail_arr = array();

        $sys_updown_detail_item = array(
            "message" => "2"
        );
        array_push($sys_updown_detail_arr, $sys_updown_detail_item);

        http_response_code(200);
        echo json_encode($sys_updown_detail_arr);

        }
        else{
            //ต้องมีอะไรสักอย่าง
            $sys_updown_detail_arr = array();

            $sys_updown_detail_item = array(
                "message" => "3"
            );

            array_push($sys_updown_detail_arr, $sys_updown_detail_item);

            http_response_code(200);
            echo json_encode($sys_updown_detail_arr);
        }

    ?>