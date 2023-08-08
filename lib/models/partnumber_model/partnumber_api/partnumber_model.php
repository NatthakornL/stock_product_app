<?php

    class PartnumberAllModel {
            public static function PartNumberAll($pn, $imgpic, $doc_no, $ts_create, $description, $deliver_date, $qty) {
            $sql = "SELECT *
            FROM Sys_WarehouseManagement..sys_all
            WHERE pn = ? AND doc_no = ? AND IsDelete = 0";
            $data = Database::queryWithSQL($sql, [$pn, $imgpic, $doc_no, $ts_create, $description, $deliver_date, $qty]);
            return $data;
        }
    }

    class PartnumberENMModel {
            public static function PartNumberENM($pn, $imgpic, $doc_no, $ts_create, $description, $deliver_date, $qty) {
            $sql = "SELECT *
            FROM Sys_WarehouseManagement..sys_Engine_Mounting32
            WHERE pn = ? AND doc_no = ? AND IsDelete = 0";
            $data = Database::queryWithSQL($sql, [$pn, $imgpic, $doc_no, $ts_create, $description, $deliver_date, $qty]);
            return $data;
         }
    }

    class PartnumberCBModel {
            public static function PartNumberCB($pn, $imgpic, $doc_no, $ts_create, $description, $deliver_date, $qty) {
            $sql = "SELECT *
            FROM Sys_WarehouseManagement..sys_Center_Bearing32
            WHERE pn = ? AND doc_no = ? AND IsDelete = 0";
            $data = Database::queryWithSQL($sql, [$pn, $imgpic, $doc_no, $ts_create, $description, $deliver_date, $qty]);
            return $data;
         }
    }

    class PartnumberSAMModel {
             public static function PartNumberSAM($pn, $imgpic, $doc_no, $ts_create, $description, $deliver_date, $qty) {
             $sql = "SELECT *
             FROM Sys_WarehouseManagement..sys_Shock_Absorber_Mounting32
             WHERE pn = ? AND doc_no = ? AND IsDelete = 0";
             $data = Database::queryWithSQL($sql, [$pn, $imgpic, $doc_no, $ts_create, $description, $deliver_date, $qty]);
             return $data;
          }
    }

    class PartnumberABModel {
             public static function PartNumberAB($pn, $imgpic, $doc_no, $ts_create, $description, $deliver_date, $qty) {
             $sql = "SELECT *
             FROM Sys_WarehouseManagement..sys_Bushing32
             WHERE pn = ? AND doc_no = ? AND IsDelete = 0";
             $data = Database::queryWithSQL($sql, [$pn, $imgpic, $doc_no, $ts_create, $description, $deliver_date, $qty]);
             return $data;
          }
    }
    class PartnumberETCModel {
             public static function PartNumberETC($pn, $imgpic, $doc_no, $ts_create, $description, $deliver_date, $qty) {
             $sql = "SELECT *
             FROM Sys_WarehouseManagement..sys_other32
             WHERE pn = ? AND doc_no = ? AND IsDelete = 0";
             $data = Database::queryWithSQL($sql, [$pn, $imgpic, $doc_no, $ts_create, $description, $deliver_date, $qty]);
             return $data;
           }
    }

?>