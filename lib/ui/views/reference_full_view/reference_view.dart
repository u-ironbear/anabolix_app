import 'package:anabolix_app/ui/views/reference_full_view/reference_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ReferenceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReferenceViewModel>.reactive(
      builder: (context, model, child) => Container(
        child: Center(
          child: Text('Reference'),
        ),
      ),
      viewModelBuilder: () => ReferenceViewModel(),
    );
  }
}
