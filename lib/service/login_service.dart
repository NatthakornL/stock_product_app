// ignore_for_file: prefer_interpolation_to_compose_strings

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'base_service.dart';

class UserService {
  login({username, password}) async {
    var client = http.Client();
    var result = "";
    try {
      var url = Uri.parse(BaseService().getServerApiUrl() + "/api/login.php");
      final response = await client.post(
        url,
        body: {
          "username": username,
          "password": password,
        },
      );
      result = utf8.decode(response.bodyBytes);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {
      client.close();
    }

    return result;
  }
}
