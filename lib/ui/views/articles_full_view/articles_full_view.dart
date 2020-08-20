import 'package:anabolix_app/ui/views/articles_full_view/articles_full_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ArticlesFullView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ArticlesFullViewModel>.reactive(
      builder: (context, model, child) => Scaffold(),
      viewModelBuilder: () => ArticlesFullViewModel(),
    );
  }
}
