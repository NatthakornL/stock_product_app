<?php

    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    include_once "./database.php";
    include_once "./ordering.php";

    //สร้าง Object ที่ทำงานร่วมกับ DataBase และ Table
    $database = new Database();
    $db = $database->getConnection();

    $Sys_WarehouseManagement = new sys_show_order32($db);

    //เรียกใช้ฟังก์ชันที่สร้างไว้ในไฟล์ที่ทำงานกับตาราง
    $stmt = $sys_show_order32->getAllOrderingDetail();
    $num = $stmt->rowCount();

    if($num > 0){
        //มีข้อมูล
        $sys_show_order32_arr = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            extract($row);

            $sys_show_order32_item = array(
                "message" => "1",
                "part_upload" => $part_upload,
                "type_description" => $type_description,
                "rubber" => $rubber,
                "qty" => $qty,
                "issueing_qty" => $issueing_qty,
                "want-issueing_qty" => $want_issueing_qty,
                "qty_in" => $qty_in,
                "qty_out" => $qty_out,
                "qty_set" => $qty_set,
                "qty_receive" => $qty_receive,
                "want-issueing_qty-qty_receive" => $want_issueing_qty_qty_receive,
                "remark" => $remark,
            );

                array_push($sys_show_order32_arr, $sys_show_order32_item);
            }
            //ทำให้ข้อมูลมาอยู่ในรูป Json
            http_response_code(200);
            echo json_encode($sys_show_order32_arr);
        }
        else if($num == 0){
            //ไม่มีข้อมูล
        $sys_show_order32_arr = array();

        $sys_show_order32_item = array(
            "message" => "2"
        );
        array_push($sys_show_order32_arr, $sys_show_order32_item);

        http_response_code(200);
        echo json_encode($sys_show_order32_arr);

        }
        else{
            //ต้องมีอะไรสักอย่าง
            $sys_show_order32_arr = array();

            $sys_show_order32_item = array(
                "message" => "3"
            );

            array_push($sys_show_order32_arr, $sys_show_order32_item);

            http_response_code(200);
            echo json_encode($sys_show_order32_arr);
        }

    ?>