// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:test_mega/feature/main/data/models/movies_model.dart' as _i6;
import 'package:test_mega/feature/main/presentation/detaile/detaile_screen.dart'
    as _i2;
import 'package:test_mega/feature/splash/splash_screen.dart' as _i3;
import 'package:test_mega/widgets/buttom_navigator.dart' as _i1;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    BottomNavigatorRoute.name: (routeData) {
      final args = routeData.argsAs<BottomNavigatorRouteArgs>(
          orElse: () => const BottomNavigatorRouteArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.BottomNavigatorScreen(
          key: args.key,
          index: args.index,
        ),
      );
    },
    DetaileRoute.name: (routeData) {
      final args = routeData.argsAs<DetaileRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetaileScreen(
          key: args.key,
          model: args.model,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.BottomNavigatorScreen]
class BottomNavigatorRoute extends _i4.PageRouteInfo<BottomNavigatorRouteArgs> {
  BottomNavigatorRoute({
    _i5.Key? key,
    int index = 0,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          BottomNavigatorRoute.name,
          args: BottomNavigatorRouteArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'BottomNavigatorRoute';

  static const _i4.PageInfo<BottomNavigatorRouteArgs> page =
      _i4.PageInfo<BottomNavigatorRouteArgs>(name);
}

class BottomNavigatorRouteArgs {
  const BottomNavigatorRouteArgs({
    this.key,
    this.index = 0,
  });

  final _i5.Key? key;

  final int index;

  @override
  String toString() {
    return 'BottomNavigatorRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i2.DetaileScreen]
class DetaileRoute extends _i4.PageRouteInfo<DetaileRouteArgs> {
  DetaileRoute({
    _i5.Key? key,
    required _i6.MovieDetailModel model,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          DetaileRoute.name,
          args: DetaileRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'DetaileRoute';

  static const _i4.PageInfo<DetaileRouteArgs> page =
      _i4.PageInfo<DetaileRouteArgs>(name);
}

class DetaileRouteArgs {
  const DetaileRouteArgs({
    this.key,
    required this.model,
  });

  final _i5.Key? key;

  final _i6.MovieDetailModel model;

  @override
  String toString() {
    return 'DetaileRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i3.SplashScreen]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
