import 'package:dartz/dartz.dart';
import 'package:riverpod_sample/core/base/error/base_error.dart';
import 'package:riverpod_sample/domain/entities/news/news.dart';

abstract class NewsRepository {
  Future<Either<BaseError<NewsList>, NewsList>> getNews();
  Future<Either<BaseError<News>, News>> getNewsDetail(int id);
  Future<Either<BaseError<NewsList>, NewsList>> getNewsByCategory();
}
