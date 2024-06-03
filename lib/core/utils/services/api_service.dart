import 'package:doc_doc/core/errors/dio_exceptions.dart';
import 'package:doc_doc/core/utils/logger.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.example.com',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    ),
  );

  Future<dynamic> get(String endpoint) async {
    try {
      final response = await _dio.get(endpoint);
      AppLogger.log(
          'GET request to $endpoint succeeded with response: ${response.data}');
      return response.data;
    } on DioException catch (e) {
      ErrorHandler.handleDioException(e);
      AppLogger.error(
          'GET request to $endpoint failed with error: ${e.message}', e);
    }
  }

  Future<dynamic> post(String endpoint, dynamic data) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      AppLogger.log(
          'POST request to $endpoint succeeded with response: ${response.data}');
      return response.data;
    } on DioException catch (e) {
      ErrorHandler.handleDioException(e);
      AppLogger.error(
          'POST request to $endpoint failed with error: ${e.message}', e);
    }
  }
}
