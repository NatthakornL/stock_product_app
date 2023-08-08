<?php

include_once '/product_finished_query.php';

class ProductFinishedModel
{
    public static function getFinishedDoneCount()
    {
        return Database::queryGetRowCount(ProductFinishedQuery::getRawDoneQuery());
    }

    public static function getFinishedDoneSearchCount($searchText)
    {
        $searchSQL = ProductFinishedQuery::getSelectDoneQuery();
        $searchSQL .= ProductFinishedQuery::getFromDoneQuery();
        $searchSQL .= ProductFinishedQuery::getWhereDoneQuery();
        $searchSQL .= " AND (partnumber LIKE '%$searchText%' OR doc_no LIKE '%$searchText%' OR ts_name LIKE '%$searchText%')";
        $searchSQL .= ProductFinishedQuery::getOrderDoneQuery();
        return Database::queryGetRowCount($searchSQL);
    }

    public static function getFinishedDoneSearch($searchText, $OFFSET, $PAGESIZE)
    {
        $searchSQL = ProductFinishedQuery::getSelectDoneQuery();
        $searchSQL .= ProductFinishedQuery::getFromDoneQuery();
        $searchSQL .= ProductFinishedQuery::getWhereDoneQuery();
        $searchSQL .= " AND (partnumber LIKE '%$searchText%' OR doc_no LIKE '%$searchText%' OR ts_name LIKE '%$searchText%')";
        $searchSQL .= ProductFinishedQuery::getOrderDoneQuery();
        $searchSQL .= " OFFSET $OFFSET ROWS FETCH NEXT $PAGESIZE ROWS ONLY";
        return Database::queryWithSQL($searchSQL);
    }

    public static function getFinishedDonePagination($OFFSET, $PAGESIZE)
    {
        $finishedDoneQuery = ProductFinishedQuery::getSelectDoneQuery();
        $finishedDoneQuery .= ProductFinishedQuery::getFromDoneQuery();
        $finishedDoneQuery .= ProductFinishedQuery::getWhereDoneQuery();
        $finishedDoneQuery .= ProductFinishedQuery::getOrderDoneQuery();
        $paginationSQL = $finishedDoneQuery .= " OFFSET $OFFSET ROWS FETCH NEXT $PAGESIZE ROWS ONLY";
        return Database::queryWithSQL($paginationSQL);
    }

    public static function getFinishedNotDoneCount()
    {
        return Database::queryGetRowCount(ProductFinishedQuery::getRawNotDoneQuery());
    }

    public static function getFinishedNotDoneSearchCount($searchText)
    {
        $searchSQL = ProductFinishedQuery::getSelectNotDoneQuery();
        $searchSQL .= ProductFinishedQuery::getFromNotDoneQuery();
        $searchSQL .= " WHERE (partnumber LIKE '%$searchText%' OR doc_no LIKE '%$searchText%' OR ts_name LIKE '%$searchText%')";
        $searchSQL .= ProductFinishedQuery::getOrderNotDoneQuery();
        return Database::queryGetRowCount($searchSQL);
    }

    public static function getFinishedNotDoneSearch($searchText, $OFFSET, $PAGESIZE)
    {
        $searchSQL = ProductFinishedQuery::getSelectNotDoneQuery();
        $searchSQL .= ProductFinishedQuery::getFromNotDoneQuery();
        $searchSQL .= " WHERE (partnumber LIKE '%$searchText%' OR doc_no LIKE '%$searchText%' OR ts_name LIKE '%$searchText%')";
        $searchSQL .= ProductFinishedQuery::getOrderNotDoneQuery();
        $searchSQL .= " OFFSET $OFFSET ROWS FETCH NEXT $PAGESIZE ROWS ONLY";
        return Database::queryWithSQL($searchSQL);
    }

    public static function getFinishedNotDonePagination($OFFSET, $PAGESIZE)
    {
        $finishedNotDoneQuery = ProductFinishedQuery::getSelectNotDoneQuery();
        $finishedNotDoneQuery .= ProductFinishedQuery::getFromNotDoneQuery();
        $finishedNotDoneQuery .= ProductFinishedQuery::getOrderNotDoneQuery();
        $paginationSQL = $finishedNotDoneQuery .= " OFFSET $OFFSET ROWS FETCH NEXT $PAGESIZE ROWS ONLY";
        return Database::queryWithSQL($paginationSQL);
    }

