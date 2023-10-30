import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> dataFetch = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("My App"),
      ),
      body: ListView.builder(
          itemCount: dataFetch.length,
          itemBuilder: (context, index) {
            final post = dataFetch[index];
            final title = post['title'];
            return ListTile(
              title: Text(title),
            );
          }),
      floatingActionButton: FloatingActionButton(onPressed: fetchUsers),
    );
  }

  void fetchUsers() async {
    const url = "https://jsonplaceholder.typicode.com/posts";

    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);

    setState(() {
      dataFetch = json;
    });
  }
}
