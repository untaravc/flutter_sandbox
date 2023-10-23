import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class CubitApps extends StatelessWidget {
  CubitApps({super.key});

  final CounterCubit mycounter = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("APP"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        StreamBuilder(
            initialData: mycounter.initialData,
            stream: mycounter.stream,
            builder: (context, snapshot) {
              return Text("${snapshot.data}");
            }),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  mycounter.kurangData();
                },
                icon: const Icon(Icons.remove)),
            IconButton(
                onPressed: () {
                  mycounter.tambahData();
                },
                icon: const Icon(Icons.add))
          ],
        )
      ]),
    );
  }
}

class CounterCubit extends Cubit<int> {
  int initialData;
  int? current;
  int? next;
  CounterCubit({this.initialData = 0}) : super(0);

  void tambahData() {
    emit(state + 1);
  }

  void kurangData() {
    if (state > 0) {
      emit(state - 1);
    }
  }

  @override
  void onChange(Change<int> change) {
    // TODO: implement onChange
    super.onChange(change);
    current = change.currentState;
    next = change.nextState;
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    print(error);
  }
}
