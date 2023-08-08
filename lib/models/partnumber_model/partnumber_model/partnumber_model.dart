/*
// กำหนดฟิลด์ข้อมูลของตาราง
class PartNumberFields {
  // สร้างเป็นลิสรายการสำหรับคอลัมน์ฟิลด์
  static final List<String> values = [
    id,
    pn,
    imgpart,
    doc_no,
    ts_create,
    description,
    deliver_date,
    qty
  ];

  // กำหนดแต่ละฟิลด์ของตาราง ต้องเป็น String ทั้งหมด
  static final String id = 'id';
  static final String pn = 'pn';
  static final String imgpart = 'imgpart';
  static final String doc_no = 'doc_no';
  static final String ts_create = 'ts_create';
  static final String description = 'description';
  static final String deliver_date = 'deliver_date';
  static final String qty = 'qty';
}

// ส่วนของ Data Model
class PartNumber {
  int id;
  String pn;
  String imgpart;
  String doc_no;
  String ts_create;
  String description;
  String deliver_date;
  String qty;

  PartNumber({
    required this.id,
    required this.pn,
    required this.imgpart,
    required this.doc_no,
    required this.ts_create,
    required this.description,
    required this.deliver_date,
    required this.qty,
  });

  // สำหรับแปลงข้อมูลจาก Json เป็น  object
  static PartNumber fromJson(Map<String, Object?> json) => PartNumber(
        id: json[PartNumberFields.id] as int,
        pn: json[PartNumberFields.pn] as String,
        imgpart: json[PartNumberFields.imgpart] as String,
        doc_no: json[PartNumberFields.doc_no] as String,
        ts_create: json[PartNumberFields.ts_create] as String,
        description: json[PartNumberFields.description] as String,
        deliver_date: json[PartNumberFields.deliver_date] as String,
        qty: json[PartNumberFields.qty] as String,
      );

  // สำหรับแปลง  object เป็น Json
  Map<String, Object?> toJson() => {
        PartNumberFields.id: id,
        PartNumberFields.pn: pn,
        PartNumberFields.imgpart: imgpart,
        PartNumberFields.doc_no: doc_no,
        PartNumberFields.ts_create: ts_create,
        PartNumberFields.description: description,
        PartNumberFields.deliver_date: deliver_date,
        PartNumberFields.qty: qty,
      };
}
*/

class GetallpartnumAll {
  String? pn;
  String? imgpart;
  String? grade;
  String? docno;
  String? tscreate;
  String? description;
  String? deliverDate;
  String? qty;

  GetallpartnumAll(
      {this.pn,
      this.imgpart,
      this.grade,
      this.docno,
      this.tscreate,
      this.description,
      this.deliverDate,
      this.qty});

  GetallpartnumAll.fromJson(Map<String, dynamic> json) {
    pn = json['pn'];
    imgpart = json['imgpart'];
    grade = json['grade'];
    docno = json['doc_no'];
    tscreate = json['ts_create'];
    description = json['description'];
    deliverDate = json['deliver_date'];
    qty = json['qty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pn'] = pn;
    data['imgpart'] = imgpart;
    data['grade'] = grade;
    data['doc_no'] = docno;
    data['ts_create'] = tscreate;
    data['description'] = description;
    data['deliver_date'] = deliverDate;
    data['qty'] = qty;
    return data;
  }
} //All

class GetallpartnumENM {
  String? pn;
  String? imgpart;
  String? grade;
  String? docno;
  String? tscreate;
  String? description;
  String? deliverDate;
  String? qty;

  GetallpartnumENM(
      {this.pn,
      this.imgpart,
      this.grade,
      this.docno,
      this.tscreate,
      this.description,
      this.deliverDate,
      this.qty});

  GetallpartnumENM.fromJson(Map<String, dynamic> json) {
    pn = json['pn'];
    imgpart = json['imgpart'];
    grade = json['grade'];
    docno = json['doc_no'];
    tscreate = json['ts_create'];
    description = json['description'];
    deliverDate = json['deliver_date'];
    qty = json['qty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pn'] = pn;
    data['imgpart'] = imgpart;
    data['grade'] = grade;
    data['doc_no'] = docno;
    data['ts_create'] = tscreate;
    data['description'] = description;
    data['deliver_date'] = deliverDate;
    data['qty'] = qty;
    return data;
  }
} //Engine Mounting

