import 'package:riverpod_sample/domain/entities/news/news.dart';
import 'package:riverpod_sample/core/base/error/base_error.dart';
import 'package:dartz/dartz.dart';
import 'package:riverpod_sample/domain/repositories/news_repository.dart';
import 'package:riverpod_sample/infrastructure/data_sources/news/news_local_data_source.dart';
import 'package:riverpod_sample/infrastructure/data_sources/news/news_remote_data_source.dart';

class NewsRepositoryImpl extends NewsRepository {
  NewsRepositoryImpl(this._remoteDataSource, this._localDataSource);

  final NewsRemoteDataSource _remoteDataSource;
  final NewsLocalDataSource _localDataSource;

  @override
  Future<Either<BaseError<NewsList>, NewsList>> getNews() => _remoteDataSource.getNews();

  @override
  Future<Either<BaseError<NewsList>, NewsList>> getNewsByCategory() => _remoteDataSource.getNewsByCategory();

  @override
  Future<Either<BaseError<News>, News>> getNewsDetail(int id) => _remoteDataSource.getNewsDetail(id);
}
