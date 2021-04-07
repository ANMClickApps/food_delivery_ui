import 'package:flutter/material.dart';

class AppDataModel with ChangeNotifier {
  int _index = 0;
  int get getCurrentIndex => _index;

  void updateSelectedIndex(int selectedIndex) {
    _index = selectedIndex;

    notifyListeners();
  }
}
