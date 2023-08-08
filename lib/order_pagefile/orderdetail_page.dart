// ignore_for_file: camel_case_types, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stock_product_app/models/ordering_model/ordering_model.dart';
import 'package:stock_product_app/order_pagefile/ordering_page.dart';
import 'package:stock_product_app/service/getstock_product_api.dart';

class Items {
  Items({
    required this.id,
    required this.partup,
    required this.typepart,
    required this.rubber,
    required this.typerub,
    required this.order,
    required this.finish,
    required this.request,
    required this.metalinout,
    required this.planpick,
    required this.stocktotal,
    required this.etc,
    required this.stock,
    required this.button,
  });

  int id;
  String partup;
  String typepart;
  String rubber;
  String typerub;
  String order;
  String finish;
  String request;
  String metalinout;
  String planpick;
  String stocktotal;
  String etc;
  String stock;
  String button;
}

class Itemspop {
  Itemspop({
    required this.id,
    required this.warehouse,
    required this.totalinout,
    required this.type,
    required this.stockinout,
    required this.etc,
  });

  int id;
  String warehouse;
  String totalinout;
  String type;
  String stockinout;
  String etc;
}

class orderdetail_page extends StatefulWidget {
  const orderdetail_page({Key? key}) : super(key: key);

  @override
  State<orderdetail_page> createState() => _orderdetail_pageState();
}

class _orderdetail_pageState extends State<orderdetail_page> {

  Future<List<GetallorderingDetail>>? getAllOrderingDetailData;
  List listOrderingDetailData = [];

  get index => context;
  getpsd() {
    setState(() {
      getAllOrderingDetailData = GetorderingAPI.getviewAllOrderingDetail();
    });
  }

