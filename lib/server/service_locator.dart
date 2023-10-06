import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:test_mega/feature/main/data/repo_impls/get_movies_repo_impl.dart';
import 'package:test_mega/feature/main/domain/repositories/get_movies_repo.dart';
import 'package:test_mega/feature/main/domain/use_cases/get_movies_use_case.dart';
import 'package:test_mega/feature/main/presentation/widget/cubit/get_movies_cubit.dart';
import 'package:test_mega/feature/splash/splash_cubit/splash_cubit.dart';
import 'package:test_mega/routes/mobile_auto_router.dart';
import 'package:test_mega/server/dio_settings.dart';

final sl = GetIt.instance;

// ignore: long-method
Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Other Services

  sl.registerLazySingleton<Dio>(() => DioSettings().dio);

  sl.registerSingleton<AppRouter>(AppRouter());

  /// Repository
  sl.registerFactory<GetMoviesRepo>(() => GetMoviesRepoImpl(dio: sl()));

  /// UseCases
  sl.registerFactory<GetMoviesUseCase>(() => GetMoviesUseCase(repo: sl()));

  /// BLoCs / Cubits

  sl.registerFactory<SplashCubit>(() => SplashCubit());
  sl.registerFactory<GetMoviesCubit>(() => GetMoviesCubit(useCase: sl()));
}
