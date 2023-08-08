// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stock_product_app/partnumber_pagefile/partnumber_tabpage/order_partnum_all.dart';

class Item {
  Item({
    required this.chkbox,
    required this.ordernum,
    required this.partup,
    required this.type,
    required this.tires,
    required this.deliver,
    required this.order,
    required this.packing,
    required this.total,
    required this.prod,
    required this.button,
  });

  String chkbox;
  String ordernum;
  String partup;
  String type;
  String tires;
  String deliver;
  String order;
  String packing;
  String total;
  String prod;
  String button;
}

class Itemspop {
  Itemspop({
    required this.id,
    required this.warehouse,
    required this.totalinout,
    required this.type,
    required this.stockinout,

  });

  int id;
  String warehouse;
  String totalinout;
  String type;
  String stockinout;

}

class partnum_detail_page extends StatefulWidget {
  const partnum_detail_page({Key? key}) : super(key: key);

  @override
  State<partnum_detail_page> createState() => _partnum_detail_pageState();
}

class _partnum_detail_pageState extends State<partnum_detail_page> {

  List<Item> _items = [];
  // List<Itemspop> _itemspop = [];
  bool isChecked = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _items = _generateItems();
      //_itemspop = _generateItemspop();
    });
  }

  List<Item> _generateItems() {
    return List.generate(1, (int index) {
      return Item(
          chkbox: 'chkbox',
          ordernum: 'ordernum',
          partup: 'partup',
          type: 'type',
          tires: 'tires',
          deliver: 'deliver',
          order: 'order',
          packing: 'packing',
          total: 'total',
          prod: 'prod',
          button: 'button');
    });
  }
  List<Itemspop> _generateItemspop() {
    return List.generate(1, (int index) {
      return Itemspop(
          id: index,
          warehouse: 'warehouse',
          totalinout: 'totalinout',
          type: 'type',
          stockinout: 'stockinout',
          );
    });
  }

  //====================== Table ===================================

  TableRow _buildTableRow(Item item) {
    return TableRow(
      key: ValueKey(item.chkbox),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      children: const [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Text(
                '#',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //#
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'เลขที่ออเดอร์',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //เลขที่ออเดอร์
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'พาร์ทอัปโหลด',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //พาร์ทอัปโหลด
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'ประเภท',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //ประเภท
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'ยาง',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //ยาง
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'ลงเรือ',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //ลงเรือ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'ออเดอร์',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //ออเดอร์
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'เเพ็คกิ้ง',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //เเพ็คกิ้ง
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'คงเหลือ',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //คงเหลือ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'จ่ายสินค้า',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //จ่ายสินค้า
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                '',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ), //ช่องปุ่ม
      ],
    );
  }

  TableRow _buildTableRow1(Item item) {
    return TableRow(
      key: ValueKey(item.chkbox),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Transform.scale(
                  scale: 3.0,
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ), //#
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 400,
                  height: 120,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'NM01-03-65',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //เลขที่ออเดอร์
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 400,
                  height: 120,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '12361-0L030',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //พาร์ทอัปโหลด
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 250,
                  height: 120,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '-',
                    style: TextStyle(
                        fontSize: 50.0,
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
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 250,
                  height: 120,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '-',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //ยาง
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 300,
                  height: 120,
                  alignment: Alignment.center,
                  child: Text(
                    '15/11/2022',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //ลงเรือ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 250,
                  height: 120,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '60',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //ออเดอร์
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 250,
                  height: 120,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '0',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //เเพ็คกิ้ง
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 250,
                  height: 120,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '60',
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
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 300,
                  height: 120,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ), //จ่ายสินค้า
        TableCell(
          child: Container(
            width: 250.0,
            height: 120.0,
            alignment: Alignment.center,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.red, width: 5),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              child: Icon(
                Icons.keyboard_alt_outlined,
                size: 50.0,
                color: Colors.red,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SingleChildScrollView(
                        padding: EdgeInsets.all(150),
                        child: Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 30,
                          child: Container(
                            width: 2300,
                            height: 1400,
                            color: Colors.white,
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 50, right: 50, top: 150, bottom: 50),
                              child: Column(
                                children: [
                                  Text(
                                    'ที่จัดเก็บ',
                                    style: TextStyle(
                                        fontSize: 80,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    width: 3310,
                                    child: Container(
                                      child: Table(
                                        border: TableBorder.all(
                                            color: Colors.black,
                                            width: 1,
                                            style: BorderStyle.solid),
                                        columnWidths: const {
                                          0: FractionColumnWidth(.03), //chkbox
                                          1: FractionColumnWidth(.20), //คลัง/พื้นที่/เเถว/ล็อก/ชั้น
                                          2: FractionColumnWidth(.17), //จำนวน/ใน/นอก
                                          3: FractionColumnWidth(.10), //ประเภท
                                          4: FractionColumnWidth(.17), //จ่ายสินค้า/ใน/นอก
                                        },
                                        children: _items
                                            .map((item) => _buildTableRowpop(item))
                                            .toList(),
                                      ),
                                    ),
                                  ), //TableHeadPack
                                  Container(
                                    width: 3310,
                                    child: Container(
                                      child: Table(
                                        border: TableBorder.all(
                                            color: Colors.black,
                                            width: 1,
                                            style: BorderStyle.solid),
                                        columnWidths: const {
                                          0: FractionColumnWidth(.03), //chkbox
                                          1: FractionColumnWidth(.20), //คลัง/พื้นที่/เเถว/ล็อก/ชั้น
                                          2: FractionColumnWidth(.17), //จำนวน/ใน/นอก
                                          3: FractionColumnWidth(.10), //ประเภท
                                          4: FractionColumnWidth(.17), //จ่ายสินค้า/ใน/นอก
                                        },
                                        children: _items
                                            .map((item) => _buildTableRowpop1(item))
                                            .toList(),
                                      ),
                                    ),
                                  ), //TableDetail1
                                  Container(
                                    width: 3310,
                                    child: Container(
                                      child: Table(
                                        border: TableBorder.all(
                                            color: Colors.black,
                                            width: 1,
                                            style: BorderStyle.solid),
                                        columnWidths: const {
                                          0: FractionColumnWidth(.03), //chkbox
                                          1: FractionColumnWidth(.20), //คลัง/พื้นที่/เเถว/ล็อก/ชั้น
                                          2: FractionColumnWidth(.17), //จำนวน/ใน/นอก
                                          3: FractionColumnWidth(.10), //ประเภท
                                          4: FractionColumnWidth(.17), //จ่ายสินค้า/ใน/นอก
                                        },
                                        children: _items
                                            .map((item) => _buildTableRowpop2(item))
                                            .toList(),
                                      ),
                                    ),
                                  ), //TableDetail2
                                  SizedBox(
                                    height: 150,
                                  ),
                                  Container(
                                    width: 3310,
                                    height: 200,
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 350.0,
                                            height: 150.0,
                                            child: OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                backgroundColor: Colors.red,
                                                side: BorderSide(
                                                    color: Colors.red, width: 2),
                                                shape:
                                                    const RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(10)),
                                                ),
                                              ),
                                              child: Text(
                                                'ยืนยัน',
                                                style: TextStyle(
                                                  fontSize: 60,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              onPressed: () {},
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30.0,
                                          ),
                                          Container(
                                            width: 350.0,
                                            height: 150.0,
                                            child: OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                side: BorderSide(
                                                    color: Colors.black,
                                                    width: 2),
                                                shape:
                                                    const RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(10)),
                                                ),
                                              ),
                                              child: Text(
                                                'ยกเลิก',
                                                style: TextStyle(
                                                  fontSize: 60,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              },
            ),
          ),
        ), //ปุ่ม
      ],
    );
  }

  //================================================================

  //========================= TablePop =============================

  TableRow _buildTableRowpop(Item item) {
    return TableRow(
      key: ValueKey(item.chkbox),
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
                '',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ),  //chkbox
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'คลัง/พื้นที่/เเถว/ล็อก/ชั้น',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //คลัง/พื้นที่/เเถว/ล็อก/ชั้น
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
                                  fontSize: 50,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 2,
                            height: 99,
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
                                  fontSize: 50,
                                  fontWeight: FontWeight.w500
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
        ),  //จำนวน/ใน/นอก MergeTable
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
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
        ),  //ประเภท
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
                        'จ่ายสินค้า',
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
                                  fontSize: 50,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 2,
                            height: 99,
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
                                  fontSize: 50,
                                  fontWeight: FontWeight.w500
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
        ),  //จ่ายสินค้า/ใน/นอก MergeTable
      ],
    );
  }
  TableRow _buildTableRowpop1(Item item) {
    return TableRow(
      key: ValueKey(item.chkbox),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Transform.scale(
                scale: 3.0,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (bool? value){
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
          ),
        ),  //chkbox
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ' - / E / 3 / - / - ',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //คลัง/พื้นที่/เเถว/ล็อก/ชั้น
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 200,
                              alignment: Alignment.centerRight,
                              child: Text(
                                '0',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 2,
                            height: 195,
                            color: Colors.black45,
                            alignment: Alignment.bottomCenter,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 200,
                              alignment: Alignment.centerRight,
                              child: Text(
                                '0',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300
                                ),
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
        ),  //จำนวน/ใน/นอก
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 300,
                  alignment: Alignment.center,
                  child: Text(
                    '-',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //ประเภท
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 200.0,
                              color: Colors.white,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 40
                                ),
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      fontSize: 40.0,
                                    ),
                                    labelStyle: TextStyle(
                                      fontSize: 70.0,
                                    ),
                                    hintText: '0',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    )
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 2,
                            height: 195,
                            color: Colors.black45,
                            alignment: Alignment.bottomCenter,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 200.0,
                              color: Colors.white,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 40
                                ),
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      fontSize: 40.0,
                                    ),
                                    labelStyle: TextStyle(
                                      fontSize: 70.0,
                                    ),
                                    hintText: '0',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    )
                                ),
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
        ),  //จ่ายสินค้า/ใน/นอก
      ],
    );
  }
  TableRow _buildTableRowpop2(Item item) {
    return TableRow(
      key: ValueKey(item.chkbox),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Transform.scale(
                scale: 3.0,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (bool? value){
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
          ),
        ),  //chkbox
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ' หิ้วเครื่อง / E / 11 / - / - ',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //คลัง/พื้นที่/เเถว/ล็อก/ชั้น
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 200,
                              alignment: Alignment.centerRight,
                              child: Text(
                                '0',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 2,
                            height: 195,
                            color: Colors.black45,
                            alignment: Alignment.bottomCenter,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              width: 200,
                              alignment: Alignment.centerRight,
                              child: Text(
                                '0',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300
                                ),
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
        ),  //จำนวน/ใน/นอก
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 300,
                  alignment: Alignment.center,
                  child: Text(
                    '-',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //ประเภท
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 200.0,
                              color: Colors.white,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 40
                                ),
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      fontSize: 40.0,
                                    ),
                                    labelStyle: TextStyle(
                                      fontSize: 70.0,
                                    ),
                                    hintText: '0',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    )
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 2,
                            height: 195,
                            color: Colors.black45,
                            alignment: Alignment.bottomCenter,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 200.0,
                              color: Colors.white,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 40
                                ),
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      fontSize: 40.0,
                                    ),
                                    labelStyle: TextStyle(
                                      fontSize: 70.0,
                                    ),
                                    hintText: '0',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    )
                                ),
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
        ),  //จ่ายสินค้า/ใน/นอก
      ],
    );
  }

  //================================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD5F6FF),
      body: SingleChildScrollView(
        child: Center(
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
                              builder: (context) => const order_partnum_all(),
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
                  alignment: Alignment.topLeft,
                  width: 3380,
                  height: 400,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 1000,
                        height: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Image.asset(
                          'assets/images/pic01.jpg',
                          fit: BoxFit.contain,
                        ),
                      ), //pic
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 2330,
                        height: 400,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '12361-0L030',
                                    style: TextStyle(
                                        fontSize: 70,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black87),
                                  ),
                                ), //Partnum
                                Container(
                                  alignment: Alignment.center,
                                  width: 40,
                                  child: Text(
                                    '|',
                                    style: TextStyle(
                                        fontSize: 80,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ), // |
                                Container(
                                  height: 100,
                                  width: 100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.lightGreen),
                                  child: Text(
                                    'A',
                                    style: TextStyle(
                                        fontSize: 60,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ), //PartRow
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'พาร์ทนัมเบอร์ที่เกี่ยวข้อง : ',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '12361-0L030,12361-OL030,12361-30080,1236130080,12361-0L040,12361OLO40',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            ), //partnum
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'กลุ่มสินค้า : ',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Engine Mounting(หิ้วเครื่อง,เเท่นเครื่อง)',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ), //สินค้า
                                Container(
                                  height: 70,
                                  width: 40,
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    '|',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ), // |
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'ประเภทสินค้า : ',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'มีผลิต',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ), //มีผลิต,ไม่มีผลิต
                                Container(
                                  height: 70,
                                  width: 40,
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    '/',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ), // /
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'งานติดเหล็ก',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ), //งานติดตั้ง
                                Container(
                                  height: 70,
                                  width: 40,
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    '/',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ), // /
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'งานด้านนอก',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ), //งานด้านใน,ด้านนอก
                              ],
                            ), //สินค้า , ประเภทสินค้า
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'รายละเอียดสินค้า : ',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'เเท่นเครื่อง FRONT ENGINE MOUNTING TOYOTA HILUX VIGO 2006-2009',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            ), //รายละเอียด
                          ],
                        ),
                      ),
                    ],
                  ),
                ), //partdetail
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 2,
                  color: Colors.black12,
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 3380,
                  height: 550,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: 450,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 100,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'เหล็ก',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '1.เสื้อบน',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '2.เสื้อล่าง',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ), //Metal
                      Container(
                        width: 210,
                      ), //Space
                      Container(
                        height: 450,
                        width: 2,
                        color: Colors.black12,
                      ), //Lineup
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 1170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 100,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'ส่วนประกอบ',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 700,
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '1.สกรู12 ยาว30 เกลียว1.25 สีรุ้ง',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                ),
                                Container(
                                  width: 130,
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'จำนวน',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ), //เลขจำนวนต้องเปลี่ยนตาม DB
                                Container(
                                  height: 100,
                                  width: 70,
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'ตัว',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 700,
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '2.เเหวนสปริง #4 สีรุ้ง',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                ),
                                Container(
                                  width: 130,
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'จำนวน',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ), //เลขจำนวนต้องเปลี่ยนตาม DB
                                Container(
                                  height: 100,
                                  width: 70,
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'ตัว',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 700,
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '3.หัวน๊อต12 เกลียว1.25 สีรุ้ง',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                ),
                                Container(
                                  width: 130,
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'จำนวน',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ), //เลขจำนวนต้องเปลี่ยนตาม DB
                                Container(
                                  height: 100,
                                  width: 70,
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'ตัว',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ), //Component
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        height: 300,
                        width: 1400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'คงเหลือ',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 120,
                                  width: 220,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 3, color: Colors.black)),
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 70,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'ต้นทุน/หน่วย',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 120,
                                  width: 280,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 3, color: Colors.black)),
                                  child: Text(
                                    '83.35',
                                    style: TextStyle(
                                      fontSize: 70,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'รวม',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 120,
                                  width: 280,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 3, color: Colors.black)),
                                  child: Text(
                                    '166.70',
                                    style: TextStyle(
                                      fontSize: 70,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'พื้นที่/เเถว/ล็อก/ชั้น',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 120,
                                  width: 450,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 3, color: Colors.black)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'B',
                                        style: TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black54,
                                        ),
                                      ), //พื้นที่
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '/',
                                        style: TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54,
                                        ),
                                      ), // /
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'B1',
                                        style: TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black54,
                                        ),
                                      ), //เเถว
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '/',
                                        style: TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54,
                                        ),
                                      ), // /
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '5',
                                        style: TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black54,
                                        ),
                                      ), //ล็อก
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '/',
                                        style: TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54,
                                        ),
                                      ), // /
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '-',
                                        style: TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black54,
                                        ),
                                      ), //ชั้น
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ), //ส่วนประกอบเเละยอดคงเหลือ
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 3500,
                  padding: const EdgeInsets.only(left: 50.0, right: 10.0),
                  child: Column(
                    children: [
                      Container(
                        width: 3310,
                        child: Container(
                          child: Table(
                            border: TableBorder.all(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid),
                            columnWidths: const {
                              0: FractionColumnWidth(.04), //chkbox
                              1: FractionColumnWidth(.12), //เลขที่ออเดอร์
                              2: FractionColumnWidth(.12), //พาร์ทอัปโหลด
                              3: FractionColumnWidth(.08), //ประเภท
                              4: FractionColumnWidth(.08), //ยาง
                              5: FractionColumnWidth(.08), //ลงเรือ
                              6: FractionColumnWidth(.08), //ออเดอร์
                              7: FractionColumnWidth(.08), //เเพ็คกิ้ง
                              8: FractionColumnWidth(.08), //คงเหลือ
                              9: FractionColumnWidth(.08), //จ่ายสินค้า
                              10: FractionColumnWidth(.02), //button
                            },
                            children: _items
                                .map((item) => _buildTableRow(item))
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //TableHeadPack
                Container(
                  width: 3500,
                  padding: const EdgeInsets.only(left: 50.0, right: 10.0),
                  child: Column(
                    children: [
                      Container(
                        width: 3310,
                        child: Container(
                          child: Table(
                            border: TableBorder.all(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid),
                            columnWidths: const {
                              0: FractionColumnWidth(.04), //chkbox
                              1: FractionColumnWidth(.12), //เลขที่ออเดอร์
                              2: FractionColumnWidth(.12), //พาร์ทอัปโหลด
                              3: FractionColumnWidth(.08), //ประเภท
                              4: FractionColumnWidth(.08), //ยาง
                              5: FractionColumnWidth(.08), //ลงเรือ
                              6: FractionColumnWidth(.08), //ออเดอร์
                              7: FractionColumnWidth(.08), //เเพ็คกิ้ง
                              8: FractionColumnWidth(.08), //คงเหลือ
                              9: FractionColumnWidth(.08), //จ่ายสินค้า
                              10: FractionColumnWidth(.02), //button
                            },
                            children: _items
                                .map((item) => _buildTableRow1(item))
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //TableDetail1
                SizedBox(
                  height: 20,
                ),
              ],
            ),
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
                              builder: (context) => const order_partnum_all(),
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
                  alignment: Alignment.topLeft,
                  width: 3380,
                  height: 400,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 1000,
                        height: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Image.asset(
                          'assets/images/pic01.jpg',
                          fit: BoxFit.contain,
                        ),
                      ), //pic
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 2330,
                        height: 400,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '12361-0L030',
                                    style: TextStyle(
                                        fontSize: 70,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black87),
                                  ),
                                ), //Partnum
                                Container(
                                  alignment: Alignment.center,
                                  width: 40,
                                  child: Text(
                                    '|',
                                    style: TextStyle(
                                        fontSize: 80,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ), // |
                                Container(
                                  height: 100,
                                  width: 100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.lightGreen),
                                  child: Text(
                                    'A',
                                    style: TextStyle(
                                        fontSize: 60,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ), //PartRow
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'พาร์ทนัมเบอร์ที่เกี่ยวข้อง : ',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '12361-0L030,12361-OL030,12361-30080,1236130080,12361-0L040,12361OLO40',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            ), //partnum
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'กลุ่มสินค้า : ',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Engine Mounting(หิ้วเครื่อง,เเท่นเครื่อง)',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ), //สินค้า
                                Container(
                                  height: 70,
                                  width: 40,
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    '|',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ), // |
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'ประเภทสินค้า : ',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'มีผลิต',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ), //มีผลิต,ไม่มีผลิต
                                Container(
                                  height: 70,
                                  width: 40,
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    '/',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ), // /
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'งานติดเหล็ก',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ), //งานติดตั้ง
                                Container(
                                  height: 70,
                                  width: 40,
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    '/',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ), // /
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'งานด้านนอก',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ), //งานด้านใน,ด้านนอก
                              ],
                            ), //สินค้า , ประเภทสินค้า
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'รายละเอียดสินค้า : ',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'เเท่นเครื่อง FRONT ENGINE MOUNTING TOYOTA HILUX VIGO 2006-2009',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            ), //รายละเอียด
                          ],
                        ),
                      ),
                    ],
                  ),
                ), //partdetail
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 2,
                  color: Colors.black12,
                  thickness: 2,
                  indent: 30,
                  endIndent: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 3380,
                  height: 550,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: 450,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 100,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'เหล็ก',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '1.เสื้อบน',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '2.เสื้อล่าง',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ), //Metal
                      Container(
                        width: 210,
                      ), //Space
                      Container(
                        height: 450,
                        width: 2,
                        color: Colors.black12,
                      ), //Lineup
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 1170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 100,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'ส่วนประกอบ',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 700,
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '1.สกรู12 ยาว30 เกลียว1.25 สีรุ้ง',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                ),
                                Container(
                                  width: 130,
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'จำนวน',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ), //เลขจำนวนต้องเปลี่ยนตาม DB
                                Container(
                                  height: 100,
                                  width: 70,
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'ตัว',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 700,
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '2.เเหวนสปริง #4 สีรุ้ง',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                ),
                                Container(
                                  width: 130,
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'จำนวน',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ), //เลขจำนวนต้องเปลี่ยนตาม DB
                                Container(
                                  height: 100,
                                  width: 70,
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'ตัว',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 700,
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '3.หัวน๊อต12 เกลียว1.25 สีรุ้ง',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                ),
                                Container(
                                  width: 130,
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'จำนวน',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ), //เลขจำนวนต้องเปลี่ยนตาม DB
                                Container(
                                  height: 100,
                                  width: 70,
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'ตัว',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black87),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ), //Component
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        height: 300,
                        width: 1400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'คงเหลือ',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 120,
                                  width: 220,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 3, color: Colors.black)),
                                  child: Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 70,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'ต้นทุน/หน่วย',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 120,
                                  width: 280,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 3, color: Colors.black)),
                                  child: Text(
                                    '83.35',
                                    style: TextStyle(
                                      fontSize: 70,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'รวม',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 120,
                                  width: 280,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 3, color: Colors.black)),
                                  child: Text(
                                    '166.70',
                                    style: TextStyle(
                                      fontSize: 70,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'พื้นที่/เเถว/ล็อก/ชั้น',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 120,
                                  width: 450,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 3, color: Colors.black)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'B',
                                        style: TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black54,
                                        ),
                                      ), //พื้นที่
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '/',
                                        style: TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54,
                                        ),
                                      ), // /
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'B1',
                                        style: TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black54,
                                        ),
                                      ), //เเถว
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '/',
                                        style: TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54,
                                        ),
                                      ), // /
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '5',
                                        style: TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black54,
                                        ),
                                      ), //ล็อก
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '/',
                                        style: TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54,
                                        ),
                                      ), // /
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '-',
                                        style: TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black54,
                                        ),
                                      ), //ชั้น
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ), //ส่วนประกอบเเละยอดคงเหลือ
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 3500,
                  padding: const EdgeInsets.only(left: 50.0, right: 10.0),
                  child: Column(
                    children: [
                      Container(
                        width: 3310,
                        child: Container(
                          child: Table(
                            border: TableBorder.all(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid),
                            columnWidths: const {
                              0: FractionColumnWidth(.04), //chkbox
                              1: FractionColumnWidth(.12), //เลขที่ออเดอร์
                              2: FractionColumnWidth(.12), //พาร์ทอัปโหลด
                              3: FractionColumnWidth(.08), //ประเภท
                              4: FractionColumnWidth(.08), //ยาง
                              5: FractionColumnWidth(.08), //ลงเรือ
                              6: FractionColumnWidth(.08), //ออเดอร์
                              7: FractionColumnWidth(.08), //เเพ็คกิ้ง
                              8: FractionColumnWidth(.08), //คงเหลือ
                              9: FractionColumnWidth(.08), //จ่ายสินค้า
                              10: FractionColumnWidth(.02), //button
                            },
                            children: _items
                                .map((item) => _buildTableRow(item))
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //TableHeadPack
                Container(
                  width: 3500,
                  padding: const EdgeInsets.only(left: 50.0, right: 10.0),
                  child: Column(
                    children: [
                      Container(
                        width: 3310,
                        child: Container(
                          child: Table(
                            border: TableBorder.all(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid),
                            columnWidths: const {
                              0: FractionColumnWidth(.04), //chkbox
                              1: FractionColumnWidth(.12), //เลขที่ออเดอร์
                              2: FractionColumnWidth(.12), //พาร์ทอัปโหลด
                              3: FractionColumnWidth(.08), //ประเภท
                              4: FractionColumnWidth(.08), //ยาง
                              5: FractionColumnWidth(.08), //ลงเรือ
                              6: FractionColumnWidth(.08), //ออเดอร์
                              7: FractionColumnWidth(.08), //เเพ็คกิ้ง
                              8: FractionColumnWidth(.08), //คงเหลือ
                              9: FractionColumnWidth(.08), //จ่ายสินค้า
                              10: FractionColumnWidth(.02), //button
                            },
                            children: _items
                                .map((item) => _buildTableRow1(item))
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //TableDetail1
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
 */
