import 'package:riverpod_sample/domain/entities/news_category/news_category.dart';

class NewsCategoryModel extends NewsCategory {
  NewsCategoryModel({required super.id, required super.title});

  factory NewsCategoryModel.fromJson(Map<String, dynamic> json) => NewsCategoryModel(id: json['id'] as int, title: json['title'] as String);
}
