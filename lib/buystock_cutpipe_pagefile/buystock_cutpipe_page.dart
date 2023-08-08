// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stock_product_app/buystock_cutpipe_pagefile/buystock_tabpage/buystock_page_all.dart';
import 'package:stock_product_app/buystock_cutpipe_pagefile/cutpipe_page.dart';
import 'package:stock_product_app/screen_main/main_page.dart';

class buystock_cutpipe_page extends StatefulWidget {
  const buystock_cutpipe_page({Key? key}) : super(key: key);

  @override
  State<buystock_cutpipe_page> createState() => _buystock_cutpipe_pageState();
}

class _buystock_cutpipe_pageState extends State<buystock_cutpipe_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD5F6FF),
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  Container(
                    width: 3080.0,
                  ),
                  Container(
                    width: 220.0,
                    height: 150.0,
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
                              child: main_page(),
                              type: PageTransitionType.fade),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
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
                              foregroundColor: Colors.white, backgroundColor: Color(0xff00C16E),
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
                                    child: buystock_page_all(),
                                    type: PageTransitionType.fade),
                              );
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'จัดซื้อ',
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
                        ), //buystock btn
                        SizedBox(
                          width: 100,
                        ),
                        Container(
                          width: 950.0,
                          height: 380.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(300),
                          ),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white, backgroundColor: Color(0xff2E00C6),
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
                                    child: cutpipe_page(),
                                    type: PageTransitionType.fade),
                              );
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'ตัดเเป๊บ',
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
                        ), //cutpipe btn
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

//2E00C6 ตัดเเป๊บ
//00C16E จัดซื้อ