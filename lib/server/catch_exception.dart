import 'package:dio/dio.dart';

class CatchException {
  CatchException({required this.message});
  final String message;

  static CatchException convertException(dynamic error) {
    if (error is DioException) {
      if (error.type == DioExceptionType.connectionTimeout) {
        return CatchException(message: 'Ошибка подключения');
      } else if (error.type == DioExceptionType.receiveTimeout) {
        return CatchException(message: 'Ошибка подключения');
      } else if (error.response == null) {
        return CatchException(message: 'Нет интернет соединения');
      } else if (error.response!.statusCode == 401) {
        return CatchException(message: error.response!.data['message']);
      } else if (error.response!.statusCode == 405) {
        return CatchException(message: 'Произошла системная ошибка');
      } else if (error.response!.statusCode == 400) {
        return CatchException(message: error.response!.data['message']);
      } else if (error.response!.statusCode == 409) {
        return CatchException(message: error.response!.data['message']);
      } else if (error.response!.statusCode == 500) {
        return CatchException(message: error.response!.data['message']);
      } else {
        return CatchException(message: 'Произошла системная ошибка');
      }
    }
    if (error is CatchException) {
      return error;
    } else {
      return CatchException(message: 'Произошла системная ошибка');
    }
  }
}
