import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/sandbox/add_bloc_consumer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddBlocConsumer(),
    );
  }
}
