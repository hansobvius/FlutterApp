import 'package:flutter/material.dart';
import 'package:flutter_app/examplenews/model/NewsModel.dart';
import 'package:flutter_app/exampleone/Util.dart';

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
//        return Image.network(newsList.articles[index].urlToImage);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Image(
                  width: double.maxFinite,
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(
                    newsList.articles[index].urlToImage,
                  )
                )
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  newsList.articles[index].description
                ),
              )
            )
          ],
        );
      },
    );
  }
}

