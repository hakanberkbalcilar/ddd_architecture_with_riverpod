import 'package:dartz/dartz.dart';
import 'package:riverpod_sample/core/base/error/base_error.dart';
import 'package:riverpod_sample/domain/entities/news_category/news_category.dart';

class NewsCategoryRemoteDataSource {
  Future<Either<BaseError<NewsCategoryList>, NewsCategoryList>> getNewsCategories() {
    // TODO: implement getNews
    throw UnimplementedError();
  }
}
