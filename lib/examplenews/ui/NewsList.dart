import 'package:flutter/material.dart';
import 'package:flutter_app/examplenews/model/NewsModel.dart';

class NewsList extends StatelessWidget{

  final NewsModel newsList;

  NewsList({this.newsList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2
      ),
      itemCount: newsList.articles.length,
      itemBuilder: (context, index){
        return Image.network(newsList.articles[index].urlToImage);
      },
    );
  }

}