  deleteItem() {
    if (listOrderingDetailData.length > 10) {
      setState(() {
        getAllOrderingDetailData?.then((value) {
          value.removeRange(0, 9);
        });
      });
    }else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ordering_page(),
          )
      );
    }
  }

  List<Items> _items = [];
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

  List<Items> _generateItems() {
    return List.generate(1, (int index) {
      return Items(
          id: index,
          partup: 'partup',
          typepart: 'typepart',
          rubber: 'rubber',
          typerub: 'typerub',
          order: 'order',
          finish: 'finish',
          request: 'request',
          metalinout: 'metalinout',
          planpick: 'planpick',
          stocktotal: 'stocktotal',
          etc: 'etc',
          stock: 'stock',
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
          etc: 'etc');
    });
  }

  //============================= Table ===================================

  TableRow _buildTableRowpart(Items item) {
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
                padding: const EdgeInsets.only(bottom: 30),
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
        ),  //ลำดับ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'พาร์ทอัปโหลด',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //พาร์ทอัปโหลด
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
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
            height: 250,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'ยาง',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //ยาง
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
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
            height: 250,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'ออเดอร์',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //ออเดอร์
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'สำเร็จรูป',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //สำเร็จรูป
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'ต้องการ',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //ต้องการ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 29),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'จ่ายเหล็ก',
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 30,
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
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              width: 90,
                              alignment: Alignment.center,
                              child: Text(
                                'ใน',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 2,
                            height: 120,
                            color: Colors.black45,
                            alignment: Alignment.bottomCenter,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 100,
                              alignment: Alignment.center,
                              child: Text(
                                'นอก',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 2,
                            height: 120,
                            color: Colors.black45,
                            alignment: Alignment.bottomCenter,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 100,
                              alignment: Alignment.center,
                              child: Text(
                                'ครบ',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w500
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
        ),  //จ่ายเหล็ก/ใน/นอก/ครบ MergeTable
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'วางเเผนรับ',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //วางเเผนรับ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'คงค้าง',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //คงค้าง
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'หมายเหตุ',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //หมายเหตุ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 250,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'ที่จัดเก็บ',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //ที่จัดเก็บ
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
        ),  //ช่องปุ่ม
      ],
    );
  }

  TableRow _buildTableRowpart1(Items item) {
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Transform.scale(
                  scale: 2.5,
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (bool? value){
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '${index +1}',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black
                  ),
                ),
              ],
            ),
          ),
        ),  //ลำดับ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Container(
                  width: 300,
                  child: Text(
                    '${snapshot.data[index].part_upload}',
                    //'11220-50Y05',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //พาร์ทอัปโหลด
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Container(
                  width: 220,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${snapshot.data[index].type_description}',
                    //'-',
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
            height: 70,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Container(
                  width: 150,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '${snapshot.data[index].rubber}',
                    //'-',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //ยาง
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Container(
                  width: 300,
                  alignment: Alignment.center,
                  child: Text(
                    '${snapshot.data[index].type_description}',
                    //'งานด้านใน-ด้านนอก',
                    style: TextStyle(
                        fontSize: 30.0,
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
            height: 70,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Container(
                  width: 150,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '${snapshot.data[index].qty}',
                    //'1',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.blue),
                  ),
                ),
              ),
            ),
          ),
        ),  //ออเดอร์
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Container(
                  width: 100,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '${snapshot.data[index].issueing_qty}',
                    //'-',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //สำเร็จรูป
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Container(
                  width: 150,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '${snapshot.data[index].want_issueing_qty}',
                    //'1',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.green),
                  ),
                ),
              ),
            ),
          ),
        ),  //ต้องการ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
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
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              width: 90,
                              alignment: Alignment.centerRight,
                              child: Text(
                                '${snapshot.data[index].qty_in}',
                                //'0',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300,
                                  color: Colors.blueAccent
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 2,
                            height: 115,
                            color: Colors.black45,
                            alignment: Alignment.bottomCenter,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              width: 90,
                              alignment: Alignment.centerRight,
                              child: Text(
                                '${snapshot.data[index].qty_out}',
                                //'0',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.blueAccent
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 2,
                            height: 115,
                            color: Colors.black45,
                            alignment: Alignment.bottomCenter,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              width: 90,
                              alignment: Alignment.centerRight,
                              child: Text(
                                '${snapshot.data[index].qty_set}',
                                //'-',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.blueAccent
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
        ),  //จ่ายเหล็ก/ใน/นอก/ครบ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Container(
                  width: 200,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '${snapshot.data[index].qty_receive}',
                    //'-',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //วางเเผนรับ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Container(
                  width: 100,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '${snapshot.data[index].want_issueing_qty_qty_receive}',
                    //'1',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.red),
                  ),
                ),
              ),
            ),
          ),
        ),  //คงค้าง
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Container(
                  width: 250,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${snapshot.data[index].remark}',
                    //'-',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //หมายเหตุ
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Container(
                  width: 200,
                  alignment: Alignment.centerLeft,
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
        ),  //ที่จัดเก็บ
        TableCell(
          child: Container(
            width: 250.0,
            height: 120.0,
            alignment: Alignment.center,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
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
                            borderRadius: BorderRadius.circular(40),
                          ),
                          elevation: 30,
                          child: Container(
                            width: 3000,
                            height: 1400,
                            color: Colors.white,
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 50,right: 50,top: 120,bottom: 20
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'ที่จัดเก็บ',
                                    style: TextStyle(
                                        fontSize: 80,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
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
                                          5: FractionColumnWidth(.25), //หมายเหตุ
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
                                          5: FractionColumnWidth(.25), //หมายเหตุ
                                        },
                                        children: _items
                                            .map((item) => _buildTableRowpop1(item))
                                            .toList(),
                                      ),
                                    ),
                                  ), //TableDetail1
                                  SizedBox(
                                    height: 250,
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
                                                side: BorderSide(color: Colors.red, width: 2),
                                                shape: const RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.all(Radius.circular(10)),
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
                                              onPressed: () {

                                              },
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
                                                side: BorderSide(color: Colors.black, width: 2),
                                                shape: const RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.all(Radius.circular(10)),
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
                    }
                );
              },
            ),
          ),


        ),  //ปุ่ม
      ],
    );
  }

  //=======================================================================

  //============================== TablePop ===============================

  TableRow _buildTableRowpop(Items item) {
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
                              width: 5,
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
                            width: 5,
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
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10,left: 250),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: const [
                      Text(
                        'หมายเหตุ',
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        '*',
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),  //หมายเหตุ
      ],
    );
  }
  TableRow _buildTableRowpop1(Items item) {
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
                        '${snapshot.data[index].warehouse_name}/'
                        '${snapshot.data[index].area_name}/'
                        '${snapshot.data[index].row_name}/'
                        '${snapshot.data[index].column_name}/'
                        '${snapshot.data[index].shelf}/',
                    //' - / E / 3 / - / - ',
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
                                '${snapshot.data[index].prod_qty_in}',
                                //'0',
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
                            width: 5,
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
                                '${snapshot.data[index].prod_qty_out}',
                                //'0',
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
                    '${snapshot.data[index].type_code}',
                    //'-',
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
                            width: 5,
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
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 200,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 750.0,
                  height: 80.0,
                  color: Colors.white,
                  child: TextField(
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
                        hintText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),  //หมายเหตุ
      ],
    );
  }

  //=======================================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD5F6FF),
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: getAllOrderingDetailData,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if(snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
              print(snapshot.data.length);
              listOrderingDetailData = snapshot.data;
              print('OrderingDetail');
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                        left: 0,right: 0,top: 0
                    ),
                    child: SafeArea(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 3100.0,
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
                                        builder: (context) => const ordering_page(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Container(
                            width: 3310,
                            color: Colors.white,
                            // padding: const EdgeInsets.only(left: 50.0, right: 30.0),
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
                                        0: FractionColumnWidth(.04), //ลำดับ
                                        1: FractionColumnWidth(.11), //พาร์ทอัปโหลด
                                        2: FractionColumnWidth(.08), //ประเภท
                                        3: FractionColumnWidth(.06), //ยาง
                                        4: FractionColumnWidth(.08), //ประเภท
                                        5: FractionColumnWidth(.06), //ออเดอร์
                                        6: FractionColumnWidth(.06), //สำเร็จรูป
                                        7: FractionColumnWidth(.06), //ต้องการ
                                        8: FractionColumnWidth(.11), //จ่ายเหล็ก/ใน/นอก/ครบ
                                        9: FractionColumnWidth(.08), //วางเเผนรับ
                                        10: FractionColumnWidth(.05), //คงค้าง
                                        11: FractionColumnWidth(.10), //หมายเหตุ
                                        12: FractionColumnWidth(.08), //ที่จัดเก็บ
                                        13: FractionColumnWidth(.03), //ปุ่ม
                                      },
                                      children: _items
                                          .map((item) => _buildTableRowpart(item))
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
                                        0: FractionColumnWidth(.04), //ลำดับ
                                        1: FractionColumnWidth(.11), //พาร์ทอัปโหลด
                                        2: FractionColumnWidth(.08), //ประเภท
                                        3: FractionColumnWidth(.06), //ยาง
                                        4: FractionColumnWidth(.08), //ประเภท
                                        5: FractionColumnWidth(.06), //ออเดอร์
                                        6: FractionColumnWidth(.06), //สำเร็จรูป
                                        7: FractionColumnWidth(.06), //ต้องการ
                                        8: FractionColumnWidth(.11), //จ่ายเหล็ก/ใน
                                        // 9: FractionColumnWidth(.03), //จ่ายเหล็ก/นอก
                                        // 10: FractionColumnWidth(.03), //จ่ายเหล็ก/ครบ
                                        9: FractionColumnWidth(.08), //วางเเผนรับ
                                        10: FractionColumnWidth(.05), //คงค้าง
                                        11: FractionColumnWidth(.10), //หมายเหตุ
                                        12: FractionColumnWidth(.08), //ที่จัดเก็บ
                                        13: FractionColumnWidth(.03), //ปุ่ม
                                      },
                                      children: _items
                                          .map((item) => _buildTableRowpart1(item))
                                          .toList(),
                                    ),
                                  ),
                                ), //Tabledetail1
                              ],
                            ),
                          ), //Table
                          SizedBox(
                            height: 1000,
                          ),
                          Container(
                            width: 2120,
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 350.0,
                                    height: 150.0,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.red,
                                        side: BorderSide(color: Colors.red, width: 2),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                      ),
                                      child: Text(
                                        'จ่ายออก',
                                        style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      onPressed: () {

                                      },
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
                                        side: BorderSide(color: Colors.black, width: 2),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
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
    );
  }
}

