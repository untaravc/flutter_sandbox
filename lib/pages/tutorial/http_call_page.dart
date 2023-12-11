import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/http_statefull.dart';

class HttpCallPage extends StatefulWidget {
  static const nameRoute = "http_call_page";

  HttpCallPage({super.key});

  @override
  State<HttpCallPage> createState() => _HttpCallPageState();
}

class _HttpCallPageState extends State<HttpCallPage> {
  HttpStatefull dataResponse =
      HttpStatefull(id: '', name: '', job: '', createdAt: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HTTP Call")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(dataResponse.id != '' ? 'ID : ${dataResponse.id}' : 'ID: -'),
          const SizedBox(
            height: 20,
          ),
          Text(dataResponse.id != ''
              ? 'Name : ${dataResponse.name}'
              : 'Name: -'),
          const SizedBox(
            height: 20,
          ),
          Text(dataResponse.id != '' ? 'Job : ${dataResponse.job}' : 'Job: -'),
          TextButton(
              onPressed: () {
                HttpStatefull.postData(name: 'Wahyu', job: "Pulici")
                    .then((value) => {
                          print(value.toString()),
                          setState(() {
                            dataResponse.id = value.id;
                            dataResponse.name = value.name;
                            dataResponse.job = value.job;
                          })
                        });
              },
              child: Text('Create')),
        ]),
      ),
    );
  }
}
