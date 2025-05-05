import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/model.dart';

Future<List<NewsArticle>> fetchArticles() async {
  final response = await http.get(Uri.parse(
      'https://newsapi.org/v2/everything?q=tesla&from=2025-04-05&sortBy=publishedAt&apiKey=ba3816e79bd4438887166b577e0641a8'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    // print(data);
    final List newsarticle = data['articles'];
    // print(newsarticle);

    return newsarticle.map((json) => NewsArticle.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load articles');
  }
}
