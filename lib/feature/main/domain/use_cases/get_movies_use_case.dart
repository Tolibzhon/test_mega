import 'package:test_mega/feature/main/data/models/movies_model.dart';
import 'package:test_mega/feature/main/domain/repositories/get_movies_repo.dart';

class GetMoviesUseCase {
  GetMoviesUseCase({
    required this.repo,
  });
  final GetMoviesRepo repo;

  List<MovieDetailModel> movies = [];

  Future<MovieModel> getMovies(
    int currantPage,
    String seacrhText,
  ) async {
    try {
      final result = await repo.getMoviesRepo(currantPage, seacrhText);
      movies.addAll(result.movies);

      return result.copyWith(movies: List.from(movies));
    } catch (e) {
      rethrow;
    }
  }
}
