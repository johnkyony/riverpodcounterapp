import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'model.dart';

final counterControllerProvider = StateNotifierProvider<CounterController , Counter>(
      (ref) => CounterController(),
);
class CounterController extends StateNotifier<Counter>{
  CounterController(): super(_initialValue);
  static const _initialValue = Counter(0);

  void increment(){
    state = Counter(state.count + 1);
  }

  void decrement(){
    state = Counter(state.count - 1);
  }

  void reset(){
    state = const Counter(0);
  }

}