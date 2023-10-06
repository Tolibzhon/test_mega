import 'package:dio/dio.dart';
import 'package:test_mega/feature/main/data/models/movies_model.dart';
import 'package:test_mega/feature/main/domain/repositories/get_movies_repo.dart';
import 'package:test_mega/server/catch_exception.dart';

class GetMoviesRepoImpl implements GetMoviesRepo {
  GetMoviesRepoImpl({required this.dio});
  final Dio dio;

  @override
  Future<MovieModel> getMoviesRepo(
    int currantPage,
    String seacrhText,
  ) async {
    try {
      final response = await dio.get(
        'v1.2/movie/search',
        queryParameters: {
          'page': currantPage,
          'query': seacrhText,
        },
      );
      return MovieModel.fromJson(response.data);
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
