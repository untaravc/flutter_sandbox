import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends Cubit<int> {
  int init;
  Counter({this.init = 0}) : super(init);

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    emit(state - 1);
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
  }
}
