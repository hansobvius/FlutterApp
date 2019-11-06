import 'dart:convert';
import 'dart:convert' show json, utf8;
import 'dart:async';
import 'package:flutter_app/examplenews/model/NewsModel.dart';
import 'package:http/http.dart' as http;

//Fetch Data
Future<NewsModel> fetchNews(http.Client client) async {

  const successCode = 200;
  const BASE_URL = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=f452ccae13fd4ab0bb3518bd59adc3ed';

  final response = await client.get(BASE_URL);

  if(response.statusCode == successCode){
//    return parseNews(response.body);
    return NewsModel.fromJson(json.decode(response.body));
  }else{
    throw Exception('Failed');
  }
}


////Parse Json
//List<NewsModel> parseNews(String responseBody) async {
//
////  final response = await json.decode(responseBody).toList();
//
////  final response = await responseBody.transform(utf8.decoder).join();
////  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
////  return parsed.map<NewsModel>((json) => NewsModel.fromJson(json)).toList();
////  return parsed;
////  return response;
//
//  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
//  return parsed.map<NewsModel>((json) => NewsModel.fromJson(json)).toList();
//}

NewsModel parseNews(String responseBody){
  Map obj = jsonDecode(responseBody);
//  var news = NewsModel.fromJson(obj);
//  var seila = news.articles;
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
//  return parsed.map<NewsModel>((json) => NewsModel.fromJson(json));
  return parsed;
}

//NewsModel parseNews(String responseBody){
//  Map<String, dynamic> user = jsonDecode(responseBody);
//  return user;
//}