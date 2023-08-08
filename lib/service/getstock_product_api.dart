// ignore_for_file: unnecessary_brace_in_string_interps

import 'dart:convert';
import 'package:stock_product_app/models/buystock_cutpipe_model/buystock_model/buystock_model.dart';
import 'package:stock_product_app/models/buystock_cutpipe_model/cutpipe_model/cutpipe_model.dart';
import 'package:stock_product_app/models/login_model/login_model.dart';
import 'package:stock_product_app/models/ordering_model/ordering_model.dart';
import 'package:http/http.dart' as http;
import 'package:stock_product_app/models/partnumber_model/partnumber_model/partnumber_model.dart';
import 'package:stock_product_app/models/searchstock_model/search_stock_model.dart';
import 'package:stock_product_app/models/stock_adjust_model/stock_adjust_model.dart';

import 'package:stock_product_app/service/evn.dart';

import 'base_service.dart';

class GetorderingAPI {
  static Future<List<Getallordering>>? getviewAllOrdering() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getordering.php'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      print(json);
      return (json['data'] as List)
          .map((e) => Getallordering.fromJson(e))
          .toList();
      //final data = json['data'] as List;
      /*
      return data
          .map<Getallordering>((e) => Getallordering.fromJson(e))
          .toList();
      */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }

  static Future<List<GetallorderingDetail>>? getviewAllOrderingDetail() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getorderingdetail'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      print(json);
      return (json['data'] as List)
          .map((e) => GetallorderingDetail.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallorderingDetail>((e) => GetallorderingDetail.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }

  static Future<List<GetallorderingWH>>? getviewAllOrderingWH() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getorderingWH'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      print(json);
      return (json['data'] as List)
          .map((e) => GetallorderingWH.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallorderingWH>((e) => GetallorderingWH.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }
}

class GetpartnumAPI {
  static Future<List<GetallpartnumAll>>? getviewAllpartnumAll() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getpartnumAll'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      print(json);
      return (json['data'] as List)
          .map((e) => GetallpartnumAll.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallpartnumAll>((e) => GetallpartnumAll.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }

  static Future<List<GetallpartnumENM>>? getviewAllpartnumENM() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getpartnumENM'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      print(json);
      return (json['data'] as List)
          .map((e) => GetallpartnumENM.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallpartnumENM>((e) => GetallpartnumENM.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }

  static Future<List<GetallpartnumCB>>? getviewAllpartnumCB() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getpartnumCB'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      print(json);
      return (json['data'] as List)
          .map((e) => GetallpartnumCB.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallpartnumCB>((e) => GetallpartnumCB.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }

  static Future<List<GetallpartnumSAM>>? getviewAllpartnumSAM() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getpartnumSAM'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      print(json);
      return (json['data'] as List)
          .map((e) => GetallpartnumSAM.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallpartnumSAM>((e) => GetallpartnumSAM.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }

  static Future<List<GetallpartnumAB>>? getviewAllpartnumAB() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getpartnumAB'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      print(json);
      return (json['data'] as List)
          .map((e) => GetallpartnumAB.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallpartnumAB>((e) => GetallpartnumAB.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }

  static Future<List<GetallpartnumETC>>? getviewAllpartnumETC() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getpartnumETC'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      print(json);
      return (json['data'] as List)
          .map((e) => GetallpartnumETC.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallpartnumETC>((e) => GetallpartnumETC.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }
}

class GetsearchstockAPI {
  static Future<List<Getallsearchstock>>? getviewAllsearchstock() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getsearchstock'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      print(json);
      return (json['data'] as List)
          .map((e) => Getallsearchstock.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<Getallsearchstock>((e) => Getallsearchstock.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }

  static Future<List<GetallsearchstockDetail>>?
      getviewAllsearchstockDeatil() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getsearchstockDetail'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      return (json['data'] as List)
          .map((e) => GetallsearchstockDetail.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallsearchstockDetail>(
              (e) => GetallsearchstockDetail.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }
}

class GetstockadjustAPI {
  static Future<List<Getallstockadjust>>? getviewAllstockadjust() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getstockadjust'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      return (json['data'] as List)
          .map((e) => Getallstockadjust.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<Getallstockadjust>((e) => Getallstockadjust.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }

  static Future<List<GetallstockadjustDetail>>?
      getviewAllstockadjustDetail() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getstockadjustDetail'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      return (json['data'] as List)
          .map((e) => GetallstockadjustDetail.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallstockadjustDetail>(
              (e) => GetallstockadjustDetail.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }
}

class GetbuystockAPI {
  static Future<List<GetallbuystockAll>>? getviewAllbuystockAll() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getbuystockAll'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      return (json['data'] as List)
          .map((e) => GetallbuystockAll.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallbuystockAll>((e) => GetallbuystockAll.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }

  static Future<List<GetallbuystockENM>>? getviewAllbuystockENM() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getbuystockENM'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      return (json['data'] as List)
          .map((e) => GetallbuystockENM.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallbuystockENM>((e) => GetallbuystockENM.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }

  static Future<List<GetallbuystockCB>>? getviewAllbuystockCB() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getbuystockCB'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      return (json['data'] as List)
          .map((e) => GetallbuystockCB.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallbuystockCB>((e) => GetallbuystockCB.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }

  static Future<List<GetallbuystockSAM>>? getviewAllbuystockSAM() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getbuystockSAM'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      return (json['data'] as List)
          .map((e) => GetallbuystockSAM.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallbuystockSAM>((e) => GetallbuystockSAM.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }

  static Future<List<GetallbuystockAB>>? getviewAllbuystockAB() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getbuystockAB'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      return (json['data'] as List)
          .map((e) => GetallbuystockAB.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallbuystockAB>((e) => GetallbuystockAB.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }

  static Future<List<GetallbuystockETC>>? getviewAllbuystockETC() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getbuystockETC'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      return (json['data'] as List)
          .map((e) => GetallbuystockETC.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallbuystockETC>((e) => GetallbuystockETC.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }

  static Future<List<GetallbuystockDetail>>? getviewAllbuystockDetail() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getbuystockDetail'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      return (json['data'] as List)
          .map((e) => GetallbuystockDetail.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallbuystockDetail>((e) => GetallbuystockDetail.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }
}

class GetcutpipeAPI {
  static Future<List<Getallcutpipe>>? getviewAllcutpipe() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getcutpipe'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      return (json['data'] as List)
          .map((e) => Getallcutpipe.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data.map<Getallcutpipe>((e) => Getallcutpipe.fromJson(e)).toList();
      */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }

  static Future<List<GetallcutpipeDetail>>? getviewAllcutpipeDetail() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/getcutpipeDetail'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      return (json['data'] as List)
          .map((e) => GetallcutpipeDetail.fromJson(e))
          .toList();
      /*
      final data = json['data'] as List;
      return data
          .map<GetallcutpipeDetail>((e) => GetallcutpipeDetail.fromJson(e))
          .toList();
          */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }
}

class GetloginAPI {
  static Future<List<Getlogin>>? getviewAllLogin() async {
    final res = await http.get(
      Uri.parse('${Env.SERVER_URL}/index.php/api/login'),
      headers: {"Content-Type": "application/json"},
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      return (json['data'] as List).map((e) => Getlogin.fromJson(e)).toList();
      /*
      final data = json['data'] as List;
      return data.map<Getlogin>((e) => Getlogin.fromJson(e)).toList();
      */
    } else {
      print(res.statusCode.toString());
      throw Exception('Failed to fetch data ${res.statusCode}');
    }
  }
}
