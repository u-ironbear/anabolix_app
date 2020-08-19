import 'package:anabolix_app/ui/views/news_view/news_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class NewsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewsViewModel>.reactive(
      builder: (context, model, child) => Container(
        child: Center(
          child: Text('News View'),
        ),
      ),
      viewModelBuilder: () => NewsViewModel(),
    );
  }
}