    public static function cancelFinsihed($id, $employee_name, $detail_ref, $qty_receive, $so_id)
    {
        $timeupdate = date('Y-m-d H:i:s');

        // ยกเลิกการรับ
        $sql = "UPDATE Sys_WorkingTag..finishedgoods_data 
        SET qty_receive = ?, ts_receive = ?, receive_name = ?, IsReceive = ?, ts_cancel = ?, can_name = ?
        WHERE id = ?";
        Database::queryWithParameter($sql, [
            NULL,
            NULL,
            NULL,
            0,
            $timeupdate,
            $employee_name,
            $id
        ]);

        // ลบข้อมูลของที่ขาด
        $sql = "UPDATE Sys_WarehouseManagement..lost_data 
        SET IsDelete = ?, ts_delete = ?, del_name = ?
        WHERE fg_ref = ?";
        Database::queryWithParameter($sql, [
            1,
            $timeupdate,
            $employee_name,
            $id
        ]);

        // ลบการยืนยัน
        $sql = "UPDATE Sys_WorkingTag..tracebill_detail 
        SET ts_fg2 = ?, fg2_name = ?
        WHERE record_id = ?";
        Database::queryWithParameter($sql, [
            $timeupdate,
            $employee_name,
            $detail_ref
        ]);

        // หักออกจากจำนวนแพ็คกิ้ง
        $sql = "UPDATE Sys_WorkingTag..tracebill_detail 
        SET qty_packing = qty_packing - $qty_receive, ts_packing = ?, packing_name = ?
        WHERE record_id = ?";
        Database::queryWithParameter($sql, [
            $timeupdate,
            $employee_name,
            $detail_ref
        ]);

        // อัพเดตแพ็คกิ้ง
        $sql = "UPDATE Sys_WorkingTag..tracebill 
        SET ts_packing = ?, packing_name = ?
        WHERE so_id = ?";
        Database::queryWithParameter($sql, [
            $timeupdate,
            $employee_name,
            $so_id
        ]);
    }

    public static function submitFinished($id, $part, $type_id, $so_id, $detail_ref, $tran_ref, $employee_name, $qty_send, $qty_packing, $qty_stock, $remark_resive, $issueing_ref, $order_ref, $trace_id)
    {
        if ($id != "") {
            $timeupdate = date('Y-m-d H:i:s');
            $sql = "UPDATE Sys_WorkingTag..finishedgoods_data 
            SET qty_receive = ?, qty_stock = ?, ts_receive=?, receive_name = ?, IsReceive = ?, remark_resive = ?
            WHERE id = ?";
            Database::queryWithParameter($sql, [
                $qty_packing,
                $qty_stock,
                $timeupdate,
                $employee_name,
                1,
                $remark_resive,
                $id
            ]);

            // ถ้าจำนวนที่รับ Packing < จำนวนที่ส่งมา ให้ insert ของหาย
            if ($qty_packing < $qty_send) {
                $sql = "INSERT INTO Sys_WarehouseManagement..lost_data (
                    part_id,
                    type_id,
                    qty_send,
                    qty_receive,
                    qty_want,
                    ts_create,
                    ts_name,
                    issueing_ref,
                    so_id,
                    detail_ref,
                    tran_ref,
                    fg_ref,
                    category_id
                    ) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                Database::queryWithParameter($sql, [
                    $part,
                    $type_id,
                    $qty_send == "" ? 0 : $qty_send,
                    $qty_packing == "" ? 0 : $qty_packing,
                    $qty_send - $qty_packing,
                    $timeupdate,
                    $employee_name,
                    $issueing_ref,
                    $so_id,
                    $detail_ref,
                    $tran_ref,
                    $id,
                    31
                ]);
            } else {
                $sql = "UPDATE Sys_WorkingTag..tracebill_detail 
                SET ts_fg2 = ?, fg2_name = ?
                WHERE record_id = ?";
                Database::queryWithParameter($sql, [
                    $timeupdate,
                    $employee_name,
                    $detail_ref
                ]);
            }

            // ถ้า detail_ref ไม่ใช่ค่าว่าง
            if ($detail_ref != "") {
                $sql = "UPDATE Sys_WorkingTag..tracebill_detail 
                SET qty_packing = qty_packing + $qty_packing, ts_packing = ?, packing_name = ?
                WHERE record_id = ?";
                Database::queryWithParameter($sql, [
                    $timeupdate,
                    $employee_name,
                    $detail_ref
                ]);

                $sql = "UPDATE Sys_WorkingTag..tracebill 
                SET ts_packing = ?, packing_name = ?
                WHERE trace_id = ?";
                Database::queryWithParameter($sql, [
                    $timeupdate,
                    $employee_name,
                    $trace_id
                ]);
            }

            // อัพเดตของหาย ถ้า order_ref ไม่เท่ากับค่าว่าง
            if ($order_ref != "") {
                $sql = "UPDATE Sys_WorkingTag..tracebill_detail 
                SET qty_packing = qty_packing + $qty_packing, ts_packing = ?, packing_name = ?
                WHERE record_id = ?";
                Database::queryWithParameter($sql, [
                    $timeupdate,
                    $employee_name,
                    $order_ref
                ]);

                $sql = "UPDATE Sys_WorkingTag..tracebill 
                SET ts_packing = ?,  packing_name = ?
                WHERE trace_id = ?";
                Database::queryWithParameter($sql, [
                    $timeupdate,
                    $employee_name,
                    $trace_id
                ]);
            }
        }
    }
}
