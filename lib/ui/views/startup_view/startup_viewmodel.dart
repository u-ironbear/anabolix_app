import 'package:anabolix_app/app/locator.dart';
import 'package:anabolix_app/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  NavigationService _navigationService = locator<NavigationService>();

  void navigateToBottomBarView() {
    _navigationService.navigateTo(Routes.bottomBarView);
  }
}
