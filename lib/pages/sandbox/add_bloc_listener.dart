import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/counter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddBlocListener extends StatelessWidget {
  AddBlocListener({super.key});

  final Counter mycounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("APP"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        BlocListener(
          bloc: mycounter,
          listener: (context, state) {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Genap")));
          },
          listenWhen: (previous, current) {
            return true;
          },
          child: BlocBuilder<Counter, int>(
              bloc: mycounter,
              buildWhen: ((previous, current) {
                return current > 0;
              }),
              builder: (context, state) {
                return Text("$state");
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  mycounter.decrement();
                },
                icon: const Icon(Icons.remove)),
            IconButton(
                onPressed: () {
                  mycounter.increment();
                },
                icon: const Icon(Icons.add))
          ],
        )
      ]),
    );
  }
}
