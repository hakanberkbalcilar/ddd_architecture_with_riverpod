import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(String content) =>
      ScaffoldMessenger.of(this).showSnackBar(SnackBar(content: Text(content)));
}
