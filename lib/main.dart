import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/model/http_provider.dart';
import 'package:flutter_application_1/pages/tutorial/http_provider_page.dart';
import 'package:flutter_application_1/pages/tutorial/user_list.dart';
import 'package:flutter_application_1/provider/user_provider.dart';
import 'package:provider/provider.dart';

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
      home: ChangeNotifierProvider(
        create: (context) => HttpProvider(),
        child: HttpProviderPage(),
      ),
      initialRoute: HttpProviderPage.nameRoute,
      routes: {
        HttpProviderPage.nameRoute: (context) => ChangeNotifierProvider(
              create: (context) => UserProvider(),
              child: UserList(),
            ),
      },
    );
  }
}
