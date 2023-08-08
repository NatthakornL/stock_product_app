// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stock_product_app/buystock_cutpipe_pagefile/buystock_cutpipe_page.dart';
import 'package:stock_product_app/buystock_cutpipe_pagefile/buystock_detail_page.dart';
import 'package:stock_product_app/buystock_cutpipe_pagefile/buystock_tabpage/buystock_page_all.dart';
import 'package:stock_product_app/buystock_cutpipe_pagefile/buystock_tabpage/buystock_page_cb.dart';
import 'package:stock_product_app/buystock_cutpipe_pagefile/buystock_tabpage/buystock_page_enm.dart';
import 'package:stock_product_app/buystock_cutpipe_pagefile/buystock_tabpage/buystock_page_etc.dart';
import 'package:stock_product_app/models/buystock_cutpipe_model/buystock_model/buystock_model.dart';
import 'package:stock_product_app/service/getstock_product_api.dart';

import 'buystock_page_sam.dart';

class Item {
  Item({
    required this.id,
    required this.packnum,
    required this.order,
    required this.partnum,
    required this.group,
    required this.total,
    required this.packname,
    required this.packdate,
    required this.timepack,
    required this.button,
  });

  int id;
  String packnum;
  String order;
  String partnum;
  String group;
  String total;
  String packname;
  String packdate;
  String timepack;
  String button;
}

const Color primaryColor = Colors.white; //corner
const TextStyle textStyle = TextStyle(color: Colors.black,fontSize: 40);
const Color accentColor = Color(0xFFD5F6FF); //background

class buystock_page_ab extends StatefulWidget {
  const buystock_page_ab({Key? key}) : super(key: key);

  @override
  State<buystock_page_ab> createState() => _buystock_page_abState();
}

class _buystock_page_abState extends State<buystock_page_ab> {

  Future<List<GetallbuystockAB>>? getAllbuystockABData;
  final date = new DateFormat('dd/MM/yyyy');
  List listBuystockABData = [];

  get index => context;
  getpsd() {
    setState(() {
      getAllbuystockABData = GetbuystockAPI.getviewAllbuystockAB();
    });
  }

