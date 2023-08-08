/*
// กำหนดฟิลด์ข้อมูลของตาราง
class OrderingFields {
  // สร้างเป็นลิสรายการสำหรับคอลัมน์ฟิลด์
  static final List<String> values = [
    id, doc_no, customer_name, deliver_date,
  ];

  // กำหนดแต่ละฟิลด์ของตาราง ต้องเป็น String ทั้งหมด
  static final String id = 'id';
  static final String doc_no = 'doc_on';
  static final String customer_name = 'customer_name';
  static final String deliver_date = 'deliver_date';
}
// ส่วนของ Data Model
class Ordering {
  int id;
  String doc_no;
  String customer_name;
  String deliver_date;

  Ordering ({
    required this.id,
    required this.doc_no,
    required this.customer_name,
    required this.deliver_date
});

  // สำหรับแปลงข้อมูลจาก Json เป็น  object
  static Ordering fromJson(Map<String, Object?> json) =>
     Ordering(
         id: json[OrderingFields.id] as int,
         doc_no: json[OrderingFields.doc_no] as String,
         customer_name: json[OrderingFields.customer_name] as String,
         deliver_date: json[OrderingFields.deliver_date] as String
     );

  // สำหรับแปลง  object เป็น Json
  Map<String, Object?> toJson() => {
    OrderingFields.id: id,
    OrderingFields.doc_no: doc_no,
    OrderingFields.customer_name: customer_name,
    OrderingFields.deliver_date: deliver_date,
  };

}

 */

class Getallordering {
  String? docNo;
  String? customerName;
  String? deliverDate;

  Getallordering({
    this.docNo,
    this.customerName,
    this.deliverDate });

  Getallordering.fromJson(Map<String, dynamic> json) {
    docNo = json['doc_no'];
    customerName = json['customer_name'];
    deliverDate = json['deliver_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['doc_no'] = docNo;
    data['customer_name'] = customerName;
    data['deliver_date'] = deliverDate;
    return data;
  }

}

class GetallorderingDetail {
  String? partUpload;
  String? typeDescription;
  String? rubber;
  String? qty;
  String? issueingQty;
  String? wantIssueingQty;
  String? qtyIn;
  String? qtyOut;
  String? qtySet;
  String? qtyReceive;
  String? wantIssueingQtyQtyReceive;
  String? remark;

  GetallorderingDetail({
    this.partUpload,
    this.typeDescription,
    this.rubber,
    this.qty,
    this.issueingQty,
    this.wantIssueingQty,
    this.qtyIn,
    this.qtyOut,
    this.qtySet,
    this.qtyReceive,
    this.wantIssueingQtyQtyReceive,
    this.remark,
  });

  GetallorderingDetail.fromJson(Map<String, dynamic> json) {
    partUpload = json['part_upload'];
    typeDescription = json['type_description'];
    rubber = json['rubber'];
    qty = json['qty'];
    issueingQty = json['issueing_qty'];
    wantIssueingQty = json['want-issueing_qty'];
    qtyIn = json['qty_in'];
    qtyOut = json['qty_out'];
    qtySet = json['qty_set'];
    qtyReceive = json['qty_receive'];
    wantIssueingQtyQtyReceive = json['want-issueing_qty-qty_receive'];
    remark = json['remark'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['part_upload'] = partUpload;
    data['type_description'] = typeDescription;
    data['rubber'] = rubber;
    data['qty'] = qty;
    data['issueing_qty'] = issueingQty;
    data['want-issueing_qty'] = wantIssueingQty;
    data['qty_in'] = qtyIn;
    data['qty_out'] = qtyOut;
    data['qty_set'] = qtySet;
    data['qty_receive'] = qtyReceive;
    data['want-issueing_qty-qty_receive'] = wantIssueingQtyQtyReceive;
    data['remark'] = remark;
    return data;
  }

}

class GetallorderingWH {
  String? warehouseName;
  String? areaName;
  String? rowName;
  String? columnName;
  String? shelf;
  String? prodQtyIn;
  String? prodQtyOut;
  String? typeCode;

  GetallorderingWH({
    this.warehouseName,
    this.areaName,
    this.rowName,
    this.columnName,
    this.shelf,
    this.prodQtyIn,
    this.prodQtyOut,
    this.typeCode,
  });

  GetallorderingWH.fromJson(Map<String, dynamic> json) {
    warehouseName = json['warehouse_name'];
    areaName = json['area_name'];
    rowName = json['row_name'];
    columnName = json['column_name'];
    shelf = json['shelf'];
    prodQtyIn = json['prod_qty_in'];
    prodQtyOut = json['prod_qty_out'];
    typeCode = json['type_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['warehouse_name'] = warehouseName;
    data['area_name'] = areaName;
    data['row_name'] = rowName;
    data['column_name'] = columnName;
    data['shelf'] = shelf;
    data['prod_qty_in'] = prodQtyIn;
    data['prod_qty_out'] = prodQtyOut;
    data['type_code'] = typeCode;
    return data;
  }

}

