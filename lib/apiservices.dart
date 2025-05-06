import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/apikeys/apikeys.dart';
import 'package:news/model.dart';

Future<List<NewsArticle>> fetchArticles() async {
  final baseUrlapi = Uri.parse(baseUrl);
  final  apikey = newsApiKey;
  final response = await http.get(Uri.parse('$baseUrlapi$apikey'));
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
