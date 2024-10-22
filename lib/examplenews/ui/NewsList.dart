import 'package:flutter/material.dart';
import 'package:flutter_app/examplenews/model/NewsModel.dart';

class NewsList extends StatelessWidget{

  static int GRID_COUNT = 1;

  final NewsModel newsList;

  NewsList({this.newsList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: GRID_COUNT
      ),
      itemCount: newsList.articles.length,
      itemBuilder: (context, index){
        return Image.network(newsList.articles[index].urlToImage);
      },
    );
  }
}