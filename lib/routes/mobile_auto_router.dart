import 'package:auto_route/auto_route.dart';
import 'package:test_mega/routes/mobile_auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: BottomNavigatorRoute.page),
        AutoRoute(page: DetaileRoute.page),
      ];
}
