import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class HomeModel extends ChangeNotifier {
  static const List validEmail = ['test@gmail.com'];

  get isVisible => _isVisible;
  bool _isVisible = false;
  set isVisible(value) {
    _isVisible = value;
    notifyListeners();
  }

  get isValid => _isValid;
  bool _isValid = false;
  void isValidasiEmail(String input) {
    if (input == validEmail.first) {
      _isValid = true;
    } else {
      _isValid = false;
    }
  }
}
