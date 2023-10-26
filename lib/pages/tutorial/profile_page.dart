import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/tutorial/photo_page.dart';

class ProfilePage extends StatelessWidget {
  static const nameRoute = '/profile_page';
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile Page")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).popAndPushNamed(PhotoPage.nameRoute);
        },
        child: const Icon(Icons.join_right),
      ),
    );
  }
}
