import 'package:anabolix_app/ui/shared/constants.dart';
import 'package:anabolix_app/ui/shared/ui_helpers.dart';
import 'package:anabolix_app/ui/views/startup_view/startup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                './assets/images/guru_project.png',
                height: 120,
              ),
              verticalSpaceMedium,
              Text(
                'guruproject.net',
                style: kLogoTextDark,
              ),
              verticalSpaceMassive,
              RaisedButton(
                padding: EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                onPressed: model.navigateToBottomBarView,
                child: Text('Продолжить'),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
