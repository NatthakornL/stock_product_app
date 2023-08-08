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
    if (
        isset($_POST['id']) && isset($_POST['part']) && isset($_POST['type_id']) &&
        isset($_POST['so_id']) && isset($_POST['tran_ref']) && isset($_POST['employee_name']) &&
        isset($_POST['qty_send']) && isset($_POST['qty_packing']) && isset($_POST['qty_stock']) &&
        isset($_POST['issueing_ref']) && isset($_POST['trace_id'])
    ) {
        $id = $_POST['id'];
        $part = $_POST['part'];
        $type_id = $_POST['type_id'];
        $so_id = $_POST['so_id'];
        $tran_ref = $_POST['tran_ref'];
        $employee_name = $_POST['employee_name'];
        $qty_send = $_POST['qty_send'];
        $qty_packing = $_POST['qty_packing'];
        $qty_stock = $_POST['qty_stock'];
        $issueing_ref = $_POST['issueing_ref'];
        $trace_id = $_POST['trace_id'];

        $remark_resive = isset($_POST['remark_resive']) ? $_POST['remark_resive'] : null;
        $detail_ref = isset($_POST['detail_ref']) ? $_POST['detail_ref'] : "";
        $order_ref = isset($_POST['order_ref']) ? $_POST['order_ref'] : "";

        Database::connectToSysSoftwareManagement();
        ProductFinishedModel::submitFinished(
            $id,
            $part,
            $type_id,
            $so_id,
            $detail_ref,
            $tran_ref,
            $employee_name,
            $qty_send,
            $qty_packing,
            $qty_stock,
            $remark_resive,
            $issueing_ref,
            $order_ref,
            $trace_id
        );
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