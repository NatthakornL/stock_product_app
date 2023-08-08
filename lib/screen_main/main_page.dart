// ignore_for_file: camel_case_types, prefer_const_constructors,, sized_box_for_whitespace
// prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stock_product_app/buystock_cutpipe_pagefile/buystock_cutpipe_page.dart';
import 'package:stock_product_app/models/login_model/login_model.dart';
import 'package:stock_product_app/order_pagefile/ordering_page.dart';
import 'package:stock_product_app/screen_main/login_page.dart';
import 'package:stock_product_app/search_pagefile/searchstock_page.dart';
import 'package:stock_product_app/service/getstock_product_api.dart';
import 'package:stock_product_app/stock_adjust_pagefile/stock_adjust_page.dart';

import '../partnumber_pagefile/partnumber_tabpage/order_partnum_all.dart';

class main_page extends StatefulWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  Future<List<Getlogin>>? getAllMainPageData;
  List listMainPageData = [];

  getpsd() {
    setState(() {
      getAllMainPageData = GetloginAPI.getviewAllLogin();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD5F6FF),
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 90.0,
                  ),
                  Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0)),
                    child: const CircleAvatar(
                      backgroundColor: Colors.black12,
                      // child: ClipOval(
                      //   child: FadeInImage.assetNetwork(
                      //     image: snapshot.data[index].image_name,
                      //   ),
                      // ),
                      child: Icon(
                        Icons.person,
                        size: 150.0,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                  Container(
                    width: 1000,
                    child: const Text(
                      'ไพจิตร มีศรี',
                      style: TextStyle(
                          fontSize: 70.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87),
                    ),
                  ),
                  const SizedBox(
                    width: 1400.0,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xffD5F6FF)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              duration: Duration(milliseconds: 400),
                              child: login_page(),
                              type: PageTransitionType.fade),
                        );
                      },
                      child: Row(
                        children: const [
                          Icon(
                            Icons.logout_outlined,
                            size: 150.0,
                            color: Colors.black,
                          ),
                          Text(
                            "ออกจากระบบ",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 70,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      )), //buttonlogout
                  const SizedBox(
                    width: 50.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 150.0,
              ),
              const Center(
                child: Text(
                  'คลังวัตถุดิบ',
                  style: TextStyle(
                      fontSize: 150,
                      color: Color(0xff0046E6),
                      fontWeight: FontWeight.w700),
                ),
              ), //TextCenter
              const SizedBox(
                height: 150.0,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 950.0,
                      height: 380.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                      ),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xffEE8C00),
                          elevation: 30,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                duration: Duration(milliseconds: 400),
                                child: searchstock_page(),
                                type: PageTransitionType.fade),
                          );
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Search Stock',
                              style: TextStyle(
                                  fontSize: 80.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(
                              Icons.screen_search_desktop_outlined,
                              size: 350,
                              color: Colors.white70,
                            ),
                          ],
                        ),
                      ),
                    ), //SearchStock btn
                    Container(
                      width: 950.0,
                      height: 380.0,
                      margin: const EdgeInsets.only(left: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                      ),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xff00D2EE),
                          elevation: 30,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
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
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.inventory_2_outlined,
                              size: 350,
                              color: Colors.white70,
                            ),
                            Text(
                              'รับของเข้าคลัง',
                              style: TextStyle(
                                  fontSize: 80.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ), //PickitemStock btn
                    Container(
                      width: 950.0,
                      height: 380.0,
                      margin: const EdgeInsets.only(left: 100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                      ),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xff7500DD),
                          elevation: 30,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                duration: Duration(milliseconds: 400),
                                child: stock_adjust(),
                                type: PageTransitionType.fade),
                          );
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'ปรับยอดสต๊อก',
                              style: TextStyle(
                                  fontSize: 80.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(
                              Icons.library_add_outlined,
                              size: 350,
                              color: Colors.white70,
                            ),
                          ],
                        ),
                      ),
                    ), //StockAdjust btn
                  ],
                ),
              ),
              const SizedBox(
                height: 150.0,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 180.0,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 950.0,
                          height: 380.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(300),
                          ),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Color(0xffF50060),
                              elevation: 30,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    duration: Duration(milliseconds: 400),
                                    child: ordering_page(),
                                    type: PageTransitionType.fade),
                              );
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.shopping_cart_checkout,
                                  size: 300,
                                  color: Colors.white70,
                                ),
                                Text(
                                  'จ่ายเเบบออเดอร์',
                                  style: TextStyle(
                                      fontSize: 80.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ), //Ordering btn
                        Container(
                          width: 950.0,
                          height: 380.0,
                          margin: const EdgeInsets.only(left: 100),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(300),
                          ),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Color(0xffF5CA00),
                              elevation: 30,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    duration: Duration(milliseconds: 400),
                                    child: order_partnum_all(),
                                    type: PageTransitionType.fade),
                              );
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'จ่ายเเบบ\nพาร์ทนัมเบอร์',
                                  style: TextStyle(
                                      fontSize: 80.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Icon(
                                  Icons.format_list_numbered_outlined,
                                  size: 300,
                                  color: Colors.white70,
                                ),
                              ],
                            ),
                          ),
                        ), //PickitemStock btn
                      ],
                    ),
                  ),
                ],
              ),
            ],
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
                            children: [
                              const SizedBox(
                                width: 90.0,
                              ),
                              Container(
                                width: 150.0,
                                height: 150.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0)),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.black12,
                                  child: Icon(
                                    Icons.person,
                                    size: 150.0,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50.0,
                              ),
                              Container(
                                width: 1000,
                                child: const Text(
                                  'ไพจิตร มีศรี',
                                  style: TextStyle(
                                      fontSize: 70.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87),
                                ),
                              ),
                              const SizedBox(
                                width: 1400.0,
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(
                                        const Color(0xffD5F6FF)),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const login_page(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.logout_outlined,
                                        size: 150.0,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        "ออกจากระบบ",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 70,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ],
                                  )), //buttonlogout
                              const SizedBox(
                                width: 50.0,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 150.0,
                          ),
                          const Center(
                            child: Text(
                              'คลังวัตถุดิบ',
                              style: TextStyle(
                                  fontSize: 150,
                                  color: Color(0xff0046E6),
                                  fontWeight: FontWeight.w700),
                            ),
                          ), //TextCenter
                          const SizedBox(
                            height: 150.0,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 950.0,
                                  height: 380.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(300),
                                  ),
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xffEE8C00),
                                      elevation: 30,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const searchstock_page(),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Search Stock',
                                          style: TextStyle(
                                              fontSize: 80.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Icon(
                                          Icons.screen_search_desktop_outlined,
                                          size: 350,
                                          color: Colors.white70,
                                        ),
                                      ],
                                    ),
                                  ),
                                ), //SearchStock btn
                                Container(
                                  width: 950.0,
                                  height: 380.0,
                                  margin: const EdgeInsets.only(left: 100),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(300),
                                  ),
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xff00D2EE),
                                      elevation: 30,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const buystock_cutpipe_page(),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.inventory_2_outlined,
                                          size: 350,
                                          color: Colors.white70,
                                        ),
                                        Text(
                                          'รับของเข้าคลัง',
                                          style: TextStyle(
                                              fontSize: 80.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ), //PickitemStock btn
                                Container(
                                  width: 950.0,
                                  height: 380.0,
                                  margin: const EdgeInsets.only(left: 100),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(300),
                                  ),
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xff7500DD),
                                      elevation: 30,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const stock_adjust(),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'ปรับยอดสต๊อก',
                                          style: TextStyle(
                                              fontSize: 80.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Icon(
                                          Icons.library_add_outlined,
                                          size: 350,
                                          color: Colors.white70,
                                        ),
                                      ],
                                    ),
                                  ),
                                ), //StockAdjust btn
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 150.0,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 180.0,
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 950.0,
                                      height: 380.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(300),
                                      ),
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor: Color(0xffF50060),
                                          elevation: 30,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(30)),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => const ordering_page(),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.shopping_cart_checkout,
                                              size: 300,
                                              color: Colors.white70,
                                            ),
                                            Text(
                                              'จ่ายเเบบออเดอร์',
                                              style: TextStyle(
                                                  fontSize: 80.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ), //Ordering btn
                                    Container(
                                      width: 950.0,
                                      height: 380.0,
                                      margin: const EdgeInsets.only(left: 100),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(300),
                                      ),
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor: Color(0xffF5CA00),
                                          elevation: 30,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(30)),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => const order_pathnum_page(),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'จ่ายเเบบ\nพาร์ทนัมเบอร์',
                                              style: TextStyle(
                                                  fontSize: 80.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w800),
                                            ),

                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Icon(
                                              Icons.format_list_numbered_outlined,
                                              size: 300,
                                              color: Colors.white70,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ), //PickitemStock btn
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
 */

