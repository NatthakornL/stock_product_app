// ignore_for_file: camel_case_types, prefer_const_constructors,, unused_import, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import 'package:stock_product_app/src/controllers/user_controller.dart';
import 'package:stock_product_app/utils/alert_dialog.dart';
import 'package:stock_product_app/utils/button_alert.dart';

import 'main_page.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() {
    return _login_pageState();
  }
}

class _login_pageState extends State<login_page> {
  // กำหนดตัวแปรรับค่า
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  // กำหนดสถานะการแสดงแบบรหัสผ่าน
  bool _isHidden = true;

  var userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD5F6FF),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 250.0,
              ),
              const Text(
                'เข้าสู่ระบบคลังวัตถุดิบ',
                style: TextStyle(
                  fontSize: 150.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF005DFF),
                ),
              ),
              const SizedBox(
                height: 200.0,
              ),
              Row(
                children: [
                  Container(
                    width: 920,
                  ),
                  Text(
                    'ชื่อผู้ใช้งาน',
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF005DFF),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 900.0, left: 900.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: _username,
                  style: TextStyle(fontSize: 60, color: Colors.black),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 40.0,
                    ),
                    labelStyle: TextStyle(
                      fontSize: 50.0,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 20),
                      child: const Icon(
                        Icons.person,
                        color: Colors.blue,
                        size: 60,
                      ),
                    ),
                    hintText: 'กรุณาใส่ชื่อผู้ใช้',
                  ),
                ),
              ),
              const SizedBox(
                height: 150.0,
              ),
              Row(
                children: [
                  Container(
                    width: 920,
                  ),
                  Text(
                    'รหัสผ่าน',
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF005DFF),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 900.0, left: 900.0),
                child: TextField(
                  obscureText: _isHidden,
                  controller: _password,
                  style: TextStyle(fontSize: 60, color: Colors.black),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 40.0,
                    ),
                    labelStyle: TextStyle(
                      fontSize: 50.0,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 20),
                      child: const Icon(
                        Icons.lock,
                        color: Colors.blue,
                        size: 60,
                      ),
                    ),
                    suffixIcon: GestureDetector(
                      child: Icon(
                        _isHidden ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                        size: 60,
                      ),
                      onTap: () {
                        setState(() {
                          _isHidden = !_isHidden;
                        });
                      },
                    ),
                    hintText: 'กรุณาใส่รหัสผ่าน',
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              ButtonAlert(
                child: Text(
                  'เข้าสู่ระบบ',
                  style: TextStyle(fontSize: 70, color: Colors.white),
                ),
                width: 1600,
                backgroundColor: Colors.blue,
                onTap: () {
                  if (_username.text.isEmpty || _password.text.isEmpty) {
                    Get.dialog(
                      PopAlertDialog(
                        titleMessage: "เข้าสู่ระบบไม่สำเร็จ!!!",
                        contentMessage: "กรุณาตรวจสอบชื่อผู้ใช้งานเเละรหัสผ่าน",
                        submitButton: true,
                        submitText: "ยืนยัน",
                        onSubmit: () {
                          Get.back();
                        },
                        submitColor: Colors.green,
                      ),
                    );
                  } else {
                    userController
                        .fetchLogin(
                      username: _username.text,
                      password: _password.text,
                    )
                        .then((value) async {
                      Get.back();
                      if (value.success == false) {
                        Get.dialog(PopAlertDialog(
                          titleMessage: "เข้าสู่ระบบไม่สำเร็จ",
                          contentMessage: value.message!,
                          submitButton: true,
                          submitText: "ตกลง",
                          onSubmit: () {
                            Get.back();
                          },
                          submitColor: Colors.green,
                        ));
                      } else {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setString("remember_username", _username.text);
                        prefs.setString("remember_password", _password.text);
                        Get.off(() => const main_page());
                      }
                    });
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*

// login(String username , password) async{
//   try {
//     Response response = await post(
//       Uri.parse('http://192.168.1.96/api/login.php'),
//       body: {
//         'username': 'sttest',
//         'password': 'sttest'
//       }
//     );
//     if(response.statusCode == 200) {
//       var data = jsonDecode(response.body.toString());
//       print(data['token']);
//       print('Login sucessfully');
//     }else{
//       print('Failed');
//     }
//   }catch(e){
//     print(e.toString());
//   }
// }

// startLogin() async{
//   String apiurl = "http://192.168.1.96:80/api/login.php";
//   //dont use http://localhost , because emulator don't get that address
//   //insted use your local IP address or use live URL
//   //hit "ipconfig" in windows or "ip a" in linux to get you local IP
//   print(username);
//
//   var response = await http.post(Uri.parse(apiurl),body: {
//     'sttest': username,
//     'sttest': password,
//   });
//
//   if(response.statusCode == 200){
//     var jsondata = json.decode(response.body);
//     if(jsondata["error"]){
//       setState(() {
//         showprogress = false; //don't show progress indicator
//         error = true;
//         errormsg = jsondata["message"];
//       });
//     }else{
//       if(jsondata["success"]){
//         setState(() {
//           error = false;
//           showprogress = false;
//         });
//         //save the data returned from server
//         //and navigate to home page
//         String fullname = jsondata["fullname"];
//         print(fullname);
//         //user shared preference to save data
//       }else{
//         showprogress = false; //don't show progress indicator
//         error = true;
//         errormsg = "Something went wrong.";
//       }
//     }
//   }else{
//     setState(() {
//       showprogress = false; //don't show progress indicator
//       error = true;
//       errormsg = "Error during connecting to server.";
//     });
//   }
// }

// bool visible = false;
//
// late String errormsg;
// late bool error, showprogress;
// late String username, password;
//
// final _username = TextEditingController(text: '');
// final _password = TextEditingController(text: '');
//
// Future userLogin() async {
//   setState(() {
//     visible = true;
//   });
//
//   String username = _username.text;
//   String password = _password.text;
//
//   var url = 'http://103.253.72.12/login_user.php';
//
//   var data = {'username': _username, 'password': _password };
//
//   var response = await http.post(url, body: jsonEncode(data));
//
//   var message = jsonDecode(response.body);
//
//   if(message == 'Login Matched') {
//     setState(() {
//       visible = false;
//     });
//
//     // Navigator.push(
//     //     context,
//     //     MaterialPageRoute(
//     //         builder: (context) => main_page(username: _username.text))
//     // );
//
//   }else{
//     setState(() {
//       visible = false;
//     });
//
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text(message),
//             actions: [
//               ElevatedButton(
//                 child: Text("OK"),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           );
//         }
//     );
//   }
// }
//
//
//
// @override
// void initState() {
//   // TODO: implement initState
//   username = '';
//   password = '';
//   errormsg = '';
//   error = false;
//   showprogress = false;
//   super.initState();
// }

// Container(
// width: 1650.0,
// height: 150.0,
// child: OutlinedButton(
// child: Text(
// 'เข้าสู่ระบบ',
// style: TextStyle(
// fontSize: 60,
// fontWeight: FontWeight.w500,
// color: Colors.white
// ),
// ),
// style: OutlinedButton.styleFrom(
// backgroundColor: Colors.blue,
// side: BorderSide(color: Colors.blueAccent, width: 2),
// shape: const RoundedRectangleBorder(
// borderRadius: BorderRadius.all(Radius.circular(20)),
// ),
// ),
// onPressed: () {
// Navigator.of(context).push(
// MaterialPageRoute(
// builder: (context) => main_page(),
// ),
// );
// }
// ),
// ),
// Widget errmsg(String text){
//   //error message widget.
//   return Container(
//     width: 1000,
//     height: 120,
//     padding: EdgeInsets.all(10),
//     margin: EdgeInsets.only(bottom: 10.00),
//     decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(30),
//         color: Colors.red,
//         border: Border.all(color: Colors.red, width:2)
//     ),
//     child: Row(children: <Widget>[
//       Container(
//         margin: EdgeInsets.only(right:10),
//         child: Icon(Icons.info, color: Colors.white,size: 60,),
//       ), // icon for error message
//
//       Text(text, style: TextStyle(color: Colors.white, fontSize: 60)),
//       //show error message text
//     ]),
//   );
// }
// @override
// void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//   super.debugFillProperties(properties);
//   properties.add(StringProperty('username', username));
//   properties.add(StringProperty('errormsg', errormsg));
// }

 */ //headOldlogindata

/*

// เปลี่ยนสถานะเป็นกำลังล็อกอิน
// setState(() {
//   _authenticatingStatus = !_authenticatingStatus;
// });
//
// // อ้างอิงฟอร์มที่กำลังใช้งาน ตรวจสอบความถูกต้องข้อมูลในฟอร์ม
// if (_formKey.currentState!.validate()) {
//   //หากผ่าน
//   FocusScope.of(context)
//       .unfocus(); // ยกเลิดโฟกัส ให้แป้นพิมพ์ซ่อนไป
//
//   String username = _username.text;
//   String password = _password.text;
//
//   // ใช้ provider ส่ง request ล็อกอินไปยัง server
//   var result =
//       await loginProvider.authen(username, password);
//
//   // จำลองเปรียบเทียบค่า เพื่อทำการล็อกอิน
//   if (result['success'] != null) {
//     // ล็อกอินผ่าน
//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text('Login Successful')),
//     );
//     Navigator.pop(
//         context, true); // ปิดหน้านี้พร้อมคืนค่า true
//   } else {
//     if (result['error'] != null) {
//       // ล็อกอินไม่ผ่านมี error
//       String error = result['error'];
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('${error}..  try agin!')),
//       );
//       setState(() {
//         _authenticatingStatus = !_authenticatingStatus;
//       });
//     } else {
//       // ล็อกอินไม่ผ่าน อื่นๆ
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error..  try agin!')),
//       );
//       setState(() {
//         _authenticatingStatus = !_authenticatingStatus;
//       });
//     }
//   }
// }

Visibility(
                //   child: ElevatedButton(
                //     style: OutlinedButton.styleFrom(
                //       backgroundColor: Colors.blue,
                //       side: BorderSide(color: Colors.blueAccent, width: 2),
                //       shape: const RoundedRectangleBorder(
                //         borderRadius: BorderRadius.all(Radius.circular(20)),
                //       ),
                //     ),
                //     onPressed: () {
                //       if (_username.text.isEmpty || _password.text.isEmpty) {
                //         Get.dialog(
                //           Dialog(
                //             alignment: Alignment.center,
                //             elevation: 30,
                //
                //           ),
                //         );
                //       }
                //     },
                //     child: Container(
                //       alignment: Alignment.center,
                //       width: 1600,
                //       height: 120,
                //       child: const Text(
                //         'เข้าสู่ระบบ',
                //         style: TextStyle(fontSize: 70),
                //       ),
                //     ),
                //   ),
                // ),

// Visibility(
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: const <Widget>[
//       CircularProgressIndicator(),
//       SizedBox(
//         width: 30.0,
//       ),
//       Text(
//         " Authenticating ... Please wait",
//         style: TextStyle(
//             fontSize: 50,
//             fontWeight: FontWeight.w500,
//             color: Colors.black45),
//       ),
//     ],
//   ),
// ),

 */ //Visibility
