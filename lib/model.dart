class NewsArticle {
  final String? title;
  final String description;
  final String url;
  final String urlToImage;

  final DateTime publishedAt;

  final String sourceName;

  NewsArticle({
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,

     required this.publishedAt,
    required this.sourceName,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      url: json['url'] ?? '',
      urlToImage: json['urlToImage'] ?? '',

      // ✅ CHANGED: Convert the string to DateTime using DateTime.tryParse
      // If the string is invalid or null, fallback to current DateTime
      publishedAt:
          DateTime.tryParse(json['publishedAt'] ?? '') ?? DateTime.now(),

      sourceName: json['source'] != null ? json['source']['name'] ?? '' : '',
    );
  }

  static List<NewsArticle> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => NewsArticle.fromJson(json)).toList();
  }
}
