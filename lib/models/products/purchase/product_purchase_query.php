<?php

class ProductPurchaseQuery
{
    public static function getRawDoneQuery()
    {
        return "SELECT id, partnumber, ts_name, qty, doc_no
        FROM (
            SELECT *,
                (
                    SELECT IsOrder
                    FROM Sys_WorkingTag..tracebill_detail
                    WHERE tracebill_detail.record_id = finishedgoods_data.detail_ref
                ) AS IsOrder,
                (
                    SELECT IsLost
                    FROM Sys_WorkingTag..tracebill_detail
                    WHERE tracebill_detail.record_id = finishedgoods_data.detail_ref
                ) AS IsLost,
                (
                    SELECT part
                    FROM Sys_DataMaster..sys_partnumber_new
                    WHERE sys_partnumber_new.record_id = finishedgoods_data.part
                ) AS partnumber,
                (
                    SELECT relate
                    FROM Sys_DataMaster..sys_partnumber_new
                    WHERE sys_partnumber_new.record_id = finishedgoods_data.part
                ) AS relate,
                (
                    SELECT doc_no
                    FROM Sys_SaleManagement..sys_so_detail
                    WHERE sys_so_detail.so_id = finishedgoods_data.so_id
                ) AS doc_no,
                (
                    SELECT staff_id
                    FROM Sys_SaleManagement..sys_so_detail
                    WHERE sys_so_detail.so_id = finishedgoods_data.so_id
                ) AS staff_id,
                (
                    SELECT ts_name
                    FROM Sys_SaleManagement..sys_so_detail
                    WHERE sys_so_detail.so_id = finishedgoods_data.so_id
                ) AS sal,
                (
                    SELECT (
                        SELECT customer_name
                        FROM Sys_SaleManagement..customers
                        WHERE customers.customer_id = sys_so_detail.customer_id
                    )
                    FROM Sys_SaleManagement..sys_so_detail
                    WHERE sys_so_detail.so_id = finishedgoods_data.so_id
                ) AS customer_name
            FROM Sys_WorkingTag..finishedgoods_data
            WHERE IsDelete = 0
                AND IsReceive = 1
                AND menu_group = 4
        ) AS innerTable
        WHERE YEAR(ts_create) = YEAR(GETDATE())
        AND MONTH(ts_create) in (
            MONTH(GETDATE()),
            MONTH(GETDATE()) -1
        )
        ORDER BY ts_create DESC
        ";
    }

    public static function getSelectDoneQuery()
    {
        return "SELECT id, partnumber, ts_name, qty, doc_no";
    }

    public static function getFromDoneQuery()
    {
        return "
        FROM (
            SELECT *,
                (
                    SELECT IsOrder
                    FROM Sys_WorkingTag..tracebill_detail
                    WHERE tracebill_detail.record_id = finishedgoods_data.detail_ref
                ) AS IsOrder,
                (
                    SELECT IsLost
                    FROM Sys_WorkingTag..tracebill_detail
                    WHERE tracebill_detail.record_id = finishedgoods_data.detail_ref
                ) AS IsLost,
                (
                    SELECT part
                    FROM Sys_DataMaster..sys_partnumber_new
                    WHERE sys_partnumber_new.record_id = finishedgoods_data.part
                ) AS partnumber,
                (
                    SELECT relate
                    FROM Sys_DataMaster..sys_partnumber_new
                    WHERE sys_partnumber_new.record_id = finishedgoods_data.part
                ) AS relate,
                (
                    SELECT doc_no
                    FROM Sys_SaleManagement..sys_so_detail
                    WHERE sys_so_detail.so_id = finishedgoods_data.so_id
                ) AS doc_no,
                (
                    SELECT staff_id
                    FROM Sys_SaleManagement..sys_so_detail
                    WHERE sys_so_detail.so_id = finishedgoods_data.so_id
                ) AS staff_id,
                (
                    SELECT ts_name
                    FROM Sys_SaleManagement..sys_so_detail
                    WHERE sys_so_detail.so_id = finishedgoods_data.so_id
                ) AS sal,
                (
                    SELECT (
                        SELECT customer_name
                        FROM Sys_SaleManagement..customers
                        WHERE customers.customer_id = sys_so_detail.customer_id
                    )
                    FROM Sys_SaleManagement..sys_so_detail
                    WHERE sys_so_detail.so_id = finishedgoods_data.so_id
                ) AS customer_name
            FROM Sys_WorkingTag..finishedgoods_data
            WHERE IsDelete = 0
                AND IsReceive = 1
                AND menu_group = 4
        ) AS innerTable
        ";
    }

    public static function getWhereDoneQuery()
    {
        return "WHERE YEAR(ts_create) = YEAR(GETDATE())
        AND MONTH(ts_create) in (
            MONTH(GETDATE()),
            MONTH(GETDATE()) -1
        )
        ";
    }

    public static function getOrderDoneQuery()
    {
        return "ORDER BY ts_create DESC";
    }

