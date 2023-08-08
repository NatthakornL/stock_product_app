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
    if (isset($_POST['part_upload']) && isset($_POST['type_description']) && isset($_POST['rubber']) && isset($_POST['qty']) && isset($_POST['issueing_qty'])
    && isset($_POST['want_issueing_qty']) && isset($_POST['qty_in']) && isset($_POST['qty_out']) && isset($_POST['qty_set']) && isset($_POST['qqty_receive']) 
    && isset($_POST['want_issueing_qty_qty_receive']) && isset($_POST['remark'])) {
        $part_upload = $_POST['part_upload'];
        $type_description = $_POST['type_description'];
        $rubber = $_POST['rubber'];
        $qty = $_POST['qty'];
        $issueing_qty = $_POST['issueing_qty'];
        $want_issueing_qty = $_POST['want_issueing_qty'];
        $qty_in = $_POST['qty_in'];
        $qty_out = $_POST['qty_out'];
        $qty_set = $_POST['qty_set'];
        $qty_receive = $_POST['qty_receive'];
        $want_issueing_qty_qty_receive = $_POST['want-issueing_qty_qty_receive'];
        $remark = $_POST['remark'];
        Database::connectToSysWarehouseManagement();
        $rs = OrderingDetailModel::OrderingDetail($part_upload, $type_description, $rubber, $qty, $issueing_qty, $want_issueing_qty,
        $qty_in, $qty_out, $qty_set, $qty_receive, $want_issueing_qty_qty_receive, $remark);
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