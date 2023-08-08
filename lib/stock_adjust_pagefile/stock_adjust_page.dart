// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';
import 'package:stock_product_app/screen_main/main_page.dart';
import 'package:stock_product_app/service/getstock_product_api.dart';
import 'package:stock_product_app/stock_adjust_pagefile/stock_adjust_detail_page.dart';

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

class stock_adjust extends StatefulWidget {
  const stock_adjust({Key? key}) : super(key: key);

  @override
  State<stock_adjust> createState() => _stock_adjustState();
}

class _stock_adjustState extends State<stock_adjust> {
  List<Itempacking> _itemspack = [];

  Future<List<Getallstockadjust>>? getAllStockAdjustdata;
  List listStockAdjustData = [];

  get index => context;

  getpsd() {
    setState(() {
      getAllStockAdjustdata = GetstockadjustAPI.getviewAllstockadjust();
    });
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    setState(() {
      _itemspack = _generateItemspack();
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
        ), //จำนวน/ใน/นอก MergeTable
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
                  backgroundColor: Color(0xff34007D),
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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const stock_adjust_detail(),
                    ),
                  );
                },
              ),
            ),
          ),
        ), //การกระทำ
      ],
    );
  }

  //==========================================================================

  TextEditingController searchAdjustController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD5F6FF),
      body: SingleChildScrollView(
        child: Center(
          child: FutureBuilder(
            future: getAllStockAdjustdata,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasData) {
                print(snapshot.data.length);
                listStockAdjustData = snapshot.data;
                print('StockAdjust');
                return Padding(
                  padding: EdgeInsets.only(left: 0, right: 0, top: 0),
                  child: SafeArea(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50.0,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 50.0,
                            ),
                            Text(
                              'เลือกพาร์ทนัมเบอร์ที่ต้องการค้นหา เพื่อเเสดงข้อมูลสถานที่จัดเก็บสินค้า',
                              style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 50, left: 50.0),
                              child: Container(
                                width: 3080,
                                height: 120,
                                color: Colors.white,
                                child: TextField(
                                  style: const TextStyle(
                                      fontSize: 70.0, color: Colors.black),
                                  controller: searchAdjustController,
                                  decoration: const InputDecoration(
                                    fillColor: Colors.white,
                                    hintText:
                                        '12361-0L030,123610L030,12361-30080,1236130080,12361-0L040,123610L040',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 200.0,
                              height: 120.0,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side:
                                      BorderSide(color: Colors.black, width: 2),
                                ),
                                child: Icon(
                                  Icons.arrow_back_outlined,
                                  size: 100.0,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const main_page(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        Container(
                          height: 3000,
                          width: 3500,
                          padding:
                              const EdgeInsets.only(left: 50.0, right: 10.0),
                          child: Column(
                            children: [
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
                                height: 50.0,
                              ),
                              Container(
                                width: 3310,
                                child: Container(
                                  child: Table(
                                    border: TableBorder.all(
                                      color: Colors.black,
                                      width: 1,
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
                                      5: FractionColumnWidth(
                                          .10), //จำนวน/ด้านใน/นอก
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
                                      5: FractionColumnWidth(
                                          .10), //จำนวน/ด้านใน/นอก
                                      6: FractionColumnWidth(.08),
                                      //จำนวน
                                      7: FractionColumnWidth(.08),
                                      //การกระทำ
                                    },
                                    children: _itemspack
                                        .map(
                                            (item) => _buildTableRowpart1(item))
                                        .toList(),
                                  ),
                                ),
                              ), //TableDetailPack
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
                const SizedBox(
                  height: 50.0,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 50.0,
                    ),
                    Text(
                      'เลือกพาร์ทนัมเบอร์ที่ต้องการค้นหา เพื่อเเสดงข้อมูลสถานที่จัดเก็บสินค้า',
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50, left: 50.0),
                      child: Container(
                        width: 3080,
                        height: 120,
                        color: Colors.white,
                        child: TextField(
                          style: const TextStyle(
                              fontSize: 70.0, color: Colors.black),
                          controller: searchAdjustController,
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            hintText:
                                '12361-0L030,123610L030,12361-30080,1236130080,12361-0L040,123610L040',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 200.0,
                      height: 120.0,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Icon(
                          Icons.arrow_back_outlined,
                          size: 100.0,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const main_page(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  height: 3000,
                  width: 3500,
                  padding: const EdgeInsets.only(left: 50.0, right: 10.0),
                  child: Column(
                    children: [
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
                        height: 50.0,
                      ),
                      Container(
                        width: 3310,
                        child: Container(
                          child: Table(
                            border: TableBorder.all(
                              color: Colors.black,
                              width: 1,
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
                ),
              ],
            ),
          )
 */