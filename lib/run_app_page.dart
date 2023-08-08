// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_product_app/buystock_cutpipe_pagefile/buystock_detail_page.dart';
import 'package:stock_product_app/buystock_cutpipe_pagefile/cutpipe_detail_page.dart';
import 'package:stock_product_app/screen_main/login_page.dart';
import 'package:stock_product_app/screen_main/main_page.dart';
import 'package:stock_product_app/search_pagefile/searchstock_detail_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: main_page(),
    ),
    // MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: ChangeNotifierProvider(
    //     create: (context) => LoginProvider(),
    //     child: const main_page(),
    //   ),
    // ),
  );
}

// class Model extends ChangeNotifier {
//   void save() {
//     print('save');
//   }
// }