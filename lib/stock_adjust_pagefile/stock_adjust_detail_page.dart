// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_typing_uninitialized_variables, avoid_print, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:stock_product_app/service/getstock_product_api.dart';
import 'package:stock_product_app/stock_adjust_pagefile/stock_adjust_page.dart';

import '../models/stock_adjust_model/stock_adjust_model.dart';

class Itempacking {
  Itempacking({
    required this.id,
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

  int id;
  String? partnumber;
  String? description;
  String? warehouseName;
  String? areaName;
  String? rowName;
  String? columnName;
  String? shelf;
  String? qtyIn;
  String? qty;
}

class Itemsmove {
  Itemsmove({
    required this.id,
    this.type,
    this.issueingNo,
    this.qtyInBeforeQtyInAfter,
    this.qtyBeforeQtyAfter,
    this.qtyInBeforeQtyInafter,
    this.qtyBeforeQtyafter,
    this.qtyAfter,
    this.tsName,
    this.tsCreate,
  });

  int id;
  String? type;
  String? issueingNo;
  String? qtyInBeforeQtyInAfter;
  String? qtyBeforeQtyAfter;
  String? qtyInBeforeQtyInafter;
  String? qtyBeforeQtyafter;
  String? qtyAfter;
  String? tsName;
  String? tsCreate;
}

class stock_adjust_detail extends StatefulWidget {
  const stock_adjust_detail({Key? key}) : super(key: key);

  @override
  State<stock_adjust_detail> createState() => _stock_adjust_detailState();
}

class _stock_adjust_detailState extends State<stock_adjust_detail> {
  List<Itempacking> _itemspack = [];
  List<Itemsmove> _itemsmove = [];

  Future<List<GetallstockadjustDetail>>? getAllStockAdjustDetailData;
  List listStockAdjustDetailData = [];

  get index => context;

  getpsd() {
    setState(() {
      getAllStockAdjustDetailData =
          GetstockadjustAPI.getviewAllstockadjustDetail();
    });
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    setState(() {
      _itemspack = _generateItemspack();
      _itemsmove = _generateItemsmove();
    });
  }

  List<Itempacking> _generateItemspack() {
    return List.generate(1, (int index) {
      return Itempacking(
          id: index,
          partnumber: 'partnumber',
          description: 'description',
          warehouseName: 'warehouse_name',
          areaName: 'area_name',
          rowName: 'row_name',
          columnName: 'column_name',
          shelf: 'shelf',
          qtyIn: 'qty_in',
          qty: 'qty');
    });
  }

  List<Itemsmove> _generateItemsmove() {
    return List.generate(1, (int index) {
      return Itemsmove(
        id: index,
        type: 'type',
        issueingNo: 'issueing_no',
        qtyInBeforeQtyInAfter: 'qty_in_before_qty_in_after',
        qtyBeforeQtyAfter: 'qty_before_qty_after',
        qtyInBeforeQtyInafter: 'qty_in_before_qty_in_after',
        qtyBeforeQtyafter: 'qty_before_qty_after',
        qtyAfter: 'qty_after',
        tsName: 'ts_name',
        tsCreate: 'ts_create',
      );
    });
  }

  //======================= TableRowPart ====================================

  TableRow _buildTableRowpart(Itempacking item) {
    return TableRow(
      key: ValueKey(item.id),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Text(
                'ลำดับ',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //ลำดับ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Text(
                'รหัสสินค้า',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //รหัสสินค้า
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Text(
                'กลุ่มสินค้า',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //กลุ่มสินค้า
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Text(
                'คลัง / พื้นที่ / เเถว / ล็อก / ชั้น',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //คลัง/พื้นที่/เเถว/ล็อก/ชั้น
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'จำนวน',
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        height: 2,
                        color: Colors.black45,
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 200,
                            alignment: Alignment.center,
                            child: Text(
                              'ด้านใน',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 2,
                            height: 104,
                            color: Colors.black45,
                            alignment: Alignment.bottomCenter,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 200,
                            alignment: Alignment.center,
                            child: Text(
                              'ด้านนอก',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ), //จำนวน/ใน/นอก
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Text(
                'จำนวน',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //จำนวน
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Text(
                'การกระทำ',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //การกระทำ
      ],
    );
  }

  TableRow _buildTableRowpart1(Itempacking item) {
    var snapshot;
    return TableRow(
      key: ValueKey(item.id),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Text(
                '${index + 1}',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
            ),
          ),
        ), //ลำดับ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 400,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${snapshot.data[index].partnumber}',
                    //'12361-0L030',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //รหัสสินค้า
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 750,
                  height: 100,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${snapshot.data[index].description}',
                    //'Engine Mounting (หิ้วเครื่อง,เเท่นเครื่อง)',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //กลุ่มสินค้า
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 750,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(
                    '${snapshot.data[index].warehouse_name}/'
                    '${snapshot.data[index].area_name}/'
                    '${snapshot.data[index].row_name}/'
                    '${snapshot.data[index].column_name}/'
                    '${snapshot.data[index].shelf}/',
                    //'เเท่นเครื่อง / B / B1 / 5 / -',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //คลัง/พื้นที่/เเถว/ล็อก/ชั้น
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          height: 120,
                          alignment: Alignment.centerRight,
                          child: Text(
                            '${snapshot.data[index].qty_in}',
                            //'0',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w300),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: 2,
                          height: 120,
                          color: Colors.black45,
                          alignment: Alignment.bottomCenter,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: 200,
                          height: 120,
                          alignment: Alignment.centerRight,
                          child: Text(
                            '${snapshot.data[index].qty}',
                            //'0',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ), //จำนวน/ใน/นอก
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 400,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(
                    '2',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //จำนวน
        TableCell(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: 130,
              height: 140.0,
              alignment: Alignment.center,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding:
                      EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
                  backgroundColor: Colors.grey,
                  side: BorderSide(color: Colors.black, width: 1),
                ),
                child: Text(
                  'ปรับยอด',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const stock_adjust_detail(),
                  //   ),
                  // );
                },
              ),
            ),
          ),
        ), //การกระทำ
      ],
    );
  }

  //=========================================================================

  //======================== TableRowMove ===================================

  TableRow _buildTableRowmove(Itemsmove item) {
    return TableRow(
      key: ValueKey(item.id),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'ลำดับ',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //ลำดับ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'ประเภท',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //ประเภท
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'เลขที่เอกสาร',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //เลขที่เอกสาร
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'จำนวนเข้า',
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Divider(
                        color: Colors.black45,
                        height: 2,
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 20),
                            child: Container(
                              width: 230,
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                'ด้านใน',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            width: 2,
                            height: 119,
                            color: Colors.black45,
                            alignment: Alignment.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 10),
                            child: Container(
                              width: 230,
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                'ด้านนอก',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ), //จำนวนเข้า/ใน/นอก
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'จำนวนออก',
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Divider(
                        color: Colors.black45,
                        height: 2,
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 20),
                            child: Container(
                              width: 230,
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                'ด้านใน',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            width: 2,
                            height: 119,
                            color: Colors.black45,
                            alignment: Alignment.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 10),
                            child: Container(
                              width: 230,
                              height: 100,
                              alignment: Alignment.center,
                              child: Text(
                                'ด้านนอก',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ), //จำนวนออก/ใน/นอก
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'คงเหลือ',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //คงเหลือ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'ผู้บันทึก',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //ผู้บันทึก
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'บันทึกเมื่อ',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //บันทึกเมื่อ
      ],
    );
  }

  TableRow _buildTableRowmove1(Itemsmove item) {
    var snapshot;
    return TableRow(
      key: ValueKey(item.id),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 500,
                  alignment: Alignment.center,
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //ลำดับ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 300,
                  alignment: Alignment.center,
                  child: Text(
                    '${snapshot.data[index].type}',
                    //'จ่ายออก',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //ประเภท
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 450,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${snapshot.data[index].issueing_no}',
                    //'RV202208/0444',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //เลขที่เอกสาร
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(0.1),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 20),
                            child: Container(
                              width: 228,
                              height: 100,
                              alignment: Alignment.centerRight,
                              child: Text(
                                '${snapshot.data[index].qty_in_before_qty_in_after}',
                                //'-',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            width: 2,
                            height: 119,
                            color: Colors.black45,
                            alignment: Alignment.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 10),
                            child: Container(
                              width: 228,
                              height: 100,
                              alignment: Alignment.centerRight,
                              child: Text(
                                '${snapshot.data[index].qty_before_qty_after}',
                                //'-',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ), //จำนวนเข้า/ใน/นอก
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(0.1),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 20),
                            child: Container(
                              width: 228,
                              height: 100,
                              alignment: Alignment.centerRight,
                              child: Text(
                                '${snapshot.data[index].qty_in_before_qty_in_after}',
                                //'-',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            width: 2,
                            height: 119,
                            color: Colors.black45,
                            alignment: Alignment.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 10),
                            child: Container(
                              width: 228,
                              height: 100,
                              alignment: Alignment.centerRight,
                              child: Text(
                                '${snapshot.data[index].qty_in_before_qty_in_after}',
                                //'10',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ), //จำนวนออก/ใน/นอก
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  width: 300,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '${snapshot.data[index].qty_after}',
                    //'0',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //คงเหลือ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 500,
                  alignment: Alignment.center,
                  child: Text(
                    '${snapshot.data[index].ts_name}',
                    //'บังอร อินนา',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //ผู้บันทึก
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 450,
                  alignment: Alignment.center,
                  child: Text(
                    '${snapshot.data[index].ts_create}',
                    //'19/08/2022 16:49',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //บันทึกเมื่อ
      ],
    );
  }

  //=========================================================================

  String dropdownvalue = '20';

  var items = [
    '5',
    '10',
    '15',
    '20',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD5F6FF),
      body: SingleChildScrollView(
        child: Center(
          child: FutureBuilder(
            future: getAllStockAdjustDetailData,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasData) {
                print(snapshot.data.length);
                listStockAdjustDetailData = snapshot.data;
                print('StockAdjustDetail');
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 0, right: 0, top: 0),
                      child: SafeArea(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 3190,
                                  height: 1,
                                ), //Space
                                Container(
                                  width: 200.0,
                                  height: 120.0,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: BorderSide(
                                          color: Colors.black, width: 2),
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.arrow_back_outlined,
                                      size: 100.0,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const stock_adjust(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ), //BackButton
                            Container(
                              width: 3310,
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'ข้อมูลคลังสินค้า',
                                        style: TextStyle(
                                            fontSize: 50.0,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30.0,
                                  ),
                                  Container(
                                    width: 3310,
                                    child: Container(
                                      child: Table(
                                        border: TableBorder.all(
                                          color: Colors.black,
                                          width: 1,
                                          style: BorderStyle.solid,
                                        ),
                                        columnWidths: const {
                                          0: FractionColumnWidth(.04),
                                          //ลำดับ
                                          1: FractionColumnWidth(.15),
                                          //รหัสสินค้า
                                          2: FractionColumnWidth(.25),
                                          //กลุ่มสินค้า
                                          3: FractionColumnWidth(.23),
                                          //คลัง/พื้นที่/เเถว/ล็อก/ชั้น
                                          5: FractionColumnWidth(.10),
                                          //จำนวน/ด้านใน/นอก
                                          6: FractionColumnWidth(.08),
                                          //จำนวน
                                          7: FractionColumnWidth(.08),
                                          //การกระทำ
                                        },
                                        children: _itemspack
                                            .map((item) =>
                                                _buildTableRowpart(item))
                                            .toList(),
                                      ),
                                    ),
                                  ), //TableHead
                                  Container(
                                    width: 3310,
                                    child: Container(
                                      child: Table(
                                        border: TableBorder.all(
                                          color: Colors.black,
                                          width: 1,
                                          style: BorderStyle.solid,
                                        ),
                                        columnWidths: const {
                                          0: FractionColumnWidth(.04),
                                          //ลำดับ
                                          1: FractionColumnWidth(.15),
                                          //รหัสสินค้า
                                          2: FractionColumnWidth(.25),
                                          //กลุ่มสินค้า
                                          3: FractionColumnWidth(.23),
                                          //คลัง/พื้นที่/เเถว/ล็อก/ชั้น
                                          5: FractionColumnWidth(.10),
                                          //จำนวน/ด้านใน/นอก
                                          6: FractionColumnWidth(.08),
                                          //จำนวน
                                          7: FractionColumnWidth(.08),
                                          //การกระทำ
                                        },
                                        children: _itemspack
                                            .map((item) =>
                                                _buildTableRowpart1(item))
                                            .toList(),
                                      ),
                                    ),
                                  ), //TableDetailPack
                                ],
                              ),
                            ), //Table คลังสินค้า
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: 2300,
                              height: 300,
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      'จำนวนที่ปรับ',
                                      style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    width: 130.0,
                                    height: 130.0,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                        side: BorderSide(
                                            color: Colors.white, width: 1),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(300)),
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        size: 100.0,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // Navigator.of(context).push(
                                        //   MaterialPageRoute(
                                        //     builder: (context) => const stock_adjust(),
                                        //   ),
                                        // );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    width: 800.0,
                                    height: 90.0,
                                    color: Colors.white,
                                    child: TextField(
                                      style: TextStyle(
                                        fontSize: 50,
                                        height: 1,
                                        color: Colors.black,
                                      ),
                                      decoration: InputDecoration(
                                          hintStyle: TextStyle(
                                            fontSize: 40.0,
                                          ),
                                          hintText:
                                              'ถ้าเพิ่มขึ้นให้ระบุ 100 หรือลดลงให้ระบุ -100',
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    width: 130.0,
                                    height: 130.0,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.red,
                                        side: BorderSide(
                                            color: Colors.white, width: 1),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(300)),
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        size: 100.0,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // Navigator.of(context).push(
                                        //   MaterialPageRoute(
                                        //     builder: (context) => const stock_adjust(),
                                        //   ),
                                        // );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Container(
                                    width: 300.0,
                                    height: 140.0,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: Color(0xff4F00C0),
                                        side: BorderSide(
                                            color: Colors.black, width: 2),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.check_box_outlined,
                                            size: 100.0,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Text(
                                            'ปรับ',
                                            style: TextStyle(
                                                fontSize: 40,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const stock_adjust(),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  'ความเคลื่อนไหว',
                                  style: TextStyle(
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            Divider(
                              height: 5.0,
                              color: Colors.black45,
                              thickness: 2,
                              endIndent: 45,
                              indent: 45,
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            Container(
                              width: 3310,
                              height: 130.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Container(
                                    child: Text(
                                      'Show',
                                      style: TextStyle(
                                          fontSize: 50.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    padding:
                                        EdgeInsets.only(top: 30, bottom: 10),
                                    child: Column(
                                      children: [
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Colors.black87,
                                                width: 1),
                                            borderRadius:
                                                BorderRadius.circular(2),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 40,
                                                right: 40,
                                                top: 10,
                                                bottom: 10),
                                            child: DropdownButton(
                                              alignment: Alignment.center,
                                              style: TextStyle(
                                                  fontSize: 50,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black),
                                              value: dropdownvalue,
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                size: 50,
                                              ),
                                              items: items.map((String items) {
                                                return DropdownMenuItem(
                                                  value: items,
                                                  child: Text(items),
                                                );
                                              }).toList(),
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                  dropdownvalue = newValue!;
                                                });
                                              },
                                              underline: Container(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ), //Dropdownbox
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Container(
                                    child: Text(
                                      'entries',
                                      style: TextStyle(
                                          fontSize: 50.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2000.0,
                                  ),
                                  Container(
                                    width: 200,
                                    child: Text(
                                      'Search :',
                                      style: TextStyle(
                                          fontSize: 50.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54),
                                    ),
                                  ),
                                  Container(
                                    width: 550.0,
                                    height: 80.0,
                                    color: Colors.white,
                                    child: TextField(
                                      style: TextStyle(fontSize: 40),
                                      decoration: InputDecoration(
                                          hintStyle: TextStyle(
                                            fontSize: 40.0,
                                          ),
                                          labelStyle: TextStyle(
                                            fontSize: 70.0,
                                          ),
                                          hintText: '',
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 3310,
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 3400,
                                    child: Container(
                                      child: Table(
                                        border: TableBorder.all(
                                            color: Colors.black,
                                            width: 1,
                                            style: BorderStyle.solid),
                                        columnWidths: const {
                                          0: FractionColumnWidth(.05),
                                          //ลำดับ
                                          1: FractionColumnWidth(.09),
                                          //ประเภท
                                          2: FractionColumnWidth(.15),
                                          //เลขที่เอกสาร
                                          3: FractionColumnWidth(.16),
                                          //จำนวนเข้า/ด้านใน/ด้านนอก
                                          4: FractionColumnWidth(.16),
                                          //จำนวนออก/ด้านใน/ด้านนอก
                                          5: FractionColumnWidth(.08),
                                          //คงเหลือ
                                          6: FractionColumnWidth(.15),
                                          //ผู้บันทึก
                                          7: FractionColumnWidth(.13),
                                          //บันทึกเมื่อ
                                        },
                                        children: _itemsmove
                                            .map((item) =>
                                                _buildTableRowmove(item))
                                            .toList(),
                                      ),
                                    ),
                                  ), //TableHeadPack
                                  Container(
                                    width: 3400,
                                    child: Container(
                                      child: Table(
                                        border: TableBorder.all(
                                            color: Colors.black,
                                            width: 1,
                                            style: BorderStyle.solid),
                                        columnWidths: const {
                                          0: FractionColumnWidth(.05),
                                          //ลำดับ
                                          1: FractionColumnWidth(.09),
                                          //ประเภท
                                          2: FractionColumnWidth(.15),
                                          //เลขที่เอกสาร
                                          3: FractionColumnWidth(.16),
                                          //จำนวนเข้า/ด้านใน/ด้านนอก
                                          4: FractionColumnWidth(.16),
                                          //จำนวนออก/ด้านใน/ด้านนอก
                                          5: FractionColumnWidth(.08),
                                          //คงเหลือ
                                          6: FractionColumnWidth(.15),
                                          //ผู้บันทึก
                                          7: FractionColumnWidth(.13),
                                          //บันทึกเมื่อ
                                        },
                                        children: _itemsmove
                                            .map((item) =>
                                                _buildTableRowmove1(item))
                                            .toList(),
                                      ),
                                    ),
                                  ), //TableDetail1
                                ],
                              ),
                            ), //Table ความเคลื่อนไหว
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
              return Center(
                heightFactor: 50,
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

/*
SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      width: 3190,
                      height: 1,
                    ), //Space
                    Container(
                      width: 200.0,
                      height: 120.0,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.black, width: 2),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_back_outlined,
                          size: 100.0,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const stock_adjust(),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ), //BackButton
                Container(
                  width: 3310,
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'ข้อมูลคลังสินค้า',
                            style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        width: 3310,
                        child: Container(
                          child: Table(
                            border: TableBorder.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                            columnWidths: const {
                              0: FractionColumnWidth(.04),
                              //ลำดับ
                              1: FractionColumnWidth(.15),
                              //รหัสสินค้า
                              2: FractionColumnWidth(.25),
                              //กลุ่มสินค้า
                              3: FractionColumnWidth(.23),
                              //คลัง/พื้นที่/เเถว/ล็อก/ชั้น
                              5: FractionColumnWidth(.10), //จำนวน/ด้านใน/นอก
                              6: FractionColumnWidth(.08),
                              //จำนวน
                              7: FractionColumnWidth(.08),
                              //การกระทำ
                            },
                            children: _itemspack
                                .map((item) => _buildTableRowpart(item))
                                .toList(),
                          ),
                        ),
                      ), //TableHead
                      Container(
                        width: 3310,
                        child: Container(
                          child: Table(
                            border: TableBorder.all(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid,
                            ),
                            columnWidths: const {
                              0: FractionColumnWidth(.04),
                              //ลำดับ
                              1: FractionColumnWidth(.15),
                              //รหัสสินค้า
                              2: FractionColumnWidth(.25),
                              //กลุ่มสินค้า
                              3: FractionColumnWidth(.23),
                              //คลัง/พื้นที่/เเถว/ล็อก/ชั้น
                              5: FractionColumnWidth(.10), //จำนวน/ด้านใน/นอก
                              6: FractionColumnWidth(.08),
                              //จำนวน
                              7: FractionColumnWidth(.08),
                              //การกระทำ
                            },
                            children: _itemspack
                                .map((item) => _buildTableRowpart1(item))
                                .toList(),
                          ),
                        ),
                      ), //TableDetailPack
                    ],
                  ),
                ), //Table คลังสินค้า
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 2300,
                  height: 300,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'จำนวนที่ปรับ',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        width: 130.0,
                        height: 130.0,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.green,
                            side: BorderSide(color: Colors.white, width: 1),
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(300)),
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 100.0,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => const stock_adjust(),
                            //   ),
                            // );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        width: 800.0,
                        height: 90.0,
                        color: Colors.white,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 50,
                            height: 1,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                fontSize: 40.0,
                              ),
                              hintText:
                                  'ถ้าเพิ่มขึ้นให้ระบุ 100 หรือลดลงให้ระบุ -100',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        width: 130.0,
                        height: 130.0,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.red,
                            side: BorderSide(color: Colors.white, width: 1),
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(300)),
                            ),
                          ),
                          child: Icon(
                            Icons.remove,
                            size: 100.0,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => const stock_adjust(),
                            //   ),
                            // );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Container(
                        width: 300.0,
                        height: 140.0,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Color(0xff4F00C0),
                            side: BorderSide(color: Colors.black, width: 2),
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.check_box_outlined,
                                size: 100.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'ปรับ',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white),
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const stock_adjust(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'ความเคลื่อนไหว',
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Divider(
                  height: 5.0,
                  color: Colors.black45,
                  thickness: 2,
                  endIndent: 45,
                  indent: 45,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  width: 3310,
                  height: 130.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        child: Text(
                          'Show',
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 30, bottom: 10),
                        child: Column(
                          children: [
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.black87, width: 1),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 40, right: 40, top: 10, bottom: 10),
                                child: DropdownButton(
                                  alignment: Alignment.center,
                                  style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black),
                                  value: dropdownvalue,
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 50,
                                  ),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                  underline: Container(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ), //Dropdownbox
                      SizedBox(
                        width: 30.0,
                      ),
                      Container(
                        child: Text(
                          'entries',
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ),
                      SizedBox(
                        width: 2000.0,
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          'Search :',
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ),
                      Container(
                        width: 550.0,
                        height: 80.0,
                        color: Colors.white,
                        child: TextField(
                          style: TextStyle(fontSize: 40),
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                fontSize: 40.0,
                              ),
                              labelStyle: TextStyle(
                                fontSize: 70.0,
                              ),
                              hintText: '',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 3310,
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 3400,
                        child: Container(
                          child: Table(
                            border: TableBorder.all(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid),
                            columnWidths: const {
                              0: FractionColumnWidth(.05),
                              //ลำดับ
                              1: FractionColumnWidth(.09),
                              //ประเภท
                              2: FractionColumnWidth(.15),
                              //เลขที่เอกสาร
                              3: FractionColumnWidth(.16),
                              //จำนวนเข้า/ด้านใน/ด้านนอก
                              4: FractionColumnWidth(.16),
                              //จำนวนออก/ด้านใน/ด้านนอก
                              5: FractionColumnWidth(.08),
                              //คงเหลือ
                              6: FractionColumnWidth(.15),
                              //ผู้บันทึก
                              7: FractionColumnWidth(.13),
                              //บันทึกเมื่อ
                            },
                            children: _itemsmove
                                .map((item) => _buildTableRowmove(item))
                                .toList(),
                          ),
                        ),
                      ), //TableHeadPack
                      Container(
                        width: 3400,
                        child: Container(
                          child: Table(
                            border: TableBorder.all(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid),
                            columnWidths: const {
                              0: FractionColumnWidth(.05),
                              //ลำดับ
                              1: FractionColumnWidth(.09),
                              //ประเภท
                              2: FractionColumnWidth(.15),
                              //เลขที่เอกสาร
                              3: FractionColumnWidth(.16),
                              //จำนวนเข้า/ด้านใน/ด้านนอก
                              4: FractionColumnWidth(.16),
                              //จำนวนออก/ด้านใน/ด้านนอก
                              5: FractionColumnWidth(.08),
                              //คงเหลือ
                              6: FractionColumnWidth(.15),
                              //ผู้บันทึก
                              7: FractionColumnWidth(.13),
                              //บันทึกเมื่อ
                            },
                            children: _itemsmove
                                .map((item) => _buildTableRowmove1(item))
                                .toList(),
                          ),
                        ),
                      ), //TableDetail1
                    ],
                  ),
                ), //Table ความเคลื่อนไหว
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
 */
