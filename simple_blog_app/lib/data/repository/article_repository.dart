import 'package:simple_blog_app/data/data.dart';
import 'package:simple_blog_app/services/services.dart';

class ArticleRepository {
  ArticleService? articleService;
  ArticleRepository({
    this.articleService,
  }) {
    this.articleService = this.articleService ?? ArticleService();
  }

  Future<List<ArticleModel>> getAll() async {
    var response = await this.articleService!.fetchAll();
    return ArticleModel.resolveList(response.data);
  }

  Future<ArticleModel> getById(int articleID) async {
    var response = await this.articleService!.fetchById(articleID);
    return ArticleModel.fromJson(response.data);
  }

  Future<ArticleModel> save(dynamic data) async {
    var response = await this.articleService!.createArticle(data);
    return ArticleModel.fromJson(response.data);
  }
}
