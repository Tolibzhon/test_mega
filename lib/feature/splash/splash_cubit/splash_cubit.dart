import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_mega/core/functions/push_router_func.dart';
import 'package:test_mega/routes/mobile_auto_router.gr.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState.initial()) {
    getAuth();
  }

  Future<void> getAuth() async {
    await Future.delayed(const Duration(seconds: 2));

    AppRouting.pushAndPopUntilFunction(BottomNavigatorRoute());
  }
}
