<?php

    class CutPipeModel {
        public static function CutPipe($partnumber, $category, $doc_no, $date_pipe, $qty_pipe, $pipe_name, $ts_pipe,) {
        $sql = "SELECT *
        FROM Sys_WarehouseManagement..sys_resive_pipe
        WHERE  ";
        $data = Database::queryWithSQL($sql, [$partnumber, $category, $doc_no, $date_pipe, $qty_pipe, $pipe_name, $ts_pipe]);
        return $data;
        }
    }

?>