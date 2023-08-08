<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../configs/app.php';
include_once '../configs/database.php';
include_once '../configs/config.php';
include_once '../helper/function.php';
include_once '../models/ordering_model.php';

$result['success']  = false;

if ($_SERVER['REQUEST_METHOD'] != "POST") {
    $result['message'] = "Method Not Allowed.";
    echo json_encode($result, JSON_PRETTY_PRINT);
    die;
}

try {
    if (isset($_POST['doc_no']) && isset($_POST['customer_name']) && isset($_POST['deliver_date'])) {
        $doc_no = $_POST['doc_no'];
        $customer_name = $_POST['customer_name'];
        $deliver_date = $_POST['deliver_date'];
        Database::connectToSysWarehouseManagement();
        $rs = OrderingModel::Ordering($doc_no, $customer_name, $deliver_date);
        Database::close();

        if (count($rs) == 1) {
            $result['message'] = "Get Data Complete";
        } else {
            $result['message'] = "Failed to get data";
        }

    }

}catch (\Exception $e) {
    $result['error'] = $e->getMessage();
    $result['success'] = false;
    echo json_encode($result);
}

die;