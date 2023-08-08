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
    $stmt = $sys_show_order32->getAllOrderingWH();
    $num = $stmt->rowCount();

    if($num > 0){
        //มีข้อมูล
        $sys_show_order32_arr = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            extract($row);

            $sys_show_order32_item = array(
                "message" => "1",
                "warehouse_name" => $warehouse_name,
                "area_name" => $area_name,
                "row_name" => $row_name,
                "column_name" => $column_name,
                "shelf" => $shelf,
                "prod_qty_in" => $prod_qty_in,
                "prod_qty_out" => $prod_qty_out,
                "type_code" => $type_code,
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