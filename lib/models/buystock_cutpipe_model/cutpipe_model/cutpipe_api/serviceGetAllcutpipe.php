<?php

    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    include_once "./database.php";
    include_once "./cutpipe.php";

    //สร้าง Object ที่ทำงานร่วมกับ DataBase และ Table
    $database = new Database();
    $db = $database->getConnection();

    $Sys_WarehouseManagement = new sys_resive_pipe($db);

    //เรียกใช้ฟังก์ชันที่สร้างไว้ในไฟล์ที่ทำงานกับตาราง
    $stmt = $sys_resive_pipe->getAllCutPipe();
    $num = $stmt->rowCount();

    if($num > 0){
        //มีข้อมูล
        $sys_resive_pipe_arr = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            extract($row);

            $sys_resive_pipe_item = array(
                "message" => "1",
                "partnumber" => $partnumber,
                "category" => $category,
                "doc_no" => $doc_no,
                "date_pipe" => $date_pipe,
                "qty_pipe" => $qty_pipe,
                "pipe_name" => $pipe_name,
                "ts_pipe" => $ts_pipe,
            );

                array_push($sys_resive_pipe_arr, $sys_resive_pipe_item);
            }
            //ทำให้ข้อมูลมาอยู่ในรูป Json
            http_response_code(200);
            echo json_encode($sys_resive_pipe_arr);
        }
        else if($num == 0){
            //ไม่มีข้อมูล
        $sys_resive_pipe_arr = array();

        $sys_resive_pipe_item = array(
            "message" => "2"
        );
        array_push($sys_resive_pipe_arr, $sys_resive_pipe_item);

        http_response_code(200);
        echo json_encode($sys_resive_pipe_arr);

        }
        else{
            //ต้องมีอะไรสักอย่าง
            $sys_resive_pipe_arr = array();

            $sys_resive_pipe_item = array(
                "message" => "3"
            );

            array_push($sys_resive_pipe_arr, $sys_resive_pipe_item);

            http_response_code(200);
            echo json_encode($sys_resive_pipe_arr);
        }

    ?>