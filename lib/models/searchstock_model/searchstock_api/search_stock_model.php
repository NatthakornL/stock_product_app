<?php

class SearchStockModel {
    public static function SearchStock($partnumber, $prod_group, $category_name, $warehouse_name,
    $area_name, $row_name, $column_name, $shelf, $qty_in, $qty) {
    $sql = "SELECT *
    FROM Sys_WarehouseManagement..sys_Search_stock_32
    WHERE partnumber = ? AND prod_group = ? AND IsDelete = 0";
    $data = Database::queryWithSQL($sql, [$partnumber, $prod_group, $category_name, $warehouse_name,
    $area_name, $row_name, $column_name, $shelf, $qty_in, $qty]);
    return $data;
    }
}

class SearchStockWHModel {
    public static function SearchStockWH($warehouse_name, $area_name, $row_name, $column_name, $shelf,
    $prod_qty_in, $prod_qty_out, $type_code) {
    $sql = "SELECT *
    FROM Sys_WarehouseManagement..sys_area_order32
    WHERE partnumber = ? AND prod_group = ? AND IsDelete = 0";
    $data = Database::queryWithSQL($sql, [$warehouse_name, $area_name, $row_name, $column_name, $shelf,
    $prod_qty_in, $prod_qty_out, $type_code]);
    return $data;
    }
}

?>