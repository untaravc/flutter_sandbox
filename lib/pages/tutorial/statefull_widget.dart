import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter")),
      body: Column(children: [
        Text(counter.toString()),
        Row(
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  counter -= 1;
                });
              },
              child: const Text("Kurang"),
            ),
            const SizedBox(
              width: 20,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  counter += 1;
                });
              },
              child: const Text("Tambah"),
            )
          ],
        )
      ]),
    );
  }
}
