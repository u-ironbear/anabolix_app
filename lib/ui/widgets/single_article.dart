import 'package:anabolix_app/models/article_model.dart';
import 'package:flutter/material.dart';

class SingleArticle extends StatelessWidget {
  final ArticleModel article;

  const SingleArticle({
    Key key,
    this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appbarTitle'),
      ),
      body: Container(),
    );
  }
}
