<?php

class StockAdjustModel {
    public static function StockAdjust($partnumber, $description, $warehouse_name, $area_name,
    $row_name, $column_name, $shelf, $qty_in, $qty) {
    $sql = "SELECT *
    FROM Sys_WarehouseManagement..sys_updown_32
    WHERE partnumber = ? AND IsDelete = 0";
    $data = Database::queryWithSQL($sql, [$partnumber, $description, $warehouse_name, $area_name,
    $row_name, $column_name, $shelf, $qty_in, $qty]);
    return $data;
    }
}

class StockAdjustTypeModel {
    public static function StockAdjustType($type, $issueing_no, $qty_in_before_qty_in_after, $qty_before_qty_after,
    $qty_in_before_qty_in_after, $qty_before_qty_after, $qty_after, $ts_name, $ts_create) {
    $sql = "SELECT *
    FROM Sys_WarehouseManagement..sys_updown_detail
    WHERE  issueing_no = ? AND IsDelete = 0";
    $data = Database::queryWithSQL($sql, [$type, $issueing_no, $qty_in_before_qty_in_after, $qty_before_qty_after,
    $qty_in_before_qty_in_after, $qty_before_qty_after, $qty_after, $ts_name, $ts_create]);
    return $data;
    }
}