<?php

function dd($data) {
    echo json_encode($data, JSON_PRETTY_PRINT);
    exit();
}

function redirect() {
    header("location: /14.JOBTACKING/index.php");
    exit(0);
}

function get_base_url() {
    if (isset($_SERVER['HTTPS'])) {
        $protocol = ($_SERVER['HTTPS'] && $_SERVER['HTTPS'] != "off") ? "https" : "http";
    } else {
        $protocol = 'http';
    }
    return $protocol . "://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
}

function checkLoginBySection() {
    if (empty($_SESSION["login"])) {
        require 'redirect.html';
        die();
    }
}
