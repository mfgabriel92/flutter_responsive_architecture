import 'package:flutter/foundation.dart';

class HomeScreenViewModel extends ChangeNotifier {
  String text = 'Default';
  int counter = 0;

  void init() {
    text = 'Initialized';
    notifyListeners();
  }

  void increment() {
    counter++;
    text = 'Incremented to $counter';
    notifyListeners();
  }
}
