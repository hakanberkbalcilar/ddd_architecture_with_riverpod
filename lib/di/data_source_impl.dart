import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/infrastructure/data_sources/news/news_local_data_source.dart';
import 'package:riverpod_sample/infrastructure/data_sources/news/news_remote_data_source.dart';
import 'package:riverpod_sample/infrastructure/data_sources/news_category/news_category_local_data_source.dart';
import 'package:riverpod_sample/infrastructure/data_sources/news_category/news_category_remote_data_source.dart';

// News
final newsRemoteDataSource = Provider((ref) => NewsRemoteDataSource());
final newsLocalDataSource = Provider((ref) => NewsLocalDataSource());

// NewsCategory
final newsCategoryRemoteDataSource = Provider((ref) => NewsCategoryRemoteDataSource());
final newsCategoryLocalDataSource = Provider((ref) => NewsCategoryLocalDataSource());
