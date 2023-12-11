import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/http_provider.dart';
import 'package:flutter_application_1/model/http_statefull.dart';
import 'package:provider/provider.dart';

class HttpProviderPage extends StatefulWidget {
  static const nameRoute = "http_provider_page";

  HttpProviderPage({super.key});

  @override
  State<HttpProviderPage> createState() => _HttpCallPageState();
}

class _HttpCallPageState extends State<HttpProviderPage> {
  HttpStatefull dataResponse =
      HttpStatefull(id: '', name: '', job: '', createdAt: '');

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<HttpProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: const Text("HTTP Call")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Consumer<HttpProvider>(
            builder: (context, value, child) => Text(
                value.data['id'] != null ? "ID: ${value.data['id']}" : "ID: -"),
          ),
          const SizedBox(
            height: 20,
          ),
          Consumer<HttpProvider>(
            builder: (context, value, child) => Text(value.data['name'] != null
                ? "Name: ${value.data['name']}"
                : "Name: -"),
          ),
          const SizedBox(
            height: 20,
          ),
          Consumer<HttpProvider>(
            builder: (context, value, child) => Text(value.data['job'] != null
                ? "Job: ${value.data['job']}"
                : "Job: -"),
          ),
          TextButton(
              onPressed: () {
                print("Pressed");
                dataProvider.postData(name: "Budi", job: "Kapten");
              },
              child: Text('Create')),
          TextButton(
              onPressed: () {
                print("Detail Pressed");
                dataProvider.detailData(id: 2, context: context);
              },
              child: Text('Detail'))
        ]),
      ),
    );
  }
}
