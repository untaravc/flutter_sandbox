import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/user_provider.dart';
import 'package:provider/provider.dart';

class UserList extends StatefulWidget {
  static const nameRoute = "http_provider_page";

  UserList({super.key});

  @override
  State<UserList> createState() => _HttpCallPageState();
}

class _HttpCallPageState extends State<UserList> {
  UserProvider userProvider = UserProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User list")),
      body: Center(
          child: Column(
        children: [
          Consumer<UserProvider>(
            builder: (context, value, child) =>
                Text("Jumlah ${value.countData}"),
          ),
          TextButton(
              onPressed: () {
                userProvider.listData(page: 1, context: context);
              },
              child: Text("Update"))
        ],
      )),
    );
  }
}
