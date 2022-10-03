import 'package:flutter/material.dart';
import 'package:riverpod_sample/core/base/enum/error_type.dart';

abstract class BaseError<T> {
  final T? data;
  final String message;
  final ErrorType type;

  BaseError({required this.data, required this.message, required this.type});

  String toLocalizedString(BuildContext context) => "Something went wrong!";
}
