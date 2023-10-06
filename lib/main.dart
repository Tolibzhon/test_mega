import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_mega/core/constants/app_text_constants.dart';
import 'package:test_mega/routes/mobile_auto_router.dart';
import 'package:test_mega/server/service_locator.dart';
import 'package:test_mega/theme/app_theme.dart';

final appRouter = sl<AppRouter>();

void main() async {
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppTextConstants.appTitle,
      theme: AppTheme.appTheme,
      /////Auto route settings
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(appRouter),
      routeInformationProvider: appRouter.routeInfoProvider(),
    );
  }
}
