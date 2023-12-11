import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/User.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserProvider with ChangeNotifier {
  late String id, name, job;

  List<User> _allUser = [];

  List<User> get allUser => _allUser;

  int get countData => _allUser.length;

  User selectById(String id) =>
      _allUser.firstWhere((element) => element.id == id);

  void listData({required int page, required BuildContext context}) async {
    Uri uri = Uri.parse('https://reqres.in/api/users');

    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var result = json.decode(response.body);
      List list = result['data'];

      User user;
      list.forEach((element) => {
            user = User(id: element.id, name: element.first_name),
            _allUser.add(user)
          });

      notifyListeners();
    } else {
      notifySnackBar(context: context, text: "Gagal");
    }
  }

  void postData(
      {required String name,
      required String job,
      required BuildContext context}) async {
    Uri uri = Uri.parse('https://reqres.in/api/users');

    var response = await http.post(uri, body: {'name': name, 'job': job});

    if (response.statusCode == 200) {
      var result = json.decode(response.body);
      _allUser = result['data'];

      notifyListeners();
    } else {
      notifySnackBar(context: context, text: "Gagal");
    }
  }

  notifySnackBar({required BuildContext context, String text = "Berhasil"}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
