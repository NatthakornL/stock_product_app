// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stock_product_app/buystock_cutpipe_pagefile/buystock_cutpipe_page.dart';
import 'package:stock_product_app/buystock_cutpipe_pagefile/cutpipe_detail_page.dart';
import 'package:stock_product_app/models/buystock_cutpipe_model/cutpipe_model/cutpipe_model.dart';
import 'package:stock_product_app/service/getstock_product_api.dart';

class Item {
  Item({
    required this.id,
    required this.partnum,
    required this.group,
    required this.order,
    required this.datecut,
    required this.total,
    required this.packname,
    required this.senddate,
    required this.button,
  });

  int id;
  String partnum;
  String group;
  String order;
  String datecut;
  String total;
  String packname;
  String senddate;
  String button;
}

class cutpipe_page extends StatefulWidget {
  const cutpipe_page({Key? key}) : super(key: key);

  @override
  State<cutpipe_page> createState() => _cutpipe_pageState();
}

class _cutpipe_pageState extends State<cutpipe_page> {
  List<Item> _items = [];

  Future<List<Getallcutpipe>>? getAllCutpipeData;
  final date = new DateFormat('dd/MM/yyyy');
  List listCutpipeData = [];

  get index => context;
  getpsd() {
    setState(() {
      getAllCutpipeData = GetcutpipeAPI.getviewAllcutpipe();
    });
  }

