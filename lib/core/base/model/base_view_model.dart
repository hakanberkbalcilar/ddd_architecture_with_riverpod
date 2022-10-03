import 'package:flutter/material.dart';

class BaseViewModel extends ChangeNotifier {
  late BuildContext context;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void changeLoading(bool value, [bool notify = true]) {
    _isLoading = value;

    if (notify) notifyListeners();
  }
}
