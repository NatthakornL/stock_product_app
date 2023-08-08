/*
// กำหนดฟิลด์ข้อมูลของตาราง
class BuyStockFields {
  // สร้างเป็นลิสรายการสำหรับคอลัมน์ฟิลด์
  static final List<String> values = [
    id, rr_no, doc_no, partnumber,category,qty,ts_name,ts_create,hour
  ];

  // กำหนดแต่ละฟิลด์ของตาราง ต้องเป็น String ทั้งหมด
  static final String id = 'id';
  static final String rr_no = 'rr_no';
  static final String doc_no = 'doc_no';
  static final String partnumber = 'partnumber';
  static final String category = 'category';
  static final String qty = 'qty';
  static final String ts_name = 'ts_name';
  static final String ts_create = 'ts_create';
  static final String hour = 'hour';
}
// ส่วนของ Data Model
class BuyStock {
  int id;
  String rr_no;
  String doc_no;
  String partnumber;
  String category;
  String qty;
  String ts_name;
  String ts_create;
  String hour;

  BuyStock ({
    required this.id,
    required this.rr_no,
    required this.doc_no,
    required this.partnumber,
    required this.category,
    required this.qty,
    required this.ts_name,
    required this.ts_create,
    required this.hour,
  });

  // สำหรับแปลงข้อมูลจาก Json เป็น  object
  static BuyStock fromJson(Map<String, Object?> json) =>
      BuyStock(
          id: json[BuyStockFields.id] as int,
          rr_no: json[BuyStockFields.rr_no] as String,
          doc_no: json[BuyStockFields.doc_no] as String,
          partnumber: json[BuyStockFields.partnumber] as String,
        category: json[BuyStockFields.category] as String,
        qty: json[BuyStockFields.qty] as String,
        ts_name: json[BuyStockFields.ts_name] as String,
        ts_create: json[BuyStockFields.ts_create] as String,
        hour: json[BuyStockFields.hour] as String,
      );

  // สำหรับแปลง  object เป็น Json
  Map<String, Object?> toJson() => {
    BuyStockFields.id: id,
    BuyStockFields.rr_no: rr_no,
    BuyStockFields.doc_no: doc_no,
    BuyStockFields.partnumber: partnumber,
    BuyStockFields.category: category,
    BuyStockFields.qty: qty,
    BuyStockFields.ts_name: ts_name,
    BuyStockFields.ts_create: ts_create,
    BuyStockFields.hour: hour,
  };

}

 */

class GetallbuystockAll {
  String? rrNo;
  String? docNo;
  String? partnumber;
  String? category;
  String? qty;
  String? tsName;
  String? tsCreate;
  String? hour;

  GetallbuystockAll({
    this.rrNo,
    this.docNo,
    this.partnumber,
    this.category,
    this.qty,
    this.tsName,
    this.tsCreate,
    this.hour,
  });

  GetallbuystockAll.fromJson(Map<String, dynamic> json) {
    rrNo = json['rr_no'];
    docNo = json['doc_no'];
    partnumber = json['partnumber'];
    category = json['category'];
    qty = json['qty'];
    tsName = json['ts_name'];
    tsCreate = json['ts_create'];
    hour = json['hour'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rr_no'] = rrNo;
    data['doc_no'] = docNo;
    data['partnumber'] = partnumber;
    data['category'] = category;
    data['qty'] = qty;
    data['ts_name'] = tsName;
    data['ts_create'] = tsCreate;
    data['hour'] = hour;
    return data;
  }

}

class GetallbuystockENM {
  String? rrNo;
  String? docNo;
  String? partnumber;
  String? category;
  String? qty;
  String? tsName;
  String? tsCreate;
  String? hour;

  GetallbuystockENM({
    this.rrNo,
    this.docNo,
    this.partnumber,
    this.category,
    this.qty,
    this.tsName,
    this.tsCreate,
    this.hour,
  });

  GetallbuystockENM.fromJson(Map<String, dynamic> json) {
    rrNo = json['rr_no'];
    docNo = json['doc_no'];
    partnumber = json['partnumber'];
    category = json['category'];
    qty = json['qty'];
    tsName = json['ts_name'];
    tsCreate = json['ts_create'];
    hour = json['hour'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rr_no'] = rrNo;
    data['doc_no'] = docNo;
    data['partnumber'] = partnumber;
    data['category'] = category;
    data['qty'] = qty;
    data['ts_name'] = tsName;
    data['ts_create'] = tsCreate;
    data['hour'] = hour;
    return data;
  }

}

class GetallbuystockCB {
  String? rrNo;
  String? docNo;
  String? partnumber;
  String? category;
  String? qty;
  String? tsName;
  String? tsCreate;
  String? hour;

