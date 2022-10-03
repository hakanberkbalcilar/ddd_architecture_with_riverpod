import 'package:flutter/material.dart';
import 'package:riverpod_sample/core/base/model/base_view_model.dart';
import 'package:riverpod_sample/core/extensions/context_extension.dart';
import 'package:riverpod_sample/domain/entities/news/news.dart';
import 'package:riverpod_sample/domain/repositories/news_repository.dart';

class NavigationViewModel extends BaseViewModel {
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
