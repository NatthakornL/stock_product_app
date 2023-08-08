import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

//https://strubberdata.com/13.WAREHOUSE/index.php

class BaseService {
  var serverUrl = "http://192.168.1.96:8080/Sys_WarehouseManagement/";
  // var serverUrl = "http://192.168.1.96:8080/13.WAREHOUSE/index.php";
  var serverPath = "index.php/api";
  var pageSize = "25";

  String getServerApiUrl() {
    return serverUrl + serverPath;
  }

  Future<bool> getServerStatus() async {
    try {
      final response = await http.get(Uri.parse(serverUrl));
      if (response.statusCode == 200) {
        return true;
      }
    } catch (ex) {
      if (kDebugMode) {
        print(ex);
      }
    }
    return false;
  }
}
