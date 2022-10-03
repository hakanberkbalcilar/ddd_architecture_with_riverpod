import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/di/data_source_impl.dart';
import 'package:riverpod_sample/infrastructure/repositories/news_category_repository_impl.dart';
import 'package:riverpod_sample/infrastructure/repositories/news_repository_impl.dart';

// News
final newsRepository = Provider((ref) => NewsRepositoryImpl(ref.read(newsRemoteDataSource), ref.read(newsLocalDataSource)));

// NewsCategory
final newsCategoryRepository =
    Provider((ref) => NewsCategoryRepositoryImpl(ref.read(newsCategoryRemoteDataSource), ref.read(newsCategoryLocalDataSource)));
