import 'package:test_mega/feature/main/data/models/movies_model.dart';

abstract class GetMoviesRepo {
  Future<MovieModel> getMoviesRepo(
    int currantPage,
    String seacrhText,
  );
}
