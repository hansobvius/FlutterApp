import 'package:flutter/material.dart';
import 'package:flutter_app/exampleone/HelloRectangule.dart';

import 'CustomWidgets.dart';

class MainOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(),
        backgroundColor: Colors.blueAccent,
        body: HelloRectangule()
      ),
    );
  }
}