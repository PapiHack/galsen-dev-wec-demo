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
    try {
      return ArticleModel.resolveList(response.data);
    } catch (e) {
      throw Exception('Error while trying to parse the list of articles !');
    }
  }

  Future<ArticleModel> getById(int articleID) async {
    var response = await this.articleService!.fetchById(articleID);
    try {
      return ArticleModel.fromJson(response.data);
    } catch (e) {
      throw Exception('Error while trying to parse the article #$articleID !');
    }
  }

  Future<ArticleModel> save(ArticleDTO articleDTO) async {
    var response = await this.articleService!.createArticle(articleDTO);
    try {
      return ArticleModel.fromJson(response.data);
    } catch (e) {
      throw Exception('Error while trying to parse the saved article !');
    }
  }
}
