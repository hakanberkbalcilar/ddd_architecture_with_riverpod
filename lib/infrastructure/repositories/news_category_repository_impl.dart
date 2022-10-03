import 'package:riverpod_sample/domain/entities/news_category/news_category.dart';
import 'package:riverpod_sample/core/base/error/base_error.dart';
import 'package:dartz/dartz.dart';
import 'package:riverpod_sample/domain/repositories/news_category_repository.dart';
import 'package:riverpod_sample/infrastructure/data_sources/news_category/news_category_local_data_source.dart';
import 'package:riverpod_sample/infrastructure/data_sources/news_category/news_category_remote_data_source.dart';

class NewsCategoryRepositoryImpl extends NewsCategoryRepository {
  NewsCategoryRepositoryImpl(this._remoteDataSource, this._localDataSource);

  final NewsCategoryRemoteDataSource _remoteDataSource;
  final NewsCategoryLocalDataSource _localDataSource;

  @override
  Future<Either<BaseError<NewsCategoryList>, NewsCategoryList>> getNewsCategories() => _remoteDataSource.getNewsCategories();
}
