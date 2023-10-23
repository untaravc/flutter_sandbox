import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/counter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddBlocBuilder extends StatelessWidget {
  AddBlocBuilder({super.key});

  final Counter mycounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("APP"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        BlocConsumer<Counter, int>(
          bloc: mycounter,
          builder: (context, state) {
            print(state);
            return Text("$state");
          },
          listenWhen: (previous, current) {
            if (current % 2 == 0) {
              return true;
            } else {
              return false;
            }
          },
          listener: (context, state) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("GENAP"),
              duration: Duration(seconds: 1),
            ));
          },
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
