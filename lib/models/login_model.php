<?php

class LoginModel {
    public static function login($username, $password) {
        $sql = "SELECT TOP 1 login_user, login_password, login_name, login_personnal
        FROM Sys_SoftwareManagement..sys_Login
        WHERE login_user = ? AND login_password = ? AND IsDelete = 0";
        $data = Database::queryWithParameter($sql, [$username, $password]);
        return $data;
    }
}
