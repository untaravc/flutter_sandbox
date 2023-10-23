import 'package:flutter/material.dart';

class BlocStateManagement extends StatelessWidget {
  const BlocStateManagement({super.key});

  Stream<int> countStream() async* {
    for (int i = 1; i <= 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stream Apps')),
      body: StreamBuilder(
          stream: countStream(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Text(
                  "Loading...",
                  style: TextStyle(fontSize: 50),
                ),
              );
            } else {
              return Center(
                child: Text(
                  "${snapshot.data}",
                  style: const TextStyle(fontSize: 50),
                ),
              );
            }
          }),
    );
  }
}
