import 'package:flutter_riverpod/flutter_riverpod.dart';

class UrjaCoins extends StateNotifier<int> {
  UrjaCoins() : super(250);
  void setCoins(int coins) {
    if (state < coins) {
      return;
    }
    state = state - coins;
  }
  void addCoins(int coins) {
    state = state + coins;
  }
}
