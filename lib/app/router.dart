import 'package:anabolix_app/ui/views/articles_full_view/articles_full_view.dart';
import 'package:anabolix_app/ui/views/bottom_bar_view/bottom_bar_view.dart';
import 'package:anabolix_app/ui/views/chat_view/chat_view.dart';
import 'package:anabolix_app/ui/views/startup_view/startup_view.dart';
import 'package:anabolix_app/ui/widgets/single_article.dart';
import 'package:anabolix_app/ui/widgets/single_brand.dart';
import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: StartupView, initial: true),
  MaterialRoute(page: BottomBarView),
  MaterialRoute(page: ChatView),
  MaterialRoute(page: ArticlesFullView),
  MaterialRoute(page: SingleArticle),
  MaterialRoute(page: SingleBrand),
])
class $Router {}
