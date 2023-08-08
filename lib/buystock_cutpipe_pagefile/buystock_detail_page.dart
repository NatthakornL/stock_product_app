// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stock_product_app/buystock_cutpipe_pagefile/buystock_tabpage/buystock_page_all.dart';

class buystock_detail_page extends StatefulWidget {
  const buystock_detail_page({Key? key}) : super(key: key);

  @override
  State<buystock_detail_page> createState() => _buystock_detail_pageState();
}

class _buystock_detail_pageState extends State<buystock_detail_page> {
  
  String dropdownvalue = 'list 1';
  
  var items = [
    'list 1',
    'list 2',
    'list 3',
    'list 4',
    'list 5',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD5F6FF),
      body: SingleChildScrollView(
        child: Center(
          child: SafeArea(
            child: Container(
              width: 3350,
              height: 1800,
              decoration: BoxDecoration(
                border: Border.fromBorderSide(
                  BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                borderRadius: BorderRadius.circular(30),
                color: Colors.white
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 3100,
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
                                builder: (context) => const buystock_page_all(),
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
                    width: 3350,
                    height: 400,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: 1000,
                          height: 450,
                          decoration: BoxDecoration(
                            border: Border.fromBorderSide(
                              BorderSide(
                                width: 1,
                                color: Colors.black,
                              ),
                            ),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white
                          ),
                          child: Image.asset(
                            'assets/images/pic01.jpg',
                            fit: BoxFit.contain,
                          ),
                        ), //pic
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 2290,
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
                                          fontSize: 49,
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
                  Container(
                    width: 3310,
                    height: 1245,
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          width: 800,
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
                                      '1. \t เสื้อบน',
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
                                      '2. \t เสื้อล่าง',
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
                        SizedBox(
                          width: 190,
                        ),
                        Container(
                          width: 2280,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.fromBorderSide(
                              BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 70,top: 40,right: 70),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        'เลขที่ใบรับสินค้า',
                                        style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: 600,
                                      height: 120,
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                        border: Border.fromBorderSide(
                                          BorderSide(
                                            color: Colors.black,
                                            width: 2
                                          ),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.grey[100]
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 30,right: 30),
                                        child: Text(
                                          'RR6509072',
                                          style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      ),
                                    SizedBox(
                                      width: 140,
                                    ),
                                    Container(
                                      child: Text(
                                        'จำนวน(ด้านนอก)',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: 600,
                                      height: 120,
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          border: Border.fromBorderSide(
                                            BorderSide(
                                                color: Colors.black,
                                                width: 2
                                            ),
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.grey[100]
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 30,right: 30),
                                        child: Text(
                                          'RR6509072',
                                          style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Divider(
                                color: Colors.black45,
                                height: 2,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 70,top: 40,right: 70),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        'คลังสินค้า',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '*',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w700,
                                          color: Colors.red
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 140,
                                    ),
                                    Container(
                                      width: 600,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          border: Border.fromBorderSide(
                                            BorderSide(
                                                color: Colors.black,
                                                width: 2
                                            ),
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 40,right: 30,top: 10,bottom: 10),
                                        child: DropdownButton(
                                          isExpanded: true,
                                          alignment: Alignment.center,
                                          style: TextStyle(
                                              fontSize: 50,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black
                                          ),
                                          value: dropdownvalue,
                                          icon: Icon(
                                            Icons.keyboard_arrow_down,
                                            size: 100,
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
                                    SizedBox(
                                      width: 150,
                                    ),
                                    Container(
                                      child: Text(
                                        'รับสินค้า',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '*',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.red
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 185,
                                    ),
                                    Container(
                                      width: 600,
                                      height: 120,
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          border: Border.fromBorderSide(
                                            BorderSide(
                                                color: Colors.black,
                                                width: 2
                                            ),
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20,right: 20),
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(
                                            fontSize: 50
                                          ),
                                          decoration: InputDecoration(
                                            hintStyle: TextStyle(
                                              fontSize: 50.0,
                                            ),
                                            labelStyle: TextStyle(
                                              fontSize: 50.0,
                                            ),
                                            hintText: 'ระบุจำนวน',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Divider(
                                color: Colors.black54,
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 70,top: 50,right: 70),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        'พื้นที่จัดเก็บ',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 140,
                                    ),
                                    Container(
                                      width: 600,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          border: Border.fromBorderSide(
                                            BorderSide(
                                                color: Colors.black,
                                                width: 2
                                            ),
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 40,right: 30,top: 10,bottom: 10),
                                        child: DropdownButton(
                                          isExpanded: true,
                                          alignment: Alignment.center,
                                          style: TextStyle(
                                              fontSize: 50,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black
                                          ),
                                          value: dropdownvalue,
                                          icon: Icon(
                                            Icons.keyboard_arrow_down,
                                            size: 100,
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
                                    SizedBox(
                                      width: 150,
                                    ),
                                    Container(
                                      child: Text(
                                        'เเถวจัดเก็บ',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 140,
                                    ),
                                    Container(
                                      width: 600,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          border: Border.fromBorderSide(
                                            BorderSide(
                                                color: Colors.black,
                                                width: 2
                                            ),
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 40,right: 30,top: 10,bottom: 10),
                                        child: DropdownButton(
                                          isExpanded: true,
                                          alignment: Alignment.center,
                                          style: TextStyle(
                                              fontSize: 50,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black
                                          ),
                                          value: dropdownvalue,
                                          icon: Icon(
                                            Icons.keyboard_arrow_down,
                                            size: 100,
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
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 70,top: 30,right: 70),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        'ล็อกที่จัดเก็บ',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 120,
                                    ),
                                    Container(
                                      width: 600,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          border: Border.fromBorderSide(
                                            BorderSide(
                                                color: Colors.black,
                                                width: 2
                                            ),
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 40,right: 30,top: 10,bottom: 10),
                                        child: DropdownButton(
                                          isExpanded: true,
                                          alignment: Alignment.center,
                                          style: TextStyle(
                                              fontSize: 50,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black
                                          ),
                                          value: dropdownvalue,
                                          icon: Icon(
                                            Icons.keyboard_arrow_down,
                                            size: 100,
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
                                    SizedBox(
                                      width: 150,
                                    ),
                                    Container(
                                      child: Text(
                                        'ชั้นวาง',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 230,
                                    ),
                                    Container(
                                      width: 600,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          border: Border.fromBorderSide(
                                            BorderSide(
                                                color: Colors.black,
                                                width: 2
                                            ),
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 40,right: 30,top: 10,bottom: 10),
                                        child: DropdownButton(
                                          isExpanded: true,
                                          alignment: Alignment.center,
                                          style: TextStyle(
                                              fontSize: 50,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black
                                          ),
                                          value: dropdownvalue,
                                          icon: Icon(
                                            Icons.keyboard_arrow_down,
                                            size: 100,
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
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 70,top: 40,right: 70),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        'หมายเหตุ',
                                        style: TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 190,
                                    ),
                                    Container(
                                      width: 1730,
                                      height: 200,
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          border: Border.fromBorderSide(
                                            BorderSide(
                                                color: Colors.black,
                                                width: 2
                                            ),
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20,right: 20),
                                        child: TextField(
                                          style: TextStyle(
                                            fontSize: 50
                                          ),
                                          decoration: InputDecoration(
                                            hintStyle: TextStyle(
                                              fontSize: 50.0,
                                            ),
                                            labelStyle: TextStyle(
                                              fontSize: 50.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: 2120,
                                height: 200,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 350.0,
                                          height: 150.0,
                                          child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              backgroundColor: Color(0xff0C0074),
                                              side: BorderSide(color: Colors.black, width: 2),
                                              shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                              ),
                                            ),
                                            child: Text(
                                              'บันทึก',
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
