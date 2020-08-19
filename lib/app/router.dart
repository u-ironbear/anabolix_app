import 'package:anabolix_app/ui/views/bottom_bar_view/bottom_bar_view.dart';
import 'package:anabolix_app/ui/views/startup_view/startup_view.dart';
import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: StartupView, initial: true),
  MaterialRoute(page: BottomBarView),
])
class $Router {}
