<?php

include_once '/product_purchase_query.php';

class ProductPurchaseModel
{
    public static function getPurchaseDoneCount()
    {
        return Database::queryGetRowCount(ProductPurchaseQuery::getRawDoneQuery());
    }

    public static function getPurchaseDoneSearchCount($searchText)
    {
        $searchSQL = ProductPurchaseQuery::getSelectDoneQuery();
        $searchSQL .= ProductPurchaseQuery::getFromDoneQuery();
        $searchSQL .= ProductPurchaseQuery::getWhereDoneQuery();
        $searchSQL .= " AND (partnumber LIKE '%$searchText%' OR doc_no LIKE '%$searchText%' OR ts_name LIKE '%$searchText%')";
        $searchSQL .= ProductPurchaseQuery::getOrderDoneQuery();
        return Database::queryGetRowCount($searchSQL);
    }

    public static function getPurchaseDoneSearch($searchText, $OFFSET, $PAGESIZE)
    {
        $searchSQL = ProductPurchaseQuery::getSelectDoneQuery();
        $searchSQL .= ProductPurchaseQuery::getFromDoneQuery();
        $searchSQL .= ProductPurchaseQuery::getWhereDoneQuery();
        $searchSQL .= " AND (partnumber LIKE '%$searchText%' OR doc_no LIKE '%$searchText%' OR ts_name LIKE '%$searchText%')";
        $searchSQL .= ProductPurchaseQuery::getOrderDoneQuery();
        $searchSQL .= " OFFSET $OFFSET ROWS FETCH NEXT $PAGESIZE ROWS ONLY";
        return Database::queryWithSQL($searchSQL);
    }

    public static function getPurchaseDonePagination($OFFSET, $PAGESIZE)
    {
        $purchaseDoneQuery = ProductPurchaseQuery::getSelectDoneQuery();
        $purchaseDoneQuery .= ProductPurchaseQuery::getFromDoneQuery();
        $purchaseDoneQuery .= ProductPurchaseQuery::getWhereDoneQuery();
        $purchaseDoneQuery .= ProductPurchaseQuery::getOrderDoneQuery();
        $paginationSQL = $purchaseDoneQuery .= " OFFSET $OFFSET ROWS FETCH NEXT $PAGESIZE ROWS ONLY";
        return Database::queryWithSQL($paginationSQL);
    }

    public static function getPurchaseNotDoneCount()
    {
        return Database::queryGetRowCount(ProductPurchaseQuery::getRawNotDoneQuery());
    }

    public static function getPurchaseNotDoneSearchCount($searchText)
    {
        $searchSQL = ProductPurchaseQuery::getSelectNotDoneQuery();
        $searchSQL .= ProductPurchaseQuery::getFromNotDoneQuery();
        $searchSQL .= " WHERE (partnumber LIKE '%$searchText%' OR doc_no LIKE '%$searchText%' OR ts_name LIKE '%$searchText%')";
        $searchSQL .= ProductPurchaseQuery::getOrderNotDoneQuery();
        return Database::queryGetRowCount($searchSQL);
    }

    public static function getPurchaseNotDoneSearch($searchText, $OFFSET, $PAGESIZE)
    {
        $searchSQL = ProductPurchaseQuery::getSelectNotDoneQuery();
        $searchSQL .= ProductPurchaseQuery::getFromNotDoneQuery();
        $searchSQL .= " WHERE (partnumber LIKE '%$searchText%' OR doc_no LIKE '%$searchText%' OR ts_name LIKE '%$searchText%')";
        $searchSQL .= ProductPurchaseQuery::getOrderNotDoneQuery();
        $searchSQL .= " OFFSET $OFFSET ROWS FETCH NEXT $PAGESIZE ROWS ONLY";
        return Database::queryWithSQL($searchSQL);
    }

    public static function getPurchaseNotDonePagination($OFFSET, $PAGESIZE)
    {
        $purchaseNotDoneQuery = ProductPurchaseQuery::getSelectNotDoneQuery();
        $purchaseNotDoneQuery .= ProductPurchaseQuery::getFromNotDoneQuery();
        $purchaseNotDoneQuery .= ProductPurchaseQuery::getOrderNotDoneQuery();
        $paginationSQL = $purchaseNotDoneQuery .= " OFFSET $OFFSET ROWS FETCH NEXT $PAGESIZE ROWS ONLY";
        return Database::queryWithSQL($paginationSQL);
    }

    public static function submitPurchase($id, $employee_name, $qty_packing, $qty_stock, $remark_resive, $detail_ref, $order_ref, $trace_id)
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
