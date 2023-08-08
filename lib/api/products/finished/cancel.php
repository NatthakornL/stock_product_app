<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../../../configs/app.php';
include_once '../../../configs/database.php';
include_once '../../../configs/config.php';
include_once '../../../helper/function.php';
include_once '../../../models/products/finished/product_finished_model.php';

$result['success']  = false;

if ($_SERVER['REQUEST_METHOD'] != "POST") {
    $result['message'] = "Method Not Allowed.";
    echo json_encode($result, JSON_PRETTY_PRINT);
    die;
}

try {
    if (isset($_POST['id']) && isset($_POST['employee_name']) && isset($_POST['detail_ref']) && isset($_POST['qty_receive']) && isset($_POST['so_id'])) {
        $employee_name = $_POST['employee_name'];   
        $id = $_POST['id'];
        $detail_ref = $_POST['detail_ref'];
        $qty_receive = $_POST['qty_receive'];
        $so_id = $_POST['so_id'];

        Database::connectToSysSoftwareManagement();
        ProductFinishedModel::cancelFinsihed($id, $employee_name, $detail_ref, $qty_receive, $so_id);
        Database::close();

        $result['success'] = true;
    }
    echo json_encode($result, JSON_PRETTY_PRINT);
} catch (\Exception $e) {
    $result['error'] = $e->getMessage();
    $result['success'] = false;
    echo json_encode($result);
}

die;
