import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../model/news.dart';
import 'dart:convert';
import 'package:flutter/material.dart';

class NewsViewModel extends ChangeNotifier {
  getData(String category) async {
    final uri = Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=d42603cd8f3d49968d54b4e266012005');
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return News.fromJson(json.decode(response.body));
    }
  }
}
