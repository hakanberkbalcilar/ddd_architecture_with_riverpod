import 'package:dartz/dartz.dart';
import 'package:riverpod_sample/core/base/error/base_error.dart';
import 'package:riverpod_sample/domain/entities/news/news.dart';
import 'package:riverpod_sample/infrastructure/models/news/news_model.dart';

class NewsRemoteDataSource {
  Future<Either<BaseError<NewsList>, NewsList>> getNews() => Future.value(right(List.generate(
      10,
      (index) => NewsModel(
          id: index,
          categoryId: index % 2,
          imageUrl: 'https://imgeng.jagran.com/images/2022/aug/breaking-news-21660790286781.jpg',
          title: 'News $index',
          description: 'News Smaple description'))));

  Future<Either<BaseError<NewsList>, NewsList>> getNewsByCategory() {
    // TODO: implement getNewsByCategory
    throw UnimplementedError();
  }

  Future<Either<BaseError<News>, News>> getNewsDetail(int id) {
    // TODO: implement getNewsDetail
    throw UnimplementedError();
  }
}
