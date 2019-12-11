import 'package:flutter/material.dart';
import 'package:flutter_app/examplenews/state/AppState.dart';

class MainClass extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: NewsContainer()
    );
  }
}