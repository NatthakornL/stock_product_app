// ignore_for_file: camel_case_types, prefer_const_constructors,
// prefer_typing_uninitialized_variables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stock_product_app/models/ordering_model/ordering_model.dart';
import 'package:stock_product_app/order_pagefile/orderdetail_page.dart';
import 'package:stock_product_app/screen_main/main_page.dart';
import 'package:stock_product_app/service/getstock_product_api.dart';

class Item {
  Item({
    required this.id,
    this.docno,
    this.customername,
    this.deliverdate,
    this.button,
  });

  int id;
  String? docno;
  String? customername;
  String? deliverdate;
  String? button;
}

class ordering_page extends StatefulWidget {
  const ordering_page({Key? key}) : super(key: key);

  @override
  State<ordering_page> createState() => _ordering_pageState();
}

class _ordering_pageState extends State<ordering_page> {
  Future<List<Getallordering>>? getAllOrderingData;
  List listOrderingData = [];

  get index => int;
  getpsd() {
    setState(() {
      getAllOrderingData = GetorderingAPI.getviewAllOrdering();
    });
  }

/*
  deleteItem() {
    if (listOrderingData.length > 10) {
      setState(() {
        getAllOrderingData?.then((value) {
          value.removeRange(0, 9);
        });
      });
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => orderdetail_page(),
          ));
    }
  }
*/

  List<Item> _items = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getpsd();
    setState(() {
      _items = _generateItems();
    });
  }

  List<Item> _generateItems() {
    return List.generate(1, (int index) {
      return Item(
        id: index,
        docno: 'doc_no',
        customername: 'customer_name',
        deliverdate: 'deliver_date',
        button: 'button',
      );
    });
  }

  //======================= Table Head ==================================

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
                'เลขที่',
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
                'ลูกค้า',
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
                'ลงเรือ*',
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

  //======================= Table Detail ================================

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
                "${index + 1}",
                style: TextStyle(
                    fontSize: 50.0,
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
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: 850,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${snapshot.data[index].doc_no}',
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
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: 900,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${snapshot.data[index].customer_name}',
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
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: 300,
                  child: Text(
                    '${snapshot.data[index].deliver_date}',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),
        TableCell(
          child: Container(
            width: 300.0,
            height: 140.0,
            alignment: Alignment.center,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding:
                    EdgeInsets.only(left: 80, right: 80, top: 20, bottom: 20),
                backgroundColor: Color(0xffE70000),
                side: BorderSide(color: Colors.black, width: 1),
              ),
              child: Text(
                'จ่ายสินค้า',
                style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const orderdetail_page(),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  //=====================================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD5F6FF),
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: getAllOrderingData,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              print(snapshot.data.length);
              listOrderingData = snapshot.data;
              print('Ordering');
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
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
                                width: 10.0,
                              ),
                              Container(
                                child: Text(
                                  'ออเดอร์ที่กำลังดำเนินการ',
                                  style: TextStyle(
                                      fontSize: 60.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                width: 2450.0,
                              ),
                              Container(
                                width: 200.0,
                                height: 120.0,
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
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const main_page(),
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
                                  0: FractionColumnWidth(.08), //ลำดับ
                                  1: FractionColumnWidth(.26), //เลขที่
                                  2: FractionColumnWidth(.28), //ลูกค้า
                                  3: FractionColumnWidth(.14), //ลงเรือ
                                  4: FractionColumnWidth(.13), //การกระทำ
                                },
                                children: _items
                                    .map((item) => _buildTableRow(item))
                                    .toList(),
                              ),
                            ),
                          ), //TableHead
                          Container(
                            width: 3310,
                            child: Table(
                              border: TableBorder.all(
                                color: Colors.black,
                                width: 1,
                              ),
                              defaultVerticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              defaultColumnWidth: IntrinsicColumnWidth(),
                              columnWidths: const {
                                0: FractionColumnWidth(.08), //ลำดับ
                                1: FractionColumnWidth(.26), //เลขที่
                                2: FractionColumnWidth(.28), //ลูกค้า
                                3: FractionColumnWidth(.14), //ลงเรือ
                                4: FractionColumnWidth(.13), //การกระทำ
                              },
                              children: _items
                                  .map((item) => _buildTableRow1(item))
                                  .toList(),
                            ),
                          ), //TableDetail1
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
    );
  }
}
