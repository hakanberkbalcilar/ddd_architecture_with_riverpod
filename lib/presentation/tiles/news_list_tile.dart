import 'package:flutter/material.dart';
import 'package:riverpod_sample/domain/entities/news/news.dart';

class NewsListTile extends StatelessWidget {
  const NewsListTile(this.news, {super.key, this.onTap});

  final News news;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
          width: 50,
          height: 50,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Image.network(
            news.imageUrl,
            fit: BoxFit.cover,
          )),
      title: Text(
        news.title,
        maxLines: 1,
      ),
      subtitle: Text(
        news.description,
        maxLines: 2,
      ),
    );
  }
}
