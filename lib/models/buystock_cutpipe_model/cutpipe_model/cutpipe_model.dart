/*
// กำหนดฟิลด์ข้อมูลของตาราง
class CutPipeFields {
  // สร้างเป็นลิสรายการสำหรับคอลัมน์ฟิลด์
  static final List<String> values = [
    id, partnumber, category, doc_no,date_pipe,qty_pipe,pipe_name,ts_pipe
  ];

  // กำหนดแต่ละฟิลด์ของตาราง ต้องเป็น String ทั้งหมด
  static final String id = 'id';
  static final String partnumber = 'partnumber';
  static final String category = 'category';
  static final String doc_no = 'doc_no';
  static final String date_pipe = 'date_pipe';
  static final String qty_pipe = 'qty_pipe';
  static final String pipe_name = 'pipe_name';
  static final String ts_pipe = 'ts_pipe';
}
// ส่วนของ Data Model
class CutPipe {
  int id;
  String partnumber;
  String category;
  String doc_no;
  String date_pipe;
  String qty_pipe;
  String pipe_name;
  String ts_pipe;


  CutPipe ({
    required this.id,
    required this.partnumber,
    required this.category,
    required this.doc_no,
    required this.date_pipe,
    required this.qty_pipe,
    required this.pipe_name,
    required this.ts_pipe,
  });

  // สำหรับแปลงข้อมูลจาก Json เป็น  object
  static CutPipe fromJson(Map<String, Object?> json) =>
      CutPipe(
        id: json[CutPipeFields.id] as int,
        partnumber: json[CutPipeFields.partnumber] as String,
        category: json[CutPipeFields.category] as String,
        doc_no: json[CutPipeFields.doc_no] as String,
        date_pipe: json[CutPipeFields.date_pipe] as String,
        qty_pipe: json[CutPipeFields.qty_pipe] as String,
        pipe_name: json[CutPipeFields.pipe_name] as String,
        ts_pipe: json[CutPipeFields.ts_pipe] as String,
      );

  // สำหรับแปลง  object เป็น Json
  Map<String, Object?> toJson() => {
    CutPipeFields.id: id,
    CutPipeFields.partnumber: partnumber,
    CutPipeFields.category: category,
    CutPipeFields.doc_no: doc_no,
    CutPipeFields.date_pipe: date_pipe,
    CutPipeFields.qty_pipe: qty_pipe,
    CutPipeFields.pipe_name: pipe_name,
    CutPipeFields.ts_pipe: ts_pipe,
  };

}

 */

class Getallcutpipe {
  String? partnumber;
  String? category;
  String? docNo;
  String? datePipe;
  String? qtyPipe;
  String? pipeName;
  String? tsPipe;

  Getallcutpipe({
    this.partnumber,
    this.category,
    this.docNo,
    this.datePipe,
    this.qtyPipe,
    this.pipeName,
    this.tsPipe,
  });

  Getallcutpipe.fromJson(Map<String, dynamic> json) {
    partnumber = json['partnumber'];
    category = json['category'];
    docNo = json['doc_no'];
    datePipe = json['date_pipe'];
    qtyPipe = json['qty_pipe'];
    pipeName = json['pipe_name'];
    tsPipe = json['ts_pipe'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['partnumber'] = partnumber;
    data['category'] = category;
    data['doc_no'] = docNo;
    data['date_pipe'] = datePipe;
    data['qty_pipe'] = qtyPipe;
    data['pipe_name'] = pipeName;
    data['ts_pipe'] = tsPipe;
    return data;
  }

}

class GetallcutpipeDetail {
  String? qtyPipe;
  String? warehouseName;
  String? areaName;
  String? rowName;
  String? columnName;
  String? shelf;

  GetallcutpipeDetail({
    this.qtyPipe,
    this.warehouseName,
    this.areaName,
    this.rowName,
    this.columnName,
    this.shelf,
  });

  GetallcutpipeDetail.fromJson(Map<String, dynamic> json) {
    qtyPipe = json['qty_pipe'];
    warehouseName = json['warehouse_name'];
    areaName = json['area_name'];
    rowName = json['row_name'];
    columnName = json['column_name'];
    shelf = json['shelf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['qty_pipe'] = qtyPipe;
    data['warehouse_name'] = warehouseName;
    data['area_name'] = areaName;
    data['row_name'] = rowName;
    data['column_name'] = columnName;
    data['shelf'] = shelf;
    return data;
  }

}