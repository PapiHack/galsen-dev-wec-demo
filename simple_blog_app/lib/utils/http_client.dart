import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:simple_blog_app/utils/utils.dart';

class HttpClient {
  Dio? client;
  String? baseURL;

  HttpClient({
    this.client,
    this.baseURL,
  }) {
    this.baseURL = this.baseURL ??
        '${EnvironmentConfig.getEnv('ROOT_API_URL')}${EnvironmentConfig.getEnv('API_PREFIX')}';
    this.client = this.client ?? Dio(BaseOptions(baseUrl: baseURL!));
  }

  Future<Response<dynamic>> get(
    String url, {
    Map<String, dynamic>? queries,
    Options? options,
  }) async {
    String resourceUrl = '${this.baseURL}/$url';
    try {
      final response = await this.client!.get(
            resourceUrl,
            queryParameters: queries,
            options: options,
          );
      return response;
    } on SocketException {
      throw Exception('No Internet connection !');
    }
  }

  Future<Response<dynamic>> post(
    String url,
    Map<String, dynamic> data,
  ) async {
    String resourceUrl = '${this.baseURL}/$url';
    try {
      final response = await this.client!.post(
            resourceUrl,
            data: jsonEncode(data),
          );
      return response;
    } on SocketException {
      throw Exception('No Internet connection !');
    }
  }
}
