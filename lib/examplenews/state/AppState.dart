import 'package:flutter/material.dart';
import 'package:flutter_app/examplenews/MainClass.dart';
import 'package:flutter_app/examplenews/model/NewsModel.dart';
import 'package:flutter_app/examplenews/remote/RemoteRequest.dart';
import 'package:flutter_app/examplenews/ui/NewsList.dart';
import 'package:flutter_app/exampleone/CustomWidgets.dart';
import 'package:http/http.dart' as http;


class AppState extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Center(
          child: FutureBuilder<NewsModel>(
            future: fetchNews(http.Client()),
            builder: (context, snapshot){
              if(snapshot.hasError) print(snapshot.error);
              return snapshot.hasData
                  ? NewsList(newsList: snapshot.data)
                  : Center(child: CircularProgressIndicator());
            }
          ),
        ),
      );
    }
}

