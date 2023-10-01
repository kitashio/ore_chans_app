import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateNotifierProvider<Counter, int>((ref) => Counter());

class Counter extends StateNotifier<int> {
  Counter() : super(0);

  void countUp({
    required int level,
    required int answer,
    required int correctAnswer,
  }) {
    if (answer == correctAnswer) {
      if (level == 1) {
        state = state + 5;
      } else if (level == 2) {
        state = state + 10;
      } else {
        state = state + 15;
      }
    }
  }

  void reset() => state = 0;
}
