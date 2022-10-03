import 'package:dartz/dartz.dart';
import 'package:riverpod_sample/core/base/error/base_error.dart';
import 'package:riverpod_sample/domain/entities/news_category/news_category.dart';

abstract class NewsCategoryRepository {
  Future<Either<BaseError<NewsCategoryList>, NewsCategoryList>> getNewsCategories();
}
