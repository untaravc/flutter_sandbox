import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/tutorial/home_page.dart';
import 'package:flutter_application_1/pages/tutorial/photo_page.dart';
import 'package:flutter_application_1/pages/tutorial/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.nameRoute,
      routes: {
        HomePage.nameRoute: (context) => HomePage(),
        ProfilePage.nameRoute: (context) => const ProfilePage(),
        PhotoPage.nameRoute: (context) => const PhotoPage(),
      },
    );
  }
}
