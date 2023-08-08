// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stock_product_app/models/partnumber_model/partnumber_model/partnumber_model.dart';
import 'package:stock_product_app/partnumber_pagefile/partnum_detail_page.dart';
import 'package:stock_product_app/partnumber_pagefile/partnumber_tabpage/order_partnum_ab.dart';
import 'package:stock_product_app/partnumber_pagefile/partnumber_tabpage/order_partnum_cb.dart';
import 'package:stock_product_app/partnumber_pagefile/partnumber_tabpage/order_partnum_enm.dart';
import 'package:stock_product_app/partnumber_pagefile/partnumber_tabpage/order_partnum_etc.dart';
import 'package:stock_product_app/partnumber_pagefile/partnumber_tabpage/order_partnum_sam.dart';
import 'package:stock_product_app/screen_main/main_page.dart';
import 'package:stock_product_app/service/evn.dart';
import 'package:stock_product_app/service/getstock_product_api.dart';

class Item {
  Item({
    required this.id,
    required this.pathnum,
    required this.pic,
    required this.ordernum,
    required this.update,
    required this.packing,
    required this.deliverdate,
    required this.order,
    required this.button,
  });

  int id;
  String pathnum;
  String pic;
  String ordernum;
  String update;
  String packing;
  String deliverdate;
  String order;
  String button;
}

class order_partnum_all extends StatefulWidget {
  const order_partnum_all({Key? key}) : super(key: key);

  @override
  State<order_partnum_all> createState() => _order_partnum_allState();
}

class _order_partnum_allState extends State<order_partnum_all> {
  Future<List<GetallpartnumAll>>? getAllpartnumAllData;
  final date = new DateFormat('dd/MM/yyyy');
  List listPartnumAllData = [];

  get index => context;
  getpsd() {
    setState(() {
      getAllpartnumAllData = GetpartnumAPI.getviewAllpartnumAll();
    });
  }

