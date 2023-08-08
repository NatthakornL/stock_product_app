<?php

include_once '/product_manufacture_query.php';

class ProductManufactureModel
{
    public static function getManufactureDoneCount()
    {
        return Database::queryGetRowCount(ProductManufactureQuery::getRawDoneQuery());
    }

    public static function getManufactureDoneSearchCount($searchText)
    {
        $searchSQL = ProductManufactureQuery::getSelectDoneQuery();
        $searchSQL .= ProductManufactureQuery::getFromDoneQuery();
        $searchSQL .= ProductManufactureQuery::getWhereDoneQuery();
        $searchSQL .= " AND (partnumber LIKE '%$searchText%' OR doc_no LIKE '%$searchText%' OR ts_name LIKE '%$searchText%')";
        $searchSQL .= ProductManufactureQuery::getOrderDoneQuery();
        return Database::queryGetRowCount($searchSQL);
    }

    public static function getManufactureDoneSearch($searchText, $OFFSET, $PAGESIZE)
    {
        $searchSQL = ProductManufactureQuery::getSelectDoneQuery();
        $searchSQL .= ProductManufactureQuery::getFromDoneQuery();
        $searchSQL .= ProductManufactureQuery::getWhereDoneQuery();
        $searchSQL .= " AND (partnumber LIKE '%$searchText%' OR doc_no LIKE '%$searchText%' OR ts_name LIKE '%$searchText%')";
        $searchSQL .= ProductManufactureQuery::getOrderDoneQuery();
        $searchSQL .= " OFFSET $OFFSET ROWS FETCH NEXT $PAGESIZE ROWS ONLY";
        return Database::queryWithSQL($searchSQL);
    }

    public static function getManufactureDonePagination($OFFSET, $PAGESIZE)
    {
        $manufactureDoneQuery = ProductManufactureQuery::getSelectDoneQuery();
        $manufactureDoneQuery .= ProductManufactureQuery::getFromDoneQuery();
        $manufactureDoneQuery .= ProductManufactureQuery::getWhereDoneQuery();
        $manufactureDoneQuery .= ProductManufactureQuery::getOrderDoneQuery();
        $paginationSQL = $manufactureDoneQuery .= " OFFSET $OFFSET ROWS FETCH NEXT $PAGESIZE ROWS ONLY";
        return Database::queryWithSQL($paginationSQL);
    }

    public static function getManufactureNotDoneCount()
    {
        return Database::queryGetRowCount(ProductManufactureQuery::getRawNotDoneQuery());
    }

    public static function getManufactureNotDoneSearchCount($searchText)
    {
        $searchSQL = ProductManufactureQuery::getSelectNotDoneQuery();
        $searchSQL .= ProductManufactureQuery::getFromNotDoneQuery();
        $searchSQL .= " WHERE (partnumber LIKE '%$searchText%' OR doc_no LIKE '%$searchText%' OR ts_name LIKE '%$searchText%')";
        $searchSQL .= ProductManufactureQuery::getOrderNotDoneQuery();
        return Database::queryGetRowCount($searchSQL);
    }

    public static function getManufactureNotDoneSearch($searchText, $OFFSET, $PAGESIZE)
    {
        $searchSQL = ProductManufactureQuery::getSelectNotDoneQuery();
        $searchSQL .= ProductManufactureQuery::getFromNotDoneQuery();
        $searchSQL .= " WHERE (partnumber LIKE '%$searchText%' OR doc_no LIKE '%$searchText%' OR ts_name LIKE '%$searchText%')";
        $searchSQL .= ProductManufactureQuery::getOrderNotDoneQuery();
        $searchSQL .= " OFFSET $OFFSET ROWS FETCH NEXT $PAGESIZE ROWS ONLY";
        return Database::queryWithSQL($searchSQL);
    }

    public static function getManufactureNotDonePagination($OFFSET, $PAGESIZE)
    {
        $manufactureNotDoneQuery = ProductManufactureQuery::getSelectNotDoneQuery();
        $manufactureNotDoneQuery .= ProductManufactureQuery::getFromNotDoneQuery();
        $manufactureNotDoneQuery .= ProductManufactureQuery::getOrderNotDoneQuery();
        $paginationSQL = $manufactureNotDoneQuery .= " OFFSET $OFFSET ROWS FETCH NEXT $PAGESIZE ROWS ONLY";
        return Database::queryWithSQL($paginationSQL);
    }

    public static function submitManufacture($id, $employee_name, $qty_packing, $qty_stock, $remark_resive, $detail_ref, $order_ref, $trace_id)
    {
        if ($id != "") {
            $timeupdate = date('Y-m-d H:i:s');
            $sql = "UPDATE Sys_WorkingTag..finishedgoods_data 
            SET qty_receive = ?, qty_stock = ?, ts_receive = ?, receive_name = ?, IsReceive = ?, remark_resive = ?
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

            if ($detail_ref!= "") {
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

            // อัพเดตของหาย
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
                SET ts_packing = ?, packing_name = ?
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
