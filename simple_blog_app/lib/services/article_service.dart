import 'package:dio/dio.dart';
import 'package:simple_blog_app/data/data.dart';
import 'package:simple_blog_app/utils/utils.dart';

class ArticleService {
  final String? endpoint;
  HttpClient? httpClient;

  ArticleService({
    this.endpoint = 'articles',
    this.httpClient,
  }) {
    this.httpClient = this.httpClient ?? HttpClient();
  }

  Future<Response<dynamic>> fetchAll() async =>
      await this.httpClient!.get(this.endpoint!);

  Future<Response<dynamic>> fetchById(int articleID) async =>
      await this.httpClient!.get('${this.endpoint}/$articleID');

  Future<Response<dynamic>> createArticle(ArticleDTO articleDTO) async =>
      await this.httpClient!.post(this.endpoint!, articleDTO.toJson());
}
