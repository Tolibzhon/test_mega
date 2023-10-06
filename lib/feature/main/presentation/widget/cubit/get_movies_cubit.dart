import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_mega/feature/main/data/models/movies_model.dart';
import 'package:test_mega/feature/main/domain/use_cases/get_movies_use_case.dart';

part 'get_movies_cubit.freezed.dart';

class GetMoviesCubit extends Cubit<GetMoviesState> {
  GetMoviesCubit({required this.useCase})
      : super(const GetMoviesState.loading()) {
    getMovies();
  }
  final GetMoviesUseCase useCase;

  int currantPage = 1;
  String seacrhText = '';

  int allPages = 0;
  late ScrollController scrollController =
      ScrollController(initialScrollOffset: 0)..addListener(_scrollListener);

  Future<void> getMovies() async {
    try {
      final result = await useCase.getMovies(currantPage, seacrhText);
      allPages = result.pages;
      emit(GetMoviesState.success(result));
    } catch (e) {
      emit(GetMoviesState.error(e.toString()));
    }
  }

  void searchByName({String? name}) {
    if (name != null) {
      seacrhText = name;
    }
    useCase.movies.clear();
    currantPage = 1;
    if (scrollController.hasClients) {
      scrollController.jumpTo(0);
    }

    getMovies();
  }

  _scrollListener() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      if (allPages != currantPage) {
        currantPage = currantPage += 1;
        getMovies();
      }
    }
  }

  @override
  Future<void> close() {
    scrollController.dispose();
    return super.close();
  }
}

@freezed
class GetMoviesState with _$GetMoviesState {
  const factory GetMoviesState.loading() = _Loading;
  const factory GetMoviesState.error(String error) = _Error;
  const factory GetMoviesState.success(MovieModel model) = _Success;
}
