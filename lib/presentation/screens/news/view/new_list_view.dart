import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/di/repository_impl.dart';
import 'package:riverpod_sample/presentation/screens/news/view_model/news_list_view_model.dart';
import 'package:riverpod_sample/presentation/tiles/news_list_tile.dart';

final _newsListViewModel = ChangeNotifierProvider((ref) => NewsListViewModel(ref.read(newsRepository)));

class NewsListView extends ConsumerWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(_newsListViewModel);
    final newsList = viewModel.newsList;
    return RefreshIndicator(
        onRefresh: viewModel.getNews,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          itemCount: newsList.length,
          separatorBuilder: (context, index) => const SizedBox(height: 15),
          itemBuilder: (context, index) {
            final news = newsList[index];
            return NewsListTile(
              news,
              onTap: () {},
            );
          },
        ));
  }
}
