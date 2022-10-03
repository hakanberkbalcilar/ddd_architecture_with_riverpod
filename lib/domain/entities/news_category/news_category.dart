typedef NewsCategoryList = List<NewsCategory>;

abstract class NewsCategory {
  final int id;
  final String title;

  NewsCategory({required this.id, required this.title});
}
