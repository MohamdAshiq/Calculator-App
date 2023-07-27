import 'package:flutter/material.dart';

class ButtonController extends ChangeNotifier {
  bool _ispressed = false;

  bool get ispressed => _ispressed;

  void buttonpressed() {
    notifyListeners();
  }

  void onpointerdown() {
    _ispressed = true;
    notifyListeners();
  }

  void onpointerup() {
    _ispressed = false;
    notifyListeners();
  }
}