/*
FutureBuilder(
          future: getAllMainPageData,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
              print(snapshot.data.length);
              listMainPageData = snapshot.data;
              print('MainPage');
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Padding(padding: EdgeInsets.only(left: 0,right: 0,top: 0),
                    child: SafeArea(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50.0,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 90.0,
                              ),
                              Container(
                                width: 150.0,
                                height: 150.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0)),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.black12,
                                  child: Icon(
                                    Icons.person,
                                    size: 150.0,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50.0,
                              ),
                              Container(
                                width: 1000,
                                child: const Text(
                                  'ไพจิตร มีศรี',
                                  style: TextStyle(
                                      fontSize: 70.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87),
                                ),
                              ),
                              const SizedBox(
                                width: 1400.0,
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(
                                        const Color(0xffD5F6FF)),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => const login_page(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.logout_outlined,
                                        size: 150.0,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        "ออกจากระบบ",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 70,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ],
                                  )), //buttonlogout
                              const SizedBox(
                                width: 50.0,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 150.0,
                          ),
                          const Center(
                            child: Text(
                              'คลังวัตถุดิบ',
                              style: TextStyle(
                                  fontSize: 150,
                                  color: Color(0xff0046E6),
                                  fontWeight: FontWeight.w700),
                            ),
                          ), //TextCenter
                          const SizedBox(
                            height: 150.0,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 950.0,
                                  height: 380.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(300),
                                  ),
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xffEE8C00),
                                      elevation: 30,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const searchstock_page(),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Search Stock',
                                          style: TextStyle(
                                              fontSize: 80.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Icon(
                                          Icons.screen_search_desktop_outlined,
                                          size: 350,
                                          color: Colors.white70,
                                        ),
                                      ],
                                    ),
                                  ),
                                ), //SearchStock btn
                                Container(
                                  width: 950.0,
                                  height: 380.0,
                                  margin: const EdgeInsets.only(left: 100),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(300),
                                  ),
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xff00D2EE),
                                      elevation: 30,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const buystock_cutpipe_page(),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.inventory_2_outlined,
                                          size: 350,
                                          color: Colors.white70,
                                        ),
                                        Text(
                                          'รับของเข้าคลัง',
                                          style: TextStyle(
                                              fontSize: 80.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ), //PickitemStock btn
                                Container(
                                  width: 950.0,
                                  height: 380.0,
                                  margin: const EdgeInsets.only(left: 100),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(300),
                                  ),
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Color(0xff7500DD),
                                      elevation: 30,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const stock_adjust(),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'ปรับยอดสต๊อก',
                                          style: TextStyle(
                                              fontSize: 80.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Icon(
                                          Icons.library_add_outlined,
                                          size: 350,
                                          color: Colors.white70,
                                        ),
                                      ],
                                    ),
                                  ),
                                ), //StockAdjust btn
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 150.0,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 180.0,
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 950.0,
                                      height: 380.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(300),
                                      ),
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor: Color(0xffF50060),
                                          elevation: 30,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(30)),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => const ordering_page(),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.shopping_cart_checkout,
                                              size: 300,
                                              color: Colors.white70,
                                            ),
                                            Text(
                                              'จ่ายเเบบออเดอร์',
                                              style: TextStyle(
                                                  fontSize: 80.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            SizedBox(
                                              width: 20.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ), //Ordering btn
                                    Container(
                                      width: 950.0,
                                      height: 380.0,
                                      margin: const EdgeInsets.only(left: 100),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(300),
                                      ),
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          primary: Colors.white,
                                          backgroundColor: Color(0xffF5CA00),
                                          elevation: 30,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(30)),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => const order_pathnum_page(),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'จ่ายเเบบ\nพาร์ทนัมเบอร์',
                                              style: TextStyle(
                                                  fontSize: 80.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w800),
                                            ),

                                            SizedBox(
                                              width: 20.0,
                                            ),
                                            Icon(
                                              Icons.format_list_numbered_outlined,
                                              size: 300,
                                              color: Colors.white70,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ), //PickitemStock btn
                                  ],
                                ),
                              ),
                            ],
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
        )
 */
