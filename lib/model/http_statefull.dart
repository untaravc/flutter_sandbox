import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpStatefull {
  String id, name, job, createdAt;

  HttpStatefull(
      {required this.id,
      required this.name,
      required this.job,
      required this.createdAt});

  static Future<HttpStatefull> postData(
      {required String name, required String job}) async {
    Uri uri = Uri.parse('https://reqres.in/api/users');

    var response = await http.post(uri, body: {'name': name, 'job': job});

    var data = json.decode(response.body);

    return HttpStatefull(
        id: data['id'],
        name: data['name'],
        job: data['job'],
        createdAt: data['createdAt']);
  }
}