  List<Item> _items = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _items = _generateItems();
    });
  }

  List<Item> _generateItems() {
    return List.generate(1, (int index) {
      return Item(
          id: index,
          packnum: 'packnum',
          order: 'order',
          partnum: 'partnum',
          group: 'group',
          total: 'total',
          packname: 'packname',
          packdate: 'packdate',
          timepack: 'timepack',
          button: 'button');
    });
  }

  //========================== Table =============================

  TableRow _buildTableRow(Item item) {
    return TableRow(
      key: ValueKey(item.id),
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
                'ลำดับ',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'เลขที่ใบรับสินค้า',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'ออเดอร์',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'พาร์ทนัมเบอร์',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'กลุ่ม',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'จำนวน',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'ผู้ส่งสินค้า',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'วันที่รับสินค้า',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'ชั่วโมงทำงาน',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Text(
                'การกระทำ',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
  TableRow _buildTableRow1(Item item) {
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
                    fontSize: 30.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Container(
                  width: 500,
                  child: Text(
                    '${snapshot.data[index].rr_no}',
                    //'STP22071050',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //เลขที่ใบรับสินค้า
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Container(
                  width: 500,
                  child: Text(
                    '${snapshot.data[index].doc_no}',
                    //'FC-12020',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w300,
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
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Container(
                  width: 500,
                  child: Text(
                    '${snapshot.data[index].partnumber}',
                    //'37230-35080',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //พาร์ทนัมเบอร์
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Container(
                  width: 500,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${snapshot.data[index].category}',
                    //'Arm Bushing(บูชปีกนกหน้า-ตัวล่าง)',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //กลุ่ม
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Container(
                  alignment: Alignment.centerRight,
                  width: 300,
                  child: Text(
                    '${snapshot.data[index].qty}',
                    //'200',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //จำนวน
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Text(
                '${snapshot.data[index].ts_name}',
                //'มาซินมา ZIN MAR THIN',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
            ),
          ),
        ),  //ผู้ส่งสินค้า
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Text(
                date.format(
                  DateTime.parse(snapshot.data[index].ts_create),
                ),
                //'15/08/2022',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
            ),
          ),
        ),  //วันที่รับสินค้า
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Container(
                  width: 180,
                  alignment: Alignment.center,
                  child: Text(
                    '${snapshot.data[index].hour}',
                    //'30.71',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),  //ชั่วโมงงาน
        TableCell(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 190,
                  height: 120.0,
                  alignment: Alignment.center,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Colors.black,
                      side: BorderSide(color: Colors.black, width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child: Icon(
                                  Icons.edit_sharp,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'รับสินค้า',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const buystock_detail_page(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 190,
                  height: 120.0,
                  alignment: Alignment.center,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Colors.red,
                      side: BorderSide(color: Colors.red, width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                child: Icon(
                                  Icons.cached_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'ยกเลิก',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {

                    },
                  ),
                ),
              ],
            ),
          ),

        ),
      ],
    );
  }

  //==============================================================


  String dropdownvalue = '20';

  var items = [
    '5',
    '10',
    '15',
    '20',
  ];

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    print('Width ==> ' + screenSize.width.toString());
    print('Height ==> ' + screenSize.height.toString());

    return Scaffold(
      backgroundColor: const Color(0xFFD5F6FF),
      body: SingleChildScrollView(
        child: Center(
          child: FutureBuilder(
            future: getAllbuystockABData,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
                print(snapshot.data.length);
                listBuystockABData = snapshot.data;
                print('BuystockAB');
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
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
                                  width: 10.0,
                                ),
                                Container(
                                  child: Text(
                                    'รับสินค้าจากจัดซื้อ',
                                    style: TextStyle(
                                        fontSize: 60.0,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Container(
                                  width: 250.0,
                                  height: 120.0,
                                  color: Colors.white,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.black45,
                                      side: BorderSide(color: Colors.black, width: 2),
                                    ),
                                    child: Text(
                                      'ทั้งหมด',
                                      style: TextStyle(
                                          fontSize: 60.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        PageTransition(
                                            duration: Duration(milliseconds: 400),
                                            child: buystock_page_all(),
                                            type: PageTransitionType.fade),
                                      );
                                    },
                                  ),
                                ),  //All
                                SizedBox(
                                  width: 15.0,
                                ),
                                Container(
                                  width: 470.0,
                                  height: 120.0,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.greenAccent,
                                      side: BorderSide(color: Color(0xff6EC100), width: 2),
                                    ),
                                    child: Text(
                                      'Engine Mounting',
                                      style: TextStyle(
                                          fontSize: 55.0,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff6EC100)),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        PageTransition(
                                            duration: Duration(milliseconds: 400),
                                            child: buystock_page_enm(),
                                            type: PageTransitionType.fade),
                                      );
                                    },
                                  ),
                                ),  //Engine
                                SizedBox(
                                  width: 15.0,
                                ),
                                Container(
                                  width: 430.0,
                                  height: 120.0,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.blueAccent,
                                      side: BorderSide(color: Color(0xff00A3C1), width: 2),
                                    ),
                                    child: Text(
                                      'Center Bearing',
                                      style: TextStyle(
                                          fontSize: 55.0,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff00A3C1)),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        PageTransition(
                                            duration: Duration(milliseconds: 400),
                                            child: buystock_page_cb(),
                                            type: PageTransitionType.fade),
                                      );
                                    },
                                  ),
                                ),  //Center
                                SizedBox(
                                  width: 15.0,
                                ),
                                Container(
                                  width: 690.0,
                                  height: 120.0,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.deepPurpleAccent,
                                      side: BorderSide(color: Color(0xff6A00C1), width: 2),
                                    ),
                                    child: Text(
                                      'Shock Absober Mounting',
                                      style: TextStyle(
                                          fontSize: 55.0,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff6A00C1)),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        PageTransition(
                                            duration: Duration(milliseconds: 400),
                                            child: buystock_page_sam(),
                                            type: PageTransitionType.fade),
                                      );
                                    },
                                  ),
                                ),  //Shock
                                SizedBox(
                                  width: 15.0,
                                ),
                                Container(
                                  width: 400.0,
                                  height: 120.0,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Color(0xffE39C00),
                                      foregroundColor: Colors.yellowAccent,
                                      side: BorderSide(color: Color(0xffE39C00), width: 2),
                                    ),
                                    child: Text(
                                      'Arm Bushing',
                                      style: TextStyle(
                                          fontSize: 55.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),  //Arm
                                SizedBox(
                                  width: 15.0,
                                ),
                                Container(
                                  width: 270.0,
                                  height: 120.0,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.redAccent,
                                      side: BorderSide(color: Color(0xffD30000), width: 2),
                                    ),
                                    child: Text(
                                      'อื่นๆ',
                                      style: TextStyle(
                                          fontSize: 55.0,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffD30000)),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        PageTransition(
                                            duration: Duration(milliseconds: 400),
                                            child: buystock_page_etc(),
                                            type: PageTransitionType.fade),
                                      );
                                    },
                                  ),
                                ),  //etc
                                SizedBox(
                                  width: 15.0,
                                ),
                                Container(
                                  width: 220.0,
                                  height: 130.0,
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
                                      Navigator.push(
                                        context,
                                        PageTransition(
                                            duration: Duration(milliseconds: 400),
                                            child: buystock_cutpipe_page(),
                                            type: PageTransitionType.fade),
                                      );
                                    },
                                  ),
                                ),  //Backbtn
                                SizedBox(
                                  width: 15.0,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50.0,
                            ),
                            Container(
                              width: 3310,
                              height: 130.0,
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Container(
                                    child: Text(
                                      'Show',
                                      style: TextStyle(
                                          fontSize: 50.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.only(top: 30,bottom: 10),
                                    child: Column(
                                      children: [
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(color: Colors.black87,width: 1),
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 40,right: 40,top: 10,bottom: 10),
                                            child: DropdownButton(
                                              alignment: Alignment.center,
                                              style: TextStyle(
                                                  fontSize: 40,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black
                                              ),
                                              value: dropdownvalue,
                                              icon: Icon(
                                                Icons.keyboard_arrow_down_rounded,
                                                size: 30,
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
                                  ),  //Dropdownbox
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  Container(
                                    child: Text(
                                      'entries',
                                      style: TextStyle(
                                          fontSize: 50.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 480.0,
                                  ),
                                  Container(
                                    width: 550.0,
                                    height: 90,
                                    child: Text(
                                      'ชั่วโมงงานทั้งหมด =',
                                      style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black87
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 280.0,
                                    height: 65,
                                    child: Text(
                                      '2,754.37',
                                      style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black87
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 250.0,
                                    height: 90,
                                    child: Text(
                                      'ชั่วโมง',
                                      style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black87
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 480.0,
                                  ),
                                  Container(
                                    width: 200,
                                    child: Text(
                                      'Search :',
                                      style: TextStyle(
                                          fontSize: 50.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10, left: 20.0),
                                    child: Container(
                                      width: 500.0,
                                      height: 80.0,
                                      child: TextField(
                                        style: TextStyle(
                                            fontSize: 40,
                                            color: Colors.black
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
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 3310,
                              child: Row(
                                children: [
                                  Container(
                                    width: 3310,
                                    color: Colors.white,
                                    child: Container(
                                      child: Table(
                                        border: TableBorder.all(
                                          color: Colors.black,
                                          width: 1,
                                        ),
                                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                        defaultColumnWidth: IntrinsicColumnWidth(),
                                        columnWidths: const {
                                          0: FractionColumnWidth(.03), //ลำดับ
                                          1: FractionColumnWidth(.09), //เลขที่ใบรับสินค้า
                                          2: FractionColumnWidth(.09), //ออเดอร์
                                          3: FractionColumnWidth(.10), //พาร์ทนัมเบอร์
                                          4: FractionColumnWidth(.15), //กลุ่ม
                                          5: FractionColumnWidth(.05), //จำนวน
                                          6: FractionColumnWidth(.11), //ผู้ส่งสินค้า
                                          7: FractionColumnWidth(.08), //วันที่รับสินค้า
                                          8: FractionColumnWidth(.06), //ชั่วโมงการทำงาน
                                          9: FractionColumnWidth(.12), //ชั่วโมงการทำงาน
                                        },
                                        children: _items.map((item) => _buildTableRow(item)).toList(),
                                      ),
                                    ),
                                  ),  //TableHead
                                ],
                              ),
                            ),  //TableHead
                            Container(
                              width: 3310,
                              child: Row(
                                children: [
                                  Container(
                                    width: 3310,
                                    color: Colors.white,
                                    child: Container(
                                      child: Table(
                                        border: TableBorder.all(
                                          color: Colors.black,
                                          width: 1,
                                        ),
                                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                        defaultColumnWidth: IntrinsicColumnWidth(),
                                        columnWidths: const {
                                          0: FractionColumnWidth(.03), //ลำดับ
                                          1: FractionColumnWidth(.09), //เลขที่ใบรับสินค้า
                                          2: FractionColumnWidth(.09), //ออเดอร์
                                          3: FractionColumnWidth(.10), //พาร์ทนัมเบอร์
                                          4: FractionColumnWidth(.15), //กลุ่ม
                                          5: FractionColumnWidth(.05), //จำนวน
                                          6: FractionColumnWidth(.11), //ผู้ส่งสินค้า
                                          7: FractionColumnWidth(.08), //วันที่รับสินค้า
                                          8: FractionColumnWidth(.06), //ชั่วโมงการทำงาน
                                          9: FractionColumnWidth(.12), //ชั่วโมงการทำงาน
                                        },
                                        children: _items.map((item) => _buildTableRow1(item)).toList(),
                                      ),
                                    ),
                                  ),  //TableDetail1
                                ],
                              ),
                            ),  //TableDetail1
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
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      child: Text(
                        'รับสินค้าจากจัดซื้อ',
                        style: TextStyle(
                            fontSize: 60.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      width: 250.0,
                      height: 120.0,
                      color: Colors.white,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black45,
                          side: BorderSide(color: Colors.black, width: 2),
                        ),
                        child: Text(
                          'ทั้งหมด',
                          style: TextStyle(
                              fontSize: 60.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                duration: Duration(milliseconds: 400),
                                child: buystock_page_all(),
                                type: PageTransitionType.fade),
                          );
                        },
                      ),
                    ),  //All
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      width: 470.0,
                      height: 120.0,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.greenAccent,
                          side: BorderSide(color: Color(0xff6EC100), width: 2),
                        ),
                        child: Text(
                          'Engine Mounting',
                          style: TextStyle(
                              fontSize: 55.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff6EC100)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                duration: Duration(milliseconds: 400),
                                child: buystock_page_enm(),
                                type: PageTransitionType.fade),
                          );
                        },
                      ),
                    ),  //Engine
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      width: 430.0,
                      height: 120.0,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.blueAccent,
                          side: BorderSide(color: Color(0xff00A3C1), width: 2),
                        ),
                        child: Text(
                          'Center Bearing',
                          style: TextStyle(
                              fontSize: 55.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff00A3C1)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                duration: Duration(milliseconds: 400),
                                child: buystock_page_cb(),
                                type: PageTransitionType.fade),
                          );
                        },
                      ),
                    ),  //Center
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      width: 690.0,
                      height: 120.0,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.deepPurpleAccent,
                          side: BorderSide(color: Color(0xff6A00C1), width: 2),
                        ),
                        child: Text(
                          'Shock Absober Mounting',
                          style: TextStyle(
                              fontSize: 55.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff6A00C1)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                duration: Duration(milliseconds: 400),
                                child: buystock_page_sam(),
                                type: PageTransitionType.fade),
                          );
                        },
                      ),
                    ),  //Shock
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      width: 400.0,
                      height: 120.0,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Color(0xffE39C00),
                          foregroundColor: Colors.yellowAccent,
                          side: BorderSide(color: Color(0xffE39C00), width: 2),
                        ),
                        child: Text(
                          'Arm Bushing',
                          style: TextStyle(
                              fontSize: 55.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),  //Arm
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      width: 270.0,
                      height: 120.0,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.redAccent,
                          side: BorderSide(color: Color(0xffD30000), width: 2),
                        ),
                        child: Text(
                          'อื่นๆ',
                          style: TextStyle(
                              fontSize: 55.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffD30000)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                duration: Duration(milliseconds: 400),
                                child: buystock_page_etc(),
                                type: PageTransitionType.fade),
                          );
                        },
                      ),
                    ),  //etc
                    SizedBox(
                      width: 15.0,
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
                              builder: (context) => const buystock_cutpipe_page(),
                            ),
                          );
                        },
                      ),
                    ),  //backbtn
                    SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  width: 3310,
                  height: 130.0,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        child: Text(
                          'Show',
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 30,bottom: 10),
                        child: Column(
                          children: [
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black87,width: 1),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 40,right: 40,top: 10,bottom: 10),
                                child: DropdownButton(
                                  alignment: Alignment.center,
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black
                                  ),
                                  value: dropdownvalue,
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 30,
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
                      ),  //Dropdownbox
                      SizedBox(
                        width: 30.0,
                      ),
                      Container(
                        child: Text(
                          'entries',
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 480.0,
                      ),
                      Container(
                        width: 550.0,
                        height: 90,
                        child: Text(
                          'ชั่วโมงงานทั้งหมด =',
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.w800,
                              color: Colors.black87
                          ),
                        ),
                      ),
                      Container(
                        width: 280.0,
                        height: 65,
                        child: Text(
                          '2,754.37',
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.w800,
                              color: Colors.black87
                          ),
                        ),
                      ),
                      Container(
                        width: 250.0,
                        height: 90,
                        child: Text(
                          'ชั่วโมง',
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.w800,
                              color: Colors.black87
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 480.0,
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          'Search :',
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 20.0),
                        child: Container(
                          width: 500.0,
                          height: 80.0,
                          child: TextField(
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.black
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
                      SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 3310,
                  child: Row(
                    children: [
                      Container(
                        width: 3310,
                        color: Colors.white,
                        child: Container(
                          child: Table(
                            border: TableBorder.all(
                              color: Colors.black,
                              width: 1,
                            ),
                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                            defaultColumnWidth: IntrinsicColumnWidth(),
                            columnWidths: const {
                              0: FractionColumnWidth(.03), //ลำดับ
                              1: FractionColumnWidth(.09), //เลขที่ใบรับสินค้า
                              2: FractionColumnWidth(.09), //ออเดอร์
                              3: FractionColumnWidth(.10), //พาร์ทนัมเบอร์
                              4: FractionColumnWidth(.15), //กลุ่ม
                              5: FractionColumnWidth(.05), //จำนวน
                              6: FractionColumnWidth(.11), //ผู้ส่งสินค้า
                              7: FractionColumnWidth(.08), //วันที่รับสินค้า
                              8: FractionColumnWidth(.06), //ชั่วโมงการทำงาน
                              9: FractionColumnWidth(.12), //ชั่วโมงการทำงาน
                            },
                            children: _items.map((item) => _buildTableRow(item)).toList(),
                          ),
                        ),
                      ),  //TableHead
                    ],
                  ),
                ),  //TableHead
                Container(
                  width: 3310,
                  child: Row(
                    children: [
                      Container(
                        width: 3310,
                        color: Colors.white,
                        child: Container(
                          child: Table(
                            border: TableBorder.all(
                              color: Colors.black,
                              width: 1,
                            ),
                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                            defaultColumnWidth: IntrinsicColumnWidth(),
                            columnWidths: const {
                              0: FractionColumnWidth(.03), //ลำดับ
                              1: FractionColumnWidth(.09), //เลขที่ใบรับสินค้า
                              2: FractionColumnWidth(.09), //ออเดอร์
                              3: FractionColumnWidth(.10), //พาร์ทนัมเบอร์
                              4: FractionColumnWidth(.15), //กลุ่ม
                              5: FractionColumnWidth(.05), //จำนวน
                              6: FractionColumnWidth(.11), //ผู้ส่งสินค้า
                              7: FractionColumnWidth(.08), //วันที่รับสินค้า
                              8: FractionColumnWidth(.06), //ชั่วโมงการทำงาน
                              9: FractionColumnWidth(.12), //ชั่วโมงการทำงาน
                            },
                            children: _items.map((item) => _buildTableRow1(item)).toList(),
                          ),
                        ),
                      ),  //TableDetail1
                    ],
                  ),
                ),  //TableDetail1
              ],
            ),
          )
 */
