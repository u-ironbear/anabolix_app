import 'package:anabolix_app/ui/views/books_view/books_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BooksView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BooksViewModel>.reactive(
      builder: (context, model, child) => Container(
        child: Center(
          child: Text('Books'),
        ),
      ),
      viewModelBuilder: () => BooksViewModel(),
    );
  }
}
