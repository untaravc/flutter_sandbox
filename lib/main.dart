import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/tutorial/home_page.dart';
import 'package:flutter_application_1/pages/tutorial/media_query_page.dart';
import 'package:flutter_application_1/pages/tutorial/photo_page.dart';
import 'package:flutter_application_1/pages/tutorial/product_list.dart';
import 'package:flutter_application_1/pages/tutorial/profile_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        // visualDensity: VisualDensity.compact,
        // primaryColor: Color.fromARGB(255, 80, 221, 41)
      ),
      initialRoute: MediaQueryPage.nameRoute,
      routes: {
        MediaQueryPage.nameRoute: (context) => const MediaQueryPage(),
        ProductList.nameRoute: (context) => const ProductList(),
        HomePage.nameRoute: (context) => const HomePage(),
        ProfilePage.nameRoute: (context) => const ProfilePage(),
        PhotoPage.nameRoute: (context) => const PhotoPage(),
      },
    );
  }
}
