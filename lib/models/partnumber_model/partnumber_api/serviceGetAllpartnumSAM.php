<?php

    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    include_once "./database.php";
    include_once "./partnumber.php";

    //สร้าง Object ที่ทำงานร่วมกับ DataBase และ Table
    $database = new Database();
    $db = $database->getConnection();

    $Sys_WarehouseManagement = new sys_Shock_Absorber_Mounting32($db);

    //เรียกใช้ฟังก์ชันที่สร้างไว้ในไฟล์ที่ทำงานกับตาราง
    $stmt = $sys_Shock_Absorber_Mounting32->getAllPartNumberSAM();
    $num = $stmt->rowCount();

    if($num > 0){
        //มีข้อมูล
        $sys_Shock_Absorber_Mounting32_arr = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            extract($row);

            $sys_Shock_Absorber_Mounting32_item = array(
                "message" => "1",
                "pn" => $pn,
                "imgpic" => $imgpic,
                "doc_no" => $doc_no,
                "ts_create" => $ts_create,
                "description" => $description,
                "deliver_date" => $deliver_date,
                "qty" => $qty,
            );

                array_push($sys_Shock_Absorber_Mounting32_arr, $sys_Shock_Absorber_Mounting32_item);
            }
            //ทำให้ข้อมูลมาอยู่ในรูป Json
            http_response_code(200);
            echo json_encode($sys_Shock_Absorber_Mounting32_arr);
        }
        else if($num == 0){
            //ไม่มีข้อมูล
        $sys_Shock_Absorber_Mounting32_arr = array();

        $sys_Shock_Absorber_Mounting32_item = array(
            "message" => "2"
        );
        array_push($sys_Shock_Absorber_Mounting32_arr, $sys_Shock_Absorber_Mounting32_item);

        http_response_code(200);
        echo json_encode($sys_Shock_Absorber_Mounting32_arr);

        }
        else{
            //ต้องมีอะไรสักอย่าง
            $sys_Shock_Absorber_Mounting32_arr = array();

            $sys_Shock_Absorber_Mounting32_item = array(
                "message" => "3"
            );

            array_push($sys_Shock_Absorber_Mounting32_arr, $sys_Shock_Absorber_Mounting32_item);

            http_response_code(200);
            echo json_encode($sys_Shock_Absorber_Mounting32_arr);
        }

?>