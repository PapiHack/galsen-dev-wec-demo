class ArticleModel {
  final int id;
  final String title;
  final String content;
  final String author;
  final DateTime createdAt;
  final DateTime updatedAt;

  ArticleModel({
    required this.id,
    required this.title,
    required this.content,
    required this.author,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        id: json['id'],
        title: json['title'],
        content: json['content'],
        author: json['author'],
        createdAt: DateTime.parse(json['createdAt']),
        updatedAt: DateTime.parse(json['updatedAt']),
      );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'content': content,
    'author': author,
    'createdAt': createdAt,
    'updatedAt': updatedAt,
  };

  static List<ArticleModel> resolveList(List<dynamic> data) =>
      data.map((item) => ArticleModel.fromJson(item)).toList();
}

class ArticleDTO {
  String? title;
  String? content;
  String? author;

  ArticleDTO({
    this.title,
    this.content,
    this.author,
  });

  Map<String, dynamic> toJson() => {
    'title': title,
    'content': content,
    'author': author,
  };
}
