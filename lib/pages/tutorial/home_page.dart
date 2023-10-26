import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/tutorial/profile_page.dart';

class HomePage extends StatelessWidget {
  static const nameRoute = '/home_page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(ProfilePage.nameRoute);
        },
        child: const Icon(Icons.verified_user),
      ),
    );
  }
}
