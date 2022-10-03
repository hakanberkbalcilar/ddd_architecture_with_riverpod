import 'package:riverpod_sample/core/base/model/base_view_model.dart';
import 'package:riverpod_sample/core/extensions/context_extension.dart';
import 'package:riverpod_sample/domain/entities/news/news.dart';
import 'package:riverpod_sample/domain/repositories/news_repository.dart';

class NewsListViewModel extends BaseViewModel {
  NewsListViewModel(this._newsRepository);

  final NewsRepository _newsRepository;

  NewsList newsList = [];

  Future<void> getNews() async {
    final result = await _newsRepository.getNews();

    result.fold((l) => context.showSnackBar(l.toLocalizedString(context)), (r) {
      newsList = r;
      notifyListeners();
    });
  }
}
