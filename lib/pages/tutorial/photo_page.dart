import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/tutorial/home_page.dart';

class PhotoPage extends StatelessWidget {
  static const nameRoute = '/photo_page';
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Photo Page")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).popAndPushNamed(HomePage.nameRoute);
        },
        child: const Icon(Icons.verified_user),
      ),
    );
  }
}