  GetallbuystockCB({
    this.rrNo,
    this.docNo,
    this.partnumber,
    this.category,
    this.qty,
    this.tsName,
    this.tsCreate,
    this.hour,
  });

  GetallbuystockCB.fromJson(Map<String, dynamic> json) {
    rrNo = json['rr_no'];
    docNo = json['doc_no'];
    partnumber = json['partnumber'];
    category = json['category'];
    qty = json['qty'];
    tsName = json['ts_name'];
    tsCreate = json['ts_create'];
    hour = json['hour'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rr_no'] = rrNo;
    data['doc_no'] = docNo;
    data['partnumber'] = partnumber;
    data['category'] = category;
    data['qty'] = qty;
    data['ts_name'] = tsName;
    data['ts_create'] = tsCreate;
    data['hour'] = hour;
    return data;
  }

}

class GetallbuystockSAM {
  String? rrNo;
  String? docNo;
  String? partnumber;
  String? category;
  String? qty;
  String? tsName;
  String? tsCreate;
  String? hour;

  GetallbuystockSAM({
    this.rrNo,
    this.docNo,
    this.partnumber,
    this.category,
    this.qty,
    this.tsName,
    this.tsCreate,
    this.hour,
  });

  GetallbuystockSAM.fromJson(Map<String, dynamic> json) {
    rrNo = json['rr_no'];
    docNo = json['doc_no'];
    partnumber = json['partnumber'];
    category = json['category'];
    qty = json['qty'];
    tsName = json['ts_name'];
    tsCreate = json['ts_create'];
    hour = json['hour'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rr_no'] = rrNo;
    data['doc_no'] = docNo;
    data['partnumber'] = partnumber;
    data['category'] = category;
    data['qty'] = qty;
    data['ts_name'] = tsName;
    data['ts_create'] = tsCreate;
    data['hour'] = hour;
    return data;
  }

}

class GetallbuystockAB {
  String? rrNo;
  String? docNo;
  String? partnumber;
  String? category;
  String? qty;
  String? tsName;
  String? tsCreate;
  String? hour;

  GetallbuystockAB({
    this.rrNo,
    this.docNo,
    this.partnumber,
    this.category,
    this.qty,
    this.tsName,
    this.tsCreate,
    this.hour,
  });

  GetallbuystockAB.fromJson(Map<String, dynamic> json) {
    rrNo = json['rr_no'];
    docNo = json['doc_no'];
    partnumber = json['partnumber'];
    category = json['category'];
    qty = json['qty'];
    tsName = json['ts_name'];
    tsCreate = json['ts_create'];
    hour = json['hour'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rr_no'] = rrNo;
    data['doc_no'] = docNo;
    data['partnumber'] = partnumber;
    data['category'] = category;
    data['qty'] = qty;
    data['ts_name'] = tsName;
    data['ts_create'] = tsCreate;
    data['hour'] = hour;
    return data;
  }

}

class GetallbuystockETC {
  String? rrNo;
  String? docNo;
  String? partnumber;
  String? category;
  String? qty;
  String? tsName;
  String? tsCreate;
  String? hour;

  GetallbuystockETC({
    this.rrNo,
    this.docNo,
    this.partnumber,
    this.category,
    this.qty,
    this.tsName,
    this.tsCreate,
    this.hour,
  });

  GetallbuystockETC.fromJson(Map<String, dynamic> json) {
    rrNo = json['rr_no'];
    docNo = json['doc_no'];
    partnumber = json['partnumber'];
    category = json['category'];
    qty = json['qty'];
    tsName = json['ts_name'];
    tsCreate = json['ts_create'];
    hour = json['hour'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rr_no'] = rrNo;
    data['doc_no'] = docNo;
    data['partnumber'] = partnumber;
    data['category'] = category;
    data['qty'] = qty;
    data['ts_name'] = tsName;
    data['ts_create'] = tsCreate;
    data['hour'] = hour;
    return data;
  }

}

class GetallbuystockDetail {
  String? warehouseName;
  String? areaName;
  String? rowName;
  String? columnName;
  String? shelf;

  GetallbuystockDetail({
    this.warehouseName,
    this.areaName,
    this.rowName,
    this.columnName,
    this.shelf,
  });

  GetallbuystockDetail.fromJson(Map<String, dynamic> json) {
    warehouseName = json['warehouse_name'];
    areaName = json['area_name'];
    rowName = json['row_name'];
    columnName = json['column_name'];
    shelf = json['shelf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['warehouse_name'] = warehouseName;
    data['area_name'] = areaName;
    data['row_name'] = rowName;
    data['column_name'] = columnName;
    data['shelf'] = shelf;
    return data;
  }

}