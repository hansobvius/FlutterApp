//News Models
class NewsModel{

  final String status;
  final int totalResults;
  final List<NewsArticles> articles;

  NewsModel({this.status, this.totalResults, this.articles});

  factory NewsModel.fromJson(Map<String, dynamic> json){

    var articleList = json['articles'] as List;
    List<NewsArticles> articlesArray = articleList.map((i) => NewsArticles.fromJson(i)).toList();

    return NewsModel(
        status: json['status'],
        totalResults: json['totalResults'],
        articles: articlesArray
    );
  }
}

class NewsArticles{

  final NewsSource source;
  final String author;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  NewsArticles({this.source, this.author, this.description, this.url, this.urlToImage, this.publishedAt, this.content});

  factory NewsArticles.fromJson(Map<String, dynamic> json){

    var newsSource = NewsSource.fromJson(json['source']);

    return NewsArticles(
      source: newsSource,
      author: json['author'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content']
    );
  }
}

class NewsSource{

  final String id;
  final String name;

  NewsSource({this.id, this.name});

  factory NewsSource.fromJson(Map<String, dynamic> json){
    return NewsSource(
      id: json['id'],
      name: json['name']
    );
  }
}
