/*
// กำหนดฟิลด์ข้อมูลของตาราง
class StockAdjustFields {
  // สร้างเป็นลิสรายการสำหรับคอลัมน์ฟิลด์
  static final List<String> values = [
    id, partnumber, description, warehouse_name,area_name,column_name,shelf,qty_in,
    qty
  ];

  // กำหนดแต่ละฟิลด์ของตาราง ต้องเป็น String ทั้งหมด
  static final String id = 'id';
  static final String partnumber = 'partnumber';
  static final String description = 'description';
  static final String warehouse_name = 'warehouse_name';
  static final String area_name = 'area_name';
  static final String column_name = 'column_name';
  static final String shelf = 'shelf';
  static final String qty_in = 'qty_in';
  static final String qty = 'qty';
}
// ส่วนของ Data Model
class StockAdjust {
  int id;
  String partnumber;
  String description;
  String warehouse_name;
  String area_name;
  String column_name;
  String shelf;
  String qty_in;
  String qty;


  StockAdjust ({
    required this.id,
    required this.partnumber,
    required this.description,
    required this.warehouse_name,
    required this.area_name,
    required this.column_name,
    required this.shelf,
    required this.qty_in,
    required this.qty,
  });

  // สำหรับแปลงข้อมูลจาก Json เป็น  object
  static StockAdjust fromJson(Map<String, Object?> json) =>
      StockAdjust(
        id: json[StockAdjustFields.id] as int,
        partnumber: json[StockAdjustFields.partnumber] as String,
        description: json[StockAdjustFields.description] as String,
        warehouse_name: json[StockAdjustFields.warehouse_name] as String,
        area_name: json[StockAdjustFields.area_name] as String,
        column_name: json[StockAdjustFields.column_name] as String,
        shelf: json[StockAdjustFields.shelf] as String,
        qty_in: json[StockAdjustFields.qty_in] as String,
        qty: json[StockAdjustFields.qty] as String,
      );

  // สำหรับแปลง  object เป็น Json
  Map<String, Object?> toJson() => {
    StockAdjustFields.id: id,
    StockAdjustFields.partnumber: partnumber,
    StockAdjustFields.description: description,
    StockAdjustFields.warehouse_name: warehouse_name,
    StockAdjustFields.area_name: area_name,
    StockAdjustFields.column_name: column_name,
    StockAdjustFields.shelf: shelf,
    StockAdjustFields.qty_in: qty_in,
    StockAdjustFields.qty: qty,
  };

}

 */

class Getallstockadjust {
  String? partnumber;
  String? description;
  String? warehouseName;
  String? areaName;
  String? rowName;
  String? columnName;
  String? shelf;
  String? qtyIn;
  String? qty;

  Getallstockadjust({
    this.partnumber,
    this.description,
    this.warehouseName,
    this.areaName,
    this.rowName,
    this.columnName,
    this.shelf,
    this.qtyIn,
    this.qty,
  });

  Getallstockadjust.fromJson(Map<String, dynamic> json) {
    partnumber = json['partnumber'];
    description = json['description'];
    warehouseName = json['warehouse_name'];
    areaName = json['area_name'];
    rowName = json['row_name'];
    columnName = json['column_name'];
    shelf = json['shelf'];
    qtyIn = json['qty_in'];
    qty = json['qty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['partnumber'] = partnumber;
    data['description'] = description;
    data['warehouse_name'] = warehouseName;
    data['area_name'] = areaName;
    data['row_name'] = rowName;
    data['column_name'] = columnName;
    data['shelf'] = shelf;
    data['qty_in'] = qtyIn;
    data['qty'] = qty;
    return data;
  }

}

class GetallstockadjustDetail {
  String? type;
  String? issueingNo;
  String? qtyInBeforeQtyInAfter;
  String? qtyBeforeQtyAfter;
  String? qtyInBeforeqtyInAfter;
  String? qtyBeforeqtyAfter;
  String? qtyAfter;
  String? tsName;
  String? tsCreate;

  GetallstockadjustDetail({
    this.type,
    this.issueingNo,
    this.qtyInBeforeQtyInAfter,
    this.qtyBeforeQtyAfter,
    this.qtyInBeforeqtyInAfter,
    this.qtyBeforeqtyAfter,
    this.qtyAfter,
    this.tsName,
    this.tsCreate,
  });

  GetallstockadjustDetail.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    issueingNo = json['issueing_no'];
    qtyInBeforeQtyInAfter = json['qty_in_before-qty_in_after'];
    qtyBeforeQtyAfter = json['qty_before-qty_after'];
    qtyInBeforeqtyInAfter = json['qty_in_before-qty_in_after'];
    qtyBeforeqtyAfter = json['qty_before-qty_after'];
    qtyAfter = json['qty_after'];
    tsName = json['ts_name'];
    tsCreate = json['ts_create'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = type;
    data['issueing_no'] = issueingNo;
    data['qty_in_before-qty_in_after'] = qtyInBeforeQtyInAfter;
    data['qty_before-qty_after'] = qtyBeforeQtyAfter;
    data['qty_in_before-qty_in_after'] = qtyInBeforeqtyInAfter;
    data['qty_before-qty_after'] = qtyBeforeqtyAfter;
    data['qty_after'] = qtyAfter;
    data['ts_name'] = tsName;
    data['ts_create'] = tsCreate;
    return data;
  }

}