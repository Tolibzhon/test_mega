import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mega/core/images/app_images.dart';
import 'package:test_mega/feature/splash/splash_cubit/splash_cubit.dart';
import 'package:test_mega/server/service_locator.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SplashCubit>(
        create: (context) => sl<SplashCubit>(),
        child: BlocBuilder<SplashCubit, SplashState>(
          builder: (context, state) {
            return SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Image.asset(
                    AppImages.imageSplash,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