  deleteItem() {
    if (listPartnumAllData.length > 10) {
      setState(() {
        getAllpartnumAllData?.then((value) {
          value.removeRange(0, 9);
        });
      });
    }
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
          pathnum: 'พาร์ทนัมเบอร์',
          pic: 'รูป',
          ordernum: 'เลขที่ออเดอร์',
          update: 'วันที่อัป',
          packing: 'กลุ่มสินค้า',
          deliverdate: 'ลงเรือ(โรงงาน)*',
          order: 'ออเดอร์',
          button: 'การกระทำ');
    });
  }

  //======================== Table =================================

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
                    fontSize: 50.0,
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
                    fontSize: 50.0,
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
                'รูป',
                style: TextStyle(
                    fontSize: 50.0,
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
                'เลขที่ออเดอร์',
                style: TextStyle(
                    fontSize: 50.0,
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
                'วันที่อัป',
                style: TextStyle(
                    fontSize: 50.0,
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
                'กลุ่มสินค้า',
                style: TextStyle(
                    fontSize: 50.0,
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
                'ลงเรือ(โรงงาน)*',
                style: TextStyle(
                    fontSize: 50.0,
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
                    fontSize: 50.0,
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
                    fontSize: 50.0,
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
            height: 70,
            child: Center(
              child: Container(
                width: 300,
                alignment: Alignment.centerLeft,
                child: Text(
                  '${snapshot.data[index].pn}',
                  //'51928-SAA-015',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
              ),
            ),
          ),
        ), //พาร์ทนัมเบอร์
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    child: FadeInImage(
                      image: NetworkImage(
                        '${Envpic.SERVER_URL}_pic01.jpg',
                      ),
                      placeholder: AssetImage(
                        "assets/images/pic01.jpg",
                      ),
                      imageErrorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/images/pic01.jpg',
                        );
                      },
                    ),
                    /*
                    Image.asset(
                      'assets/images/pic01.jpg',
                      height: 150,
                      width: 100,
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                    ),
                    */
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightGreen,
                    ),
                    child: Text(
                      'A',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ), //รูป
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      '${snapshot.data[index].doc_no}',
                      //'KYB-P2200585',
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    width: 100,
                    height: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    child: Text(
                      'ยืม',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
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
                date.format(
                  DateTime.parse(
                    '${snapshot.data[index].ts_create}',
                  ),
                ),
                //'22/02/2022',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
            ),
          ),
        ), //วันที่อัป
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: 750,
                  height: 200,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${snapshot.data[index].description}',
                    //'Shock Absober Mounting (เบ้าโช๊ค)',
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
            height: 70,
            child: Center(
              child: Text(
                date.format(
                  DateTime.parse(
                    '${snapshot.data[index].deliver_date}',
                  ),
                ),
                //'15/08/2022',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
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
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: 200,
                  height: 200,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '${snapshot.data[index].qty}',
                    //'100',
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
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: 350,
              height: 100.0,
              alignment: Alignment.center,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding:
                      EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
                  backgroundColor: Colors.amber,
                  side: BorderSide(color: Colors.amber, width: 1),
                ),
                child: Text(
                  'จ่ายสินค้า',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const partnum_detail_page(),
                    ),
                  );
                },
              ),
            ),
          ),
        ), //ปุ่ม
      ],
    );
  }

  TableRow _buildTableRow2(Item item) {
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
            height: 70,
            child: Center(
              child: Container(
                width: 300,
                alignment: Alignment.centerLeft,
                child: Text(
                  '${snapshot.data[index].pn}',
                  //'51928-SAA-015',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
              ),
            ),
          ),
        ), //พาร์ทนัมเบอร์
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    child: Image.asset(
                      'assets/images/pic01.jpg',
                      height: 150,
                      width: 100,
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightGreen,
                    ),
                    child: Text(
                      'A',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      '${snapshot.data[index].doc_no}',
                      //'KYB-P2200585',
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    width: 110,
                    height: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    child: Text(
                      'ออเดอร์',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
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
                date.format(
                  DateTime.parse(
                    '${snapshot.data[index].ts_create}',
                  ),
                ),
                //'22/02/2022',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
            ),
          ),
        ), //วันที่อัป
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 120,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: 750,
                  height: 200,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${snapshot.data[index].description}',
                    //'Shock Absober Mounting (เบ้าโช๊ค)',
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
            height: 70,
            child: Center(
              child: Text(
                date.format(
                  DateTime.parse(
                    '${snapshot.data[index].deliver_date}',
                  ),
                ),
                //'15/08/2022',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
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
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: 200,
                  height: 200,
                  alignment: Alignment.centerRight,
                  child: Text(
                    '${snapshot.data[index].qty}',
                    //'100',
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
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: 350,
              height: 100.0,
              alignment: Alignment.center,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding:
                      EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
                  backgroundColor: Colors.amber,
                  side: BorderSide(color: Colors.amber, width: 1),
                ),
                child: Text(
                  'จ่ายสินค้า',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const partnum_detail_page(),
                    ),
                  );
                },
              ),
            ),
          ),
        ), //ปุ่ม
      ],
    );
  }

  //================================================================

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
            future: getAllpartnumAllData,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasData) {
                print(snapshot.data.length);
                listPartnumAllData = snapshot.data;
                print('PartnumAll');
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 0, right: 0, top: 0),
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
                                  width: 20.0,
                                ),
                                Container(
                                  width: 300,
                                  height: 120.0,
                                  color: Colors.black,
                                  child: OutlinedButton(
                                    child: Text(
                                      'ทั้งหมด',
                                      style: TextStyle(
                                          fontSize: 60.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                    onPressed: () {},
                                  ),
                                ), //All
                                SizedBox(
                                  width: 25.0,
                                ),
                                Container(
                                  width: 570,
                                  height: 120.0,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.greenAccent,
                                      side: BorderSide(
                                          color: Color(0xff6EC100), width: 2),
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
                                            duration:
                                                Duration(milliseconds: 400),
                                            child: order_partnum_enm(),
                                            type: PageTransitionType.fade),
                                      );
                                    },
                                  ),
                                ), //Engine
                                SizedBox(
                                  width: 25.0,
                                ),
                                Container(
                                  width: 500.0,
                                  height: 120.0,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.blueAccent,
                                      side: BorderSide(
                                          color: Color(0xff00A3C1), width: 2),
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
                                            duration:
                                                Duration(milliseconds: 400),
                                            child: order_partnum_cb(),
                                            type: PageTransitionType.fade),
                                      );
                                    },
                                  ),
                                ), //Center
                                SizedBox(
                                  width: 25.0,
                                ),
                                Container(
                                  width: 800,
                                  height: 120.0,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.deepPurpleAccent,
                                      side: BorderSide(
                                          color: Color(0xff6A00C1), width: 2),
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
                                            duration:
                                                Duration(milliseconds: 400),
                                            child: order_partnum_sam(),
                                            type: PageTransitionType.fade),
                                      );
                                    },
                                  ),
                                ), //Shock
                                SizedBox(
                                  width: 25.0,
                                ),
                                Container(
                                  width: 480,
                                  height: 120.0,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.yellowAccent,
                                      side: BorderSide(
                                          color: Color(0xffE39C00), width: 2),
                                    ),
                                    child: Text(
                                      'Arm Bushing',
                                      style: TextStyle(
                                          fontSize: 55.0,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffE39C00)),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        PageTransition(
                                            duration:
                                                Duration(milliseconds: 400),
                                            child: order_partnum_ab(),
                                            type: PageTransitionType.fade),
                                      );
                                    },
                                  ),
                                ), //Arm
                                SizedBox(
                                  width: 25.0,
                                ),
                                Container(
                                  width: 300,
                                  height: 120.0,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.redAccent,
                                      side: BorderSide(
                                          color: Color(0xffD30000), width: 2),
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
                                            duration:
                                                Duration(milliseconds: 400),
                                            child: order_partnum_etc(),
                                            type: PageTransitionType.fade),
                                      );
                                    },
                                  ),
                                ), //etc
                                SizedBox(
                                  width: 25.0,
                                ),
                                Container(
                                  width: 220.0,
                                  height: 130.0,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: BorderSide(
                                          color: Colors.black, width: 2),
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
                                            duration:
                                                Duration(milliseconds: 400),
                                            child: main_page(),
                                            type: PageTransitionType.fade),
                                      );
                                    },
                                  ),
                                ), //Backbtn
                                SizedBox(
                                  width: 15.0,
                                ),
                              ],
                            ), //Rowbtn
                            SizedBox(
                              height: 60.0,
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
                                                  fontSize: 40,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.black),
                                              value: dropdownvalue,
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
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
                                    width: 2030.0,
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
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20, left: 40.0),
                                    child: Container(
                                      width: 500.0,
                                      height: 80.0,
                                      color: Colors.white,
                                      child: TextField(
                                        style: TextStyle(
                                            fontSize: 40, color: Colors.black),
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
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                ],
                              ),
                            ), //Tab show & search
                            SizedBox(
                              height: 30.0,
                            ),
                            Container(
                              width: 3310,
                              color: Colors.white,
                              child: Container(
                                child: Table(
                                  border: TableBorder.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  defaultVerticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  defaultColumnWidth: IntrinsicColumnWidth(),
                                  columnWidths: const {
                                    0: FractionColumnWidth(.05), //ลำดับ
                                    1: FractionColumnWidth(.10), //พาร์ทนัมเบอร์
                                    2: FractionColumnWidth(.08), //รูป
                                    3: FractionColumnWidth(.15), //เลขที่ออเดอร์
                                    4: FractionColumnWidth(.07), //วันที่อัป
                                    5: FractionColumnWidth(.25), //กลุ่มสินค้า
                                    6: FractionColumnWidth(
                                        .13), //ลงเรือ(โรงงาน)*
                                    7: FractionColumnWidth(.06), //ออเดอร์
                                    8: FractionColumnWidth(.08), //การกระทำ
                                  },
                                  children: _items
                                      .map((item) => _buildTableRow(item))
                                      .toList(),
                                ),
                              ),
                            ), //TableHead
                            Container(
                              width: 3310,
                              color: Colors.white,
                              child: Container(
                                child: Table(
                                  border: TableBorder.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  defaultVerticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  defaultColumnWidth: IntrinsicColumnWidth(),
                                  columnWidths: const {
                                    0: FractionColumnWidth(.05), //ลำดับ
                                    1: FractionColumnWidth(.10), //พาร์ทนัมเบอร์
                                    2: FractionColumnWidth(.08), //รูป
                                    3: FractionColumnWidth(.15), //เลขที่ออเดอร์
                                    4: FractionColumnWidth(.07), //วันที่อัป
                                    5: FractionColumnWidth(.25), //กลุ่มสินค้า
                                    6: FractionColumnWidth(
                                        .13), //ลงเรือ(โรงงาน)*
                                    7: FractionColumnWidth(.06), //ออเดอร์
                                    8: FractionColumnWidth(.08), //การกระทำ
                                  },
                                  children: _items
                                      .map((item) => _buildTableRow1(item))
                                      .toList(),
                                ),
                              ),
                            ), //TableDetail1
                            Container(
                              width: 3310,
                              color: Colors.white,
                              child: Container(
                                child: Table(
                                  border: TableBorder.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  defaultVerticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  defaultColumnWidth: IntrinsicColumnWidth(),
                                  columnWidths: const {
                                    0: FractionColumnWidth(.05), //ลำดับ
                                    1: FractionColumnWidth(.10), //พาร์ทนัมเบอร์
                                    2: FractionColumnWidth(.08), //รูป
                                    3: FractionColumnWidth(.15), //เลขที่ออเดอร์
                                    4: FractionColumnWidth(.07), //วันที่อัป
                                    5: FractionColumnWidth(.25), //กลุ่มสินค้า
                                    6: FractionColumnWidth(
                                        .13), //ลงเรือ(โรงงาน)*
                                    7: FractionColumnWidth(.06), //ออเดอร์
                                    8: FractionColumnWidth(.08), //การกระทำ
                                  },
                                  children: _items
                                      .map((item) => _buildTableRow2(item))
                                      .toList(),
                                ),
                              ),
                            ), //TableDetail2
                            SizedBox(
                              height: 10.0,
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
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      width: 300,
                      height: 120.0,
                      color: Colors.black,
                      child: OutlinedButton(
                        child: Text(
                          'ทั้งหมด',
                          style: TextStyle(
                              fontSize: 60.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),  //All
                    SizedBox(
                      width: 25.0,
                    ),
                    Container(
                      width: 570,
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
                                child: order_partnum_enm(),
                                type: PageTransitionType.fade),
                          );
                        },
                      ),
                    ),  //Engine
                    SizedBox(
                      width: 25.0,
                    ),
                    Container(
                      width: 500.0,
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
                                child: order_partnum_cb(),
                                type: PageTransitionType.fade),
                          );
                        },
                      ),
                    ),  //Center
                    SizedBox(
                      width: 25.0,
                    ),
                    Container(
                      width: 800,
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
                                child: order_partnum_sam(),
                                type: PageTransitionType.fade),
                          );
                        },
                      ),
                    ),  //Shock
                    SizedBox(
                      width: 25.0,
                    ),
                    Container(
                      width: 480,
                      height: 120.0,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.yellowAccent,
                          side: BorderSide(color: Color(0xffE39C00), width: 2),
                        ),
                        child: Text(
                          'Arm Bushing',
                          style: TextStyle(
                              fontSize: 55.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffE39C00)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                duration: Duration(milliseconds: 400),
                                child: order_partnum_ab(),
                                type: PageTransitionType.fade),
                          );
                        },
                      ),
                    ),  //Arm
                    SizedBox(
                      width: 25.0,
                    ),
                    Container(
                      width: 300,
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
                                child: order_partnum_etc(),
                                type: PageTransitionType.fade),
                          );
                        },
                      ),
                    ),  //etc
                    SizedBox(
                      width: 25.0,
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
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => main_page(),
                            ),
                          );
                        },
                      ),
                    ),  //Backbtn
                    SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),  //Rowbtn
                SizedBox(
                  height: 60.0,
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
                        width: 2030.0,
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
                        padding: const EdgeInsets.only(right: 20, left: 40.0),
                        child: Container(
                          width: 500.0,
                          height: 80.0,
                          color: Colors.white,
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
                        width: 5.0,
                      ),
                    ],
                  ),
                ),  //Tab show & search
                SizedBox(
                  height: 30.0,
                ),
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
                        0: FractionColumnWidth(.05), //ลำดับ
                        1: FractionColumnWidth(.10), //พาร์ทนัมเบอร์
                        2: FractionColumnWidth(.08), //รูป
                        3: FractionColumnWidth(.15), //เลขที่ออเดอร์
                        4: FractionColumnWidth(.07), //วันที่อัป
                        5: FractionColumnWidth(.25), //กลุ่มสินค้า
                        6: FractionColumnWidth(.13), //ลงเรือ(โรงงาน)*
                        7: FractionColumnWidth(.06), //ออเดอร์
                        8: FractionColumnWidth(.08), //การกระทำ
                      },
                      children: _items.map((item) => _buildTableRow(item)).toList(),
                    ),
                  ),
                ),  //TableHead
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
                        0: FractionColumnWidth(.05), //ลำดับ
                        1: FractionColumnWidth(.10), //พาร์ทนัมเบอร์
                        2: FractionColumnWidth(.08), //รูป
                        3: FractionColumnWidth(.15), //เลขที่ออเดอร์
                        4: FractionColumnWidth(.07), //วันที่อัป
                        5: FractionColumnWidth(.25), //กลุ่มสินค้า
                        6: FractionColumnWidth(.13), //ลงเรือ(โรงงาน)*
                        7: FractionColumnWidth(.06), //ออเดอร์
                        8: FractionColumnWidth(.08), //การกระทำ
                      },
                      children: _items.map((item) => _buildTableRow1(item)).toList(),
                    ),
                  ),
                ),  //TableDetail1
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
                        0: FractionColumnWidth(.05), //ลำดับ
                        1: FractionColumnWidth(.10), //พาร์ทนัมเบอร์
                        2: FractionColumnWidth(.08), //รูป
                        3: FractionColumnWidth(.15), //เลขที่ออเดอร์
                        4: FractionColumnWidth(.07), //วันที่อัป
                        5: FractionColumnWidth(.25), //กลุ่มสินค้า
                        6: FractionColumnWidth(.13), //ลงเรือ(โรงงาน)*
                        7: FractionColumnWidth(.06), //ออเดอร์
                        8: FractionColumnWidth(.08), //การกระทำ
                      },
                      children: _items.map((item) => _buildTableRow2(item)).toList(),
                    ),
                  ),
                ),  //TableDetail2
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          )
 */


