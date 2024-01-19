import 'package:flutter/material.dart';

class OnboardigProvider extends ChangeNotifier {
  bool onLastPage = false;

  void onLastPageArrowButton(index) {
    onLastPage = (index == 2);
    notifyListeners();
  }
}
