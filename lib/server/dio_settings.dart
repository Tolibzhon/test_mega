import 'package:dio/dio.dart';
import 'package:test_mega/core/constants/app_text_constants.dart';

class DioSettings {
  DioSettings() {
    initialSettings();
  }

  Dio dio = Dio(
    BaseOptions(
      baseUrl: AppTextConstants.mainServer,
      responseType: ResponseType.json,
      contentType: "application/json; charset=utf-8",
      connectTimeout: const Duration(seconds: 25),
      receiveTimeout: const Duration(seconds: 25),
    ),
  );
  void initialSettings() {
    final interceptors = dio.interceptors;
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.headers['X-API-KEY'] = AppTextConstants.token;

          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          return handler.next(e);
        },
      ),
    );
    interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      ),
    );
  }
}
