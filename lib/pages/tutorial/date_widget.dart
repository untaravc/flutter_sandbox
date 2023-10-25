import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({super.key});

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tanggal")),
      body: Center(
          child: Text(DateFormat.Hm().format(DateTime.now()).toString())),
    );
  }
}