  deleteItem() {
    if (listCutpipeData.length > 10) {
      setState(() {
        getAllCutpipeData?.then((value) {
          value.removeRange(0, 9);
        });
      });
    }else{
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => cutpipe_detail_page()),
      );
    }
  }

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
          partnum: 'partnum',
          group: 'group',
          order: 'order',
          datecut: 'datecut',
          total: 'total',
          packname: 'packname',
          senddate: 'senddate',
          button: 'button'
      );
    });
  }

  //=============================== Table =================================

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
                'กลุ่ม',
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
                'วันที่ตัดเสร็จ',
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
                'จำนวน',
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
                'ผู้ส่งสินค้า',
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
                'วันที่ส่ง',
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
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 70,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  width: 330,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${snapshot.data[index].partnumber}',
                    //'37230-35080',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: SizedBox(
            height: 100,
            child: Center(
              child: Text(
                '${snapshot.data[index].category}',
                //'Cabin Mounting\n(ยางรองเเท่นเก๋ง)',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w300,
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
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  width: 350,
                  child: Text(
                    '${snapshot.data[index].doc_no}',
                    //'PO/R 65-05-1',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
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
                  DateTime.parse(snapshot.data[index].date_pipe),
                ),
                //'15/08/2022',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w300,
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
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  alignment: Alignment.centerRight,
                  width: 300,
                  child: Text(
                    '${snapshot.data[index].qty_pipe}',
                    //'200',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
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
                '${snapshot.data[index].pipe_name}',
                //'มาซินมา ZIN MAR THIN',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w300,
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
                date.format(
                  DateTime.parse(snapshot.data[index].ts_pipe),
                ),
                //'${snapshot.data[index].ts_pipe}',
                //'15/08/2022 08:52',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        TableCell(
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 120.0,
                  alignment: Alignment.center,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.all(20),
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
                                  size: 50,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'รับสินค้า',
                                style: TextStyle(
                                    fontSize: 40,
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
                          builder: (context) => const cutpipe_detail_page(),
                        ),
                      );
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

  //=======================================================================

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
            future: getAllCutpipeData,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
                print(snapshot.data.length);
                listCutpipeData = snapshot.data;
                print('Cutpipe');
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
                                    'รับสินค้าจากตัดเเป๊บ',
                                    style: TextStyle(
                                        fontSize: 60.0,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  width: 2580.0,
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
                                ),
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
                                    width: 2010.0,
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
                              child: Container(
                                width: 50.0,
                                color: Colors.white,
                                child: Table(
                                  border: TableBorder.all(
                                      color: Colors.black,
                                      width: 2,
                                      style: BorderStyle.solid
                                  ),
                                  columnWidths: const {
                                    0: FractionColumnWidth(.03), //ลำดับ
                                    1: FractionColumnWidth(.09), //พาร์ทนัมเบอร์
                                    2: FractionColumnWidth(.11), //กลุ่ม
                                    3: FractionColumnWidth(.09), //ออเดอร์
                                    4: FractionColumnWidth(.09), //วันที่ตัดเสร็จ
                                    5: FractionColumnWidth(.06), //จำนวน
                                    6: FractionColumnWidth(.15),  //ผู้ส่งสินค้า
                                    7: FractionColumnWidth(.10),  //วันที่ส่ง
                                    8: FractionColumnWidth(.08),  //การกระทำ
                                  },
                                  children: _items.map((item) => _buildTableRow(item)).toList(),
                                ),
                              ),
                            ),  //TableHead
                            Container(
                              width: 3310,
                              child: Container(
                                width: 50.0,
                                color: Colors.white,
                                child: Table(
                                  border: TableBorder.all(
                                      color: Colors.black,
                                      width: 2,
                                      style: BorderStyle.solid
                                  ),
                                  columnWidths: const {
                                    0: FractionColumnWidth(.03), //ลำดับ
                                    1: FractionColumnWidth(.09), //พาร์ทนัมเบอร์
                                    2: FractionColumnWidth(.11), //กลุ่ม
                                    3: FractionColumnWidth(.09), //ออเดอร์
                                    4: FractionColumnWidth(.09), //วันที่ตัดเสร็จ
                                    5: FractionColumnWidth(.06), //จำนวน
                                    6: FractionColumnWidth(.15),  //ผู้ส่งสินค้า
                                    7: FractionColumnWidth(.10),  //วันที่ส่ง
                                    8: FractionColumnWidth(.08),  //การกระทำ
                                  },
                                  children: _items.map((item) => _buildTableRow1(item)).toList(),
                                ),
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
                        'รับสินค้าจากตัดเเป๊บ',
                        style: TextStyle(
                            fontSize: 60.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 2580.0,
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
                    ),
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
                        width: 2010.0,
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
                  child: Container(
                    width: 50.0,
                    color: Colors.white,
                    child: Table(
                      border: TableBorder.all(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid
                      ),
                      columnWidths: const {
                        0: FractionColumnWidth(.03), //ลำดับ
                        1: FractionColumnWidth(.09), //พาร์ทนัมเบอร์
                        2: FractionColumnWidth(.11), //กลุ่ม
                        3: FractionColumnWidth(.09), //ออเดอร์
                        4: FractionColumnWidth(.09), //วันที่ตัดเสร็จ
                        5: FractionColumnWidth(.06), //จำนวน
                        6: FractionColumnWidth(.15),  //ผู้ส่งสินค้า
                        7: FractionColumnWidth(.10),  //วันที่ส่ง
                        8: FractionColumnWidth(.08),  //การกระทำ
                      },
                      children: _items.map((item) => _buildTableRow(item)).toList(),
                    ),
                  ),
                ),  //TableHead
                Container(
                  width: 3310,
                  child: Container(
                    width: 50.0,
                    color: Colors.white,
                    child: Table(
                      border: TableBorder.all(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid
                      ),
                      columnWidths: const {
                        0: FractionColumnWidth(.03), //ลำดับ
                        1: FractionColumnWidth(.09), //พาร์ทนัมเบอร์
                        2: FractionColumnWidth(.11), //กลุ่ม
                        3: FractionColumnWidth(.09), //ออเดอร์
                        4: FractionColumnWidth(.09), //วันที่ตัดเสร็จ
                        5: FractionColumnWidth(.06), //จำนวน
                        6: FractionColumnWidth(.15),  //ผู้ส่งสินค้า
                        7: FractionColumnWidth(.10),  //วันที่ส่ง
                        8: FractionColumnWidth(.08),  //การกระทำ
                      },
                      children: _items.map((item) => _buildTableRow1(item)).toList(),
                    ),
                  ),
                ),  //TableDetail1
              ],
            ),
          )
 */
