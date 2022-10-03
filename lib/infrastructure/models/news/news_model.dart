import 'package:riverpod_sample/domain/entities/news/news.dart';

class NewsModel extends News {
  NewsModel({required super.id, required super.categoryId, required super.imageUrl, required super.title, required super.description});

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
      id: json['id'] as int,
      categoryId: json['categoryId'] as int,
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      description: json['description'] as String);
}
