<?php
class Database {
    public static $conn = null;

    public static $connectionToSysSoftwareManagementInfo = array(
        "Database" => ST_DB_SOFTWAREMANAGEMENT,
        "UID" => ST_DB_USER,
        "PWD" => ST_DB_PASSWORD,
        "MultipleActiveResultSets" => true,
        "ReturnDatesAsStrings" => true,
        "CharacterSet" => 'UTF-8'
    );

    public static $connectionToSysWarehouseManagement = array(
        "Database" => ST_DB_WAREHOUSEMANAGEMENT,
        "UID" => ST_DB_USER,
        "PWD" => ST_DB_PASSWORD,
        "MultipleActiveResultSets" => true,
        "ReturnDatesAsStrings" => true,
        "CharacterSet" => 'UTF-8'
    );

    public static $connectionToSysWorkingTag = array(
        "Database" => ST_DB_WORKINGTAG,
        "UID" => ST_DB_USER,
        "PWD" => ST_DB_PASSWORD,
        "MultipleActiveResultSets" => true,
        "ReturnDatesAsStrings" => true,
        "CharacterSet" => 'UTF-8'
    );

    public static $connectionToSTTEST = array(
        "Database" => ST_DB_TEST,
        "UID" => ST_DB_USER,
        "PWD" => ST_DB_PASSWORD,
        "MultipleActiveResultSets" => true,
        "ReturnDatesAsStrings" => true,
        "CharacterSet" => 'UTF-8'
    );

    public static $connectionToSTMobile = array(
        "Database" => ST_DB_MOBILE,
        "UID" => ST_DB_USER,
        "PWD" => ST_DB_PASSWORD,
        "MultipleActiveResultSets" => true,
        "ReturnDatesAsStrings" => true,
        "CharacterSet" => 'UTF-8'
    );

    public static function connectToSysSoftwareManagement() {
        try {
            self::$conn = sqlsrv_connect(ST_DB_HOST, self::$connectionToSysSoftwareManagementInfo);
            if (self::$conn == false) {
                die(print_r(sqlsrv_errors(), true));
            }
        } catch (\Throwable $th) {
            throw $th;
        }
    }

    public static function connectToSysWarehouseManagement() {
        try {
            self::$conn = sqlsrv_connect(ST_DB_HOST, self::$connectionToSysWarehouseManagement);
            if (self::$conn == false) {
                die(print_r(sqlsrv_errors(), true));
            }
        } catch (\Throwable $th) {
            throw $th;
        }
    }

    public static function connectToSysWorkingTag() {
        try {
            self::$conn = sqlsrv_connect(ST_DB_HOST, self::$connectionToSysWorkingTag);
            if (self::$conn == false) {
                die(print_r(sqlsrv_errors(), true));
            }
        } catch (\Throwable $th) {
            throw $th;
        }
    }

    public static function connectToSTTEST() {
        try {
            self::$conn = sqlsrv_connect(ST_DB_HOST, self::$connectionToSTTEST);
            if (self::$conn == false) {
                die(print_r(sqlsrv_errors(), true));
            }
        } catch (\Throwable $th) {
            throw $th;
        }
    }

    public static function connectToSTMobile() {
        try {
            self::$conn = sqlsrv_connect(ST_DB_HOST, self::$connectionToSTMobile);
            if (self::$conn == false) {
                die(print_r(sqlsrv_errors(), true));
            }
        } catch (\Throwable $th) {
            throw $th;
        }
    }

    public static function close() {
        if (self::$conn) {
            sqlsrv_close(self::$conn);
        }
    }

    public static function queryWithSQL($sql) {
        $stmt  = sqlsrv_query(self::$conn, $sql);
        $result = array();
        while ($row = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
            array_push($result, $row);
        }
        sqlsrv_free_stmt($stmt);
        return $result;
    }

    public static function queryWithParameter($sql, $parameter) {
        $stmt  = sqlsrv_query(self::$conn, $sql, $parameter);
        $result = array();
        while ($row = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
            array_push($result, $row);
        }
        sqlsrv_free_stmt($stmt);
        return $result;
    }

    public static function queryGetRowCount($sql) {
        $params = array();
        $options = array("Scrollable" => SQLSRV_CURSOR_KEYSET);
        $stmt = sqlsrv_query(self::$conn, $sql, $params, $options);

        return sqlsrv_num_rows($stmt);
    }

    public static function transactionBegin() {
        if (sqlsrv_begin_transaction(self::$conn) === false) {
            die(print_r(sqlsrv_errors(), true));
        }
    }

    public static function rollback() {
        sqlsrv_rollback(self::$conn);
    }

    public static function commit() {
        sqlsrv_commit(self::$conn);
    }
}
