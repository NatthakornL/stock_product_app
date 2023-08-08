<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../../../configs/app.php';
include_once '../../../configs/database.php';
include_once '../../../configs/config.php';
include_once '../../../helper/function.php';
include_once '../../../models/products/finished/product_finished_model.php';

$result['success'] = false;

if ($_SERVER['REQUEST_METHOD'] != "GET") {
    $result['message'] = "Method Not Allowed.";
    echo json_encode($result, JSON_PRETTY_PRINT);
    die;
}

try {
    if (isset($_GET['page']) && isset($_GET['pageSize'])) {
        $result['page'] = $_GET['page'];
        $result['pageSize'] = $_GET['pageSize'];

        $OFFSET = $result['page'] * $result['pageSize'];

        Database::connectToSysSoftwareManagement();
        $result['dataCount'] = ProductFinishedModel::getFinishedDoneCount();
        $result['pagination'] = round($result['dataCount'] / $result['pageSize']);
        $result['data'] = ProductFinishedModel::getFinishedDonePagination($OFFSET, $result['pageSize']);

        for ($i = 0; $i < count($result['data']); $i++) {
            $all_files = glob("../../../../../12.ROOMDATA/pic_partnumber_new/" . $result['data'][$i]['partnumber'] . "/*.*");
            if(count($all_files) > 0) {
                $image_name = basename($all_files[0]);
                $supported_format = array('gif', 'jpg', 'jpeg', 'png');
                $ext = strtolower(pathinfo($image_name, PATHINFO_EXTENSION));
                if (in_array($ext, $supported_format)) {
                    $result['data'][$i]['imageUrl'] = 'https://strubberdata.com/12.ROOMDATA/pic_partnumber_new/' . $result['data'][$i]['partnumber'] . '/' . $image_name;
                }
            } else {
                $result['data'][$i]['imageUrl'] = null;
            }
        }
        Database::close();

        $result['success'] = true;
    } else {
        $result['error'] = "The parameter is not set";
    }

    echo json_encode($result, JSON_PRETTY_PRINT);
} catch (\Exception $e) {
    $result['error'] = $e->getMessage();
    echo json_encode($result);
}

die;