class GetallpartnumCB {
  String? pn;
  String? imgpart;
  String? grade;
  String? docno;
  String? tscreate;
  String? description;
  String? deliverDate;
  String? qty;

  GetallpartnumCB(
      {this.pn,
      this.imgpart,
      this.grade,
      this.docno,
      this.tscreate,
      this.description,
      this.deliverDate,
      this.qty});

  GetallpartnumCB.fromJson(Map<String, dynamic> json) {
    pn = json['pn'];
    imgpart = json['imgpart'];
    grade = json['grade'];
    docno = json['doc_no'];
    tscreate = json['ts_create'];
    description = json['description'];
    deliverDate = json['deliver_date'];
    qty = json['qty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pn'] = pn;
    data['imgpart'] = imgpart;
    data['grade'] = grade;
    data['doc_no'] = docno;
    data['ts_create'] = tscreate;
    data['description'] = description;
    data['deliver_date'] = deliverDate;
    data['qty'] = qty;
    return data;
  }
} //Center Bearing

class GetallpartnumSAM {
  String? pn;
  String? imgpart;
  String? grade;
  String? docno;
  String? tscreate;
  String? description;
  String? deliverDate;
  String? qty;

  GetallpartnumSAM(
      {this.pn,
      this.imgpart,
      this.grade,
      this.docno,
      this.tscreate,
      this.description,
      this.deliverDate,
      this.qty});

  GetallpartnumSAM.fromJson(Map<String, dynamic> json) {
    pn = json['pn'];
    imgpart = json['imgpart'];
    grade = json['grade'];
    docno = json['doc_no'];
    tscreate = json['ts_create'];
    description = json['description'];
    deliverDate = json['deliver_date'];
    qty = json['qty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pn'] = pn;
    data['imgpart'] = imgpart;
    data['grade'] = grade;
    data['doc_no'] = docno;
    data['ts_create'] = tscreate;
    data['description'] = description;
    data['deliver_date'] = deliverDate;
    data['qty'] = qty;
    return data;
  }
} //Shock Absober Mounting

class GetallpartnumAB {
  String? pn;
  String? imgpart;
  String? grade;
  String? docno;
  String? tscreate;
  String? description;
  String? deliverDate;
  String? qty;

  GetallpartnumAB(
      {this.pn,
      this.imgpart,
      this.grade,
      this.docno,
      this.tscreate,
      this.description,
      this.deliverDate,
      this.qty});

  GetallpartnumAB.fromJson(Map<String, dynamic> json) {
    pn = json['pn'];
    imgpart = json['imgpart'];
    grade = json['grade'];
    docno = json['doc_no'];
    tscreate = json['ts_create'];
    description = json['description'];
    deliverDate = json['deliver_date'];
    qty = json['qty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pn'] = pn;
    data['imgpart'] = imgpart;
    data['grade'] = grade;
    data['doc_no'] = docno;
    data['ts_create'] = tscreate;
    data['description'] = description;
    data['deliver_date'] = deliverDate;
    data['qty'] = qty;
    return data;
  }
} //Arm Bushing

class GetallpartnumETC {
  String? pn;
  String? imgpart;
  String? grade;
  String? docno;
  String? tscreate;
  String? description;
  String? deliverDate;
  String? qty;

  GetallpartnumETC(
      {this.pn,
      this.imgpart,
      this.grade,
      this.docno,
      this.tscreate,
      this.description,
      this.deliverDate,
      this.qty});

  GetallpartnumETC.fromJson(Map<String, dynamic> json) {
    pn = json['pn'];
    imgpart = json['imgpart'];
    grade = json['grade'];
    docno = json['doc_no'];
    tscreate = json['ts_create'];
    description = json['description'];
    deliverDate = json['deliver_date'];
    qty = json['qty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pn'] = pn;
    data['imgpart'] = imgpart;
    data['grade'] = grade;
    data['doc_no'] = docno;
    data['ts_create'] = tscreate;
    data['description'] = description;
    data['deliver_date'] = deliverDate;
    data['qty'] = qty;
    return data;
  }
} //Other

