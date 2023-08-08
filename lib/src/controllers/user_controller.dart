import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../models/login_model/login_model.dart';
import '../../service/login_service.dart';

class UserController extends GetxController {
  var loginModel = LoginModel().obs;

  Future<LoginModel> fetchLogin({username, password}) async {
    try{
      String jsonData = await UserService().login(
        username: username,
        password: password,
      );
      loginModel.value = LoginModel.fromJson(json.decode(jsonData));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return loginModel.value;
  }
}