import 'package:flutter/material.dart';
import 'package:test_mega/theme/app_colors.dart';

class AppTheme {
  static final appTheme = ThemeData(
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
        .copyWith(background: AppColors.color0B1E2DBg),
  );
}
