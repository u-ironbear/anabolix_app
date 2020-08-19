import 'package:anabolix_app/ui/views/cycles_view/cycles_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CyclesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CyclesViewModel>.reactive(
      builder: (context, model, child) => Container(
        child: Center(
          child: Text('Cycles View'),
        ),
      ),
      viewModelBuilder: () => CyclesViewModel(),
    );
  }
}
