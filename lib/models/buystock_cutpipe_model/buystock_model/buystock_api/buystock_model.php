<?php

    class BuyStockAllModel {
        public static function BuyStockAll($rr_no, $doc_no, $partnumber, $category, $qty, $ts_name, $ts_create, $hour) {
        $sql = "SELECT *
        FROM Sys_WarehouseManagement..sys_resive_pur
        WHERE rr_no = ? AND doc_no = ? AND IsDelete = 0";
        $data = Database::queryWithSQL($sql, [$rr_no, $doc_no, $partnumber, $category, $qty, $ts_name, $ts_create, $hour]);
        return $data;
        }
    }

    class BuyStockENMModel {
            public static function BuyStockENM($rr_no, $doc_no, $partnumber, $category, $qty, $ts_name, $ts_create, $hour) {
            $sql = "SELECT *
            FROM Sys_WarehouseManagement..sys_resive_pur1
            WHERE rr_no = ? AND doc_no = ? AND IsDelete = 0";
            $data = Database::queryWithSQL($sql, [$rr_no, $doc_no, $partnumber, $category, $qty, $ts_name, $ts_create, $hour]);
            return $data;
            }
        }

        class BuyStockCBModel {
                public static function BuyStockCB($rr_no, $doc_no, $partnumber, $category, $qty, $ts_name, $ts_create, $hour) {
                $sql = "SELECT *
                FROM Sys_WarehouseManagement..sys_resive_pur2
                WHERE rr_no = ? AND doc_no = ? AND IsDelete = 0";
                $data = Database::queryWithSQL($sql, [$rr_no, $doc_no, $partnumber, $category, $qty, $ts_name, $ts_create, $hour]);
                return $data;
                }
            }

            class BuyStockSAMModel {
                    public static function BuyStockSAM($rr_no, $doc_no, $partnumber, $category, $qty, $ts_name, $ts_create, $hour) {
                    $sql = "SELECT *
                    FROM Sys_WarehouseManagement..sys_resive_pur3
                    WHERE rr_no = ? AND doc_no = ? AND IsDelete = 0";
                    $data = Database::queryWithSQL($sql, [$rr_no, $doc_no, $partnumber, $category, $qty, $ts_name, $ts_create, $hour]);
                    return $data;
                    }
                }

                class BuyStockABModel {
                        public static function BuyStockAB($rr_no, $doc_no, $partnumber, $category, $qty, $ts_name, $ts_create, $hour) {
                        $sql = "SELECT *
                        FROM Sys_WarehouseManagement..sys_resive_pur4
                        WHERE rr_no = ? AND doc_no = ? AND IsDelete = 0";
                        $data = Database::queryWithSQL($sql, [$rr_no, $doc_no, $partnumber, $category, $qty, $ts_name, $ts_create, $hour]);
                        return $data;
                        }
                    }

                    class BuyStockETCModel {
                            public static function BuyStockETC($rr_no, $doc_no, $partnumber, $category, $qty, $ts_name, $ts_create, $hour) {
                            $sql = "SELECT *
                            FROM Sys_WarehouseManagement..sys_resive_pur5
                            WHERE rr_no = ? AND doc_no = ? AND IsDelete = 0";
                            $data = Database::queryWithSQL($sql, [$rr_no, $doc_no, $partnumber, $category, $qty, $ts_name, $ts_create, $hour]);
                            return $data;
                            }
                        }

?>