/*
SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 3100.0,
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
                            builder: (context) => const ordering_page(),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                width: 3310,
                color: Colors.white,
                // padding: const EdgeInsets.only(left: 50.0, right: 30.0),
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
                            0: FractionColumnWidth(.04), //ลำดับ
                            1: FractionColumnWidth(.11), //พาร์ทอัปโหลด
                            2: FractionColumnWidth(.08), //ประเภท
                            3: FractionColumnWidth(.06), //ยาง
                            4: FractionColumnWidth(.08), //ประเภท
                            5: FractionColumnWidth(.06), //ออเดอร์
                            6: FractionColumnWidth(.06), //สำเร็จรูป
                            7: FractionColumnWidth(.06), //ต้องการ
                            8: FractionColumnWidth(.11), //จ่ายเหล็ก/ใน/นอก/ครบ
                            9: FractionColumnWidth(.08), //วางเเผนรับ
                            10: FractionColumnWidth(.05), //คงค้าง
                            11: FractionColumnWidth(.10), //หมายเหตุ
                            12: FractionColumnWidth(.08), //ที่จัดเก็บ
                            13: FractionColumnWidth(.03), //ปุ่ม
                          },
                          children: _items
                              .map((item) => _buildTableRowpart(item))
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
                            0: FractionColumnWidth(.04), //ลำดับ
                            1: FractionColumnWidth(.11), //พาร์ทอัปโหลด
                            2: FractionColumnWidth(.08), //ประเภท
                            3: FractionColumnWidth(.06), //ยาง
                            4: FractionColumnWidth(.08), //ประเภท
                            5: FractionColumnWidth(.06), //ออเดอร์
                            6: FractionColumnWidth(.06), //สำเร็จรูป
                            7: FractionColumnWidth(.06), //ต้องการ
                            8: FractionColumnWidth(.11), //จ่ายเหล็ก/ใน
                            // 9: FractionColumnWidth(.03), //จ่ายเหล็ก/นอก
                            // 10: FractionColumnWidth(.03), //จ่ายเหล็ก/ครบ
                            9: FractionColumnWidth(.08), //วางเเผนรับ
                            10: FractionColumnWidth(.05), //คงค้าง
                            11: FractionColumnWidth(.10), //หมายเหตุ
                            12: FractionColumnWidth(.08), //ที่จัดเก็บ
                            13: FractionColumnWidth(.03), //ปุ่ม
                          },
                          children: _items
                              .map((item) => _buildTableRowpart1(item))
                              .toList(),
                        ),
                      ),
                    ), //Tabledetail1
                  ],
                ),
              ), //Table
              SizedBox(
                height: 1000,
              ),
              Container(
                width: 2120,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 350.0,
                        height: 150.0,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.red,
                            side: BorderSide(color: Colors.red, width: 2),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          child: Text(
                            'จ่ายออก',
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {

                          },
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
                            side: BorderSide(color: Colors.black, width: 2),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
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
        )
 */