    public static function getRawNotDoneQuery()
    {
        return "SELECT id, partnumber, ts_name, qty, doc_no, detail_ref,
        (
            select detail_ref
            from Sys_WorkingTag..tracebill_detail
            where tracebill_detail.record_id = innerTable.detail_ref
        ) as order_ref,
        (
            select trace_id
            from Sys_WorkingTag..tracebill_detail
            where tracebill_detail.record_id = innerTable.detail_ref
        ) as trace_id
        FROM (
            SELECT *,
                (
                    SELECT IsOrder
                    FROM Sys_WorkingTag..tracebill_detail
                    WHERE tracebill_detail.record_id = finishedgoods_data.detail_ref
                ) AS IsOrder,
                (
                    SELECT IsLost
                    FROM Sys_WorkingTag..tracebill_detail
                    WHERE tracebill_detail.record_id = finishedgoods_data.detail_ref
                ) AS IsLost,
                (
                    SELECT part
                    FROM Sys_DataMaster..sys_partnumber_new
                    WHERE sys_partnumber_new.record_id = finishedgoods_data.part
                ) AS partnumber,
                (
                    SELECT relate
                    FROM Sys_DataMaster..sys_partnumber_new
                    WHERE sys_partnumber_new.record_id = finishedgoods_data.part
                ) AS relate,
                (
                    SELECT doc_no
                    FROM Sys_SaleManagement..sys_so_detail
                    WHERE sys_so_detail.so_id = finishedgoods_data.so_id
                ) AS doc_no,
                (
                    SELECT staff_id
                    FROM Sys_SaleManagement..sys_so_detail
                    WHERE sys_so_detail.so_id = finishedgoods_data.so_id
                ) AS staff_id,
                (
                    SELECT ts_name
                    FROM Sys_SaleManagement..sys_so_detail
                    WHERE sys_so_detail.so_id = finishedgoods_data.so_id
                ) AS sal,
                (
                    SELECT (
                        SELECT customer_name
                        FROM Sys_SaleManagement..customers
                        WHERE customers.customer_id = sys_so_detail.customer_id
                    )
                    FROM Sys_SaleManagement..sys_so_detail
                    WHERE sys_so_detail.so_id = finishedgoods_data.so_id
                ) AS customer_name,
                datediff(DAY, ts_create, GETDATE()) AS DAY
            FROM Sys_WorkingTag..finishedgoods_data
            WHERE IsDelete = 0
                AND IsReceive = 0
                AND menu_group = 4
        ) AS innerTable
        ORDER BY ts_create DESC
        ";
    }

    public static function getSelectNotDoneQuery()
    {
        return "SELECT id, partnumber, ts_name, qty, doc_no, detail_ref,
        (
            select detail_ref
            from Sys_WorkingTag..tracebill_detail
            where tracebill_detail.record_id = innerTable.detail_ref
        ) as order_ref,
        (
            select trace_id
            from Sys_WorkingTag..tracebill_detail
            where tracebill_detail.record_id = innerTable.detail_ref
        ) as trace_id,
        (
            SELECT qty
            FROM Sys_WorkingTag..tracebill_detail
            WHERE tracebill_detail.record_id = innerTable.detail_ref
        ) as qty_order,
		(
            SELECT qty_packing
            FROM Sys_WorkingTag..tracebill_detail
            WHERE tracebill_detail.record_id = innerTable.detail_ref
        ) as qty_packing,
		(
            SELECT qty - qty_packing AS balance
            FROM Sys_WorkingTag..tracebill_detail
            WHERE tracebill_detail.record_id = innerTable.detail_ref
        ) as balance
        ";
    }

    public static function getFromNotDoneQuery()
    {
        return "FROM (
            SELECT *,
                (
                    SELECT IsOrder
                    FROM Sys_WorkingTag..tracebill_detail
                    WHERE tracebill_detail.record_id = finishedgoods_data.detail_ref
                ) AS IsOrder,
                (
                    SELECT IsLost
                    FROM Sys_WorkingTag..tracebill_detail
                    WHERE tracebill_detail.record_id = finishedgoods_data.detail_ref
                ) AS IsLost,
                (
                    SELECT part
                    FROM Sys_DataMaster..sys_partnumber_new
                    WHERE sys_partnumber_new.record_id = finishedgoods_data.part
                ) AS partnumber,
                (
                    SELECT relate
                    FROM Sys_DataMaster..sys_partnumber_new
                    WHERE sys_partnumber_new.record_id = finishedgoods_data.part
                ) AS relate,
                (
                    SELECT doc_no
                    FROM Sys_SaleManagement..sys_so_detail
                    WHERE sys_so_detail.so_id = finishedgoods_data.so_id
                ) AS doc_no,
                (
                    SELECT staff_id
                    FROM Sys_SaleManagement..sys_so_detail
                    WHERE sys_so_detail.so_id = finishedgoods_data.so_id
                ) AS staff_id,
                (
                    SELECT ts_name
                    FROM Sys_SaleManagement..sys_so_detail
                    WHERE sys_so_detail.so_id = finishedgoods_data.so_id
                ) AS sal,
                (
                    SELECT (
                        SELECT customer_name
                        FROM Sys_SaleManagement..customers
                        WHERE customers.customer_id = sys_so_detail.customer_id
                    )
                    FROM Sys_SaleManagement..sys_so_detail
                    WHERE sys_so_detail.so_id = finishedgoods_data.so_id
                ) AS customer_name,
                datediff(DAY, ts_create, GETDATE()) AS DAY
            FROM Sys_WorkingTag..finishedgoods_data
            WHERE IsDelete = 0
                AND IsReceive = 0
                AND menu_group = 4
        ) AS innerTable
        ";
    }

    public static function getWhereNotDoneQuery()
    {
        return "";
    }

    public static function getOrderNotDoneQuery()
    {
        return "ORDER BY ts_create DESC";
    }
}
