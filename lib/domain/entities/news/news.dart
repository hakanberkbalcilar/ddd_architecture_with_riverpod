typedef NewsList = List<News>;

abstract class News {
  final int id;
  final int categoryId;
  final String imageUrl;
  final String title;
  final String description;

  News({required this.id, required this.categoryId, required this.imageUrl, required this.title, required this.description});
}
