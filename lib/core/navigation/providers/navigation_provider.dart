import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void changeTab(int index) {
    state = index;
  }
}

final navigationIndexProvider = NotifierProvider<NavigationNotifier, int>(
  NavigationNotifier.new,
);
