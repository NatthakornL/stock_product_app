<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

include_once '../configs/app.php';
include_once '../configs/database.php';
include_once '../configs/config.php';
include_once '../helper/function.php';
include_once '../models/login_model.php';

$result['success']  = false;

if ($_SERVER['REQUEST_METHOD'] != "POST") {
    $result['message'] = "Method Not Allowed.";
    echo json_encode($result, JSON_PRETTY_PRINT);
    die;
}

try {
    if (isset($_POST['username']) && isset($_POST['password'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];
        Database::connectToSysSoftwareManagement();
        $rs = LoginModel::login($username, $password);
        Database::close();

        if (count($rs) == 1) {
            $result['success'] = true;
            $result['user'] = $rs[0];
            
            $all_files = glob("../../../4.HRM/personnel_img/" .$result['user']['login_personnal']. "/*.*");
            if (count($all_files) > 0) {
                $image_name = basename($all_files[0]);
                $supported_format = array('gif', 'jpg', 'jpeg', 'png');
                $ext = strtolower(pathinfo($image_name, PATHINFO_EXTENSION));
                if (in_array($ext, $supported_format)) {
                    $result['user']['imageProfile'] = 'https://strubberdata.com/4.HRM/personnel_img/' .$result['user']['login_personnal']. '/' .$image_name;
                }
            } else {
                $result['user']['imageProfile'] = null;
            }

            $result['message'] = "Login Success";
        } else {
            $result['message'] = "username or password is invalid";
        }
    }
    echo json_encode($result, JSON_PRETTY_PRINT);
} catch (\Exception $e) {
    $result['error'] = $e->getMessage();
    $result['success'] = false;
    echo json_encode($result);
}

die;
