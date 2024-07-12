import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProgressNotifier extends StateNotifier<double> {
  ProgressNotifier() : super(0.1);

  void updateProgress(double newProgress) {
    state = newProgress;
  }

  void increment() {
    if (state < 1.0) {
      state += 0.1;
    }
  }

  void decrement() {
    if (state > 0.0) {
      state -= 0.1;
    }
  }
}

final progressProvider = StateNotifierProvider<ProgressNotifier, double>((ref) {
  return ProgressNotifier();
});
