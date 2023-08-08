<?php

class OrderingModel {
    public static function Ordering($doc_no, $customer_name, $deliver_date) {
        $sql = "SELECT doc_no, customer_name, deliver_date
        FROM Sys_WarehouseManagement..sys_order_action32
        WHERE  doc_no = ? AND customer_name = ? AND deliver_date = ?";
        $data = Database::queryWithSQL($sql, [$doc_no, $customer_name, $deliver_date]);
        return $data;
    }
}

class OrderingDetailModel {
    public static function OrderingDetail($part_upload, $type_description, $rubber, $qty, $issueing_qty,
    $want_issueing_qty, $qty_in, $qty_out, $qty_set, $qty_receive, $want_issueing_qty_qty_receive, $remark) {
    $sql = "SELECT *
    FROM Sys_WarehouseManagement..sys_show_order32
    WHERE ";
    $data = Database::queryWithSQL($sql, [$part_upload, $type_description, $rubber, $qty, $issueing_qty,
    $want_issueing_qty, $qty_in, $qty_out, $qty_set, $qty_receive, $want_issueing_qty_qty_receive, $remark]);
    return $data;
    }
}

class OrderingWHModel {
    public static function OrderingWH($warehouse_name, $area_name, $row_name, $column_name, $shelf,
    $prod_qty_in, $prod_qty_out, $type_code) {
    $sql = "SELECT *
    FROM Sys_WarehouseManagement..sys_show_order32
    WHERE  ";
    $data = Database::queryWithSQL($sql, [$warehouse_name, $area_name, $row_name, $column_name, $shelf,
    $prod_qty_in, $prod_qty_out, $type_code]);
    return $data;
    }
}

?>