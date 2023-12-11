import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpProvider with ChangeNotifier {
  Map<String, dynamic> _data = {};

  Map<String, dynamic> get data => _data;

  int get jumlahData => _data.length;

  void detailData({required int id, required BuildContext context}) async {
    Uri uri = Uri.parse('https://reqres.in/api/users/a1233 $id');

    var response = await http.get(uri);

    var result = json.decode(response.body);

    if (response.statusCode == 200) {
      _data = result['data'];
      notifyListeners();

      berhasilGetData(context: context, text: "Berhasil");
    } else {
      berhasilGetData(context: context, text: "Gagal");
    }
  }

  void postData({required String name, required String job}) async {
    Uri uri = Uri.parse('https://reqres.in/api/users');

    var response = await http.post(uri, body: {'name': name, 'job': job});

    _data = json.decode(response.body);
    print(_data.toString());
    notifyListeners();
  }

  berhasilGetData({required BuildContext context, String text = "Berhasil"}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
