import 'package:auto_route/auto_route.dart';
import 'package:test_mega/routes/mobile_auto_router.dart';
import 'package:test_mega/server/service_locator.dart';

class AppRouting {
  static pushFunction(PageRouteInfo<dynamic> route) {
    sl<AppRouter>().push(route);
  }

  static pushAndPopUntilFunction(PageRouteInfo<dynamic> route) {
    sl<AppRouter>().pushAndPopUntil(
      route,
      predicate: (route) => false,
    );
  }
}
