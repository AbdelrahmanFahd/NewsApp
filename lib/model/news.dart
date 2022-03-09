class Articles {
  String? title;
  String? description;
  String? urlToImage;

  Articles({this.title, this.description, this.urlToImage});

  Articles.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    urlToImage = json['urlToImage'];
  }
}

class News {
  List<Articles>? articles;

  News({this.articles});

  // send result of api
  // turn to map and for each make Articles

  News.fromJson(Map<String, dynamic> json) {
    articles =
        (json['articles'] as List).map((e) => Articles.fromJson(e)).toList();
  }
}
