/*
// กำหนดฟิลด์ข้อมูลของตาราง
class SearchStockFields {
  // สร้างเป็นลิสรายการสำหรับคอลัมน์ฟิลด์
  static final List<String> values = [
    id, partnumber, prod_group, category_name,warehouse_name,area_name,row_name,
    column_name,shelf,qty_in,qty
  ];

  // กำหนดแต่ละฟิลด์ของตาราง ต้องเป็น String ทั้งหมด
  static final String id = 'id';
  static final String partnumber = 'partnumber';
  static final String prod_group = 'prod_group';
  static final String category_name = 'category_name';
  static final String warehouse_name = 'warehouse_name';
  static final String area_name = 'area_name';
  static final String row_name = 'row_name';
  static final String column_name = 'column_name';
  static final String shelf = 'shelf';
  static final String qty_in = 'qty_in';
  static final String qty = 'qty';
}
// ส่วนของ Data Model
class SearchStock {
  int id;
  String partnumber;
  String prod_group;
  String category_name;
  String warehouse_name;
  String area_name;
  String row_name;
  String column_name;
  String shelf;
  String qty_in;
  String qty;

  SearchStock ({
    required this.id,
    required this.partnumber,
    required this.prod_group,
    required this.category_name,
    required this.warehouse_name,
    required this.area_name,
    required this.row_name,
    required this.column_name,
    required this.shelf,
    required this.qty_in,
    required this.qty,
  });

  // สำหรับแปลงข้อมูลจาก Json เป็น  object
  static SearchStock fromJson(Map<String, Object?> json) =>
      SearchStock(
          id: json[SearchStockFields.id] as int,
          partnumber: json[SearchStockFields.partnumber] as String,
          prod_group: json[SearchStockFields.prod_group] as String,
          category_name: json[SearchStockFields.category_name] as String,
          warehouse_name: json[SearchStockFields.warehouse_name] as String,
          area_name: json[SearchStockFields.area_name] as String,
          row_name: json[SearchStockFields.row_name] as String,
          column_name: json[SearchStockFields.column_name] as String,
          shelf: json[SearchStockFields.shelf] as String,
          qty_in: json[SearchStockFields.qty_in] as String,
          qty: json[SearchStockFields.qty] as String,
      );

  // สำหรับแปลง  object เป็น Json
  Map<String, Object?> toJson() => {
    SearchStockFields.id: id,
    SearchStockFields.partnumber: partnumber,
    SearchStockFields.prod_group: prod_group,
    SearchStockFields.category_name: category_name,
    SearchStockFields.warehouse_name: warehouse_name,
    SearchStockFields.area_name: area_name,
    SearchStockFields.row_name: row_name,
    SearchStockFields.column_name: column_name,
    SearchStockFields.shelf: shelf,
    SearchStockFields.qty_in: qty_in,
    SearchStockFields.qty: qty,
  };

}

 */

class Getallsearchstock {
  String? partnumber;
  String? prodGroup;
  String? categoryName;
  String? warehouseName;
  String? areaName;
  String? rowName;
  String? columnName;
  String? shelf;
  String? qtyIn;
  String? qty;

  Getallsearchstock({
    this.partnumber,
    this.prodGroup,
    this.categoryName,
    this.warehouseName,
    this.areaName,
    this.rowName,
    this.columnName,
    this.shelf,
    this.qtyIn,
    this.qty,
  });

  Getallsearchstock.fromJson(Map<String, dynamic> json) {
    partnumber = json['partnumber'];
    prodGroup = json['prod_group'];
    categoryName = json['category_name'];
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
    data['prod_group'] = prodGroup;
    data['category_name'] = categoryName;
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

class GetallsearchstockDetail {
  String? partnumber;
  String? prodGroup;
  String? categoryName;
  String? warehouseName;
  String? areaName;
  String? rowName;
  String? columnName;
  String? shelf;
  String? qtyIn;
  String? qty;

  GetallsearchstockDetail({
    this.partnumber,
    this.prodGroup,
    this.categoryName,
    this.warehouseName,
    this.areaName,
    this.rowName,
    this.columnName,
    this.shelf,
    this.qtyIn,
    this.qty,
  });

  GetallsearchstockDetail.fromJson(Map<String, dynamic> json) {
    partnumber = json['partnumber'];
    prodGroup = json['prod_group'];
    categoryName = json['category_name'];
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
    data['prod_group'] = prodGroup;
    data['category_name'] = categoryName;
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