import 'package:flutter/material.dart';
import 'package:flutter_app/exampletwo/CustomWidget.dart';

class MainTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(),
        body: Text('sasasasa'),
      )
    );
  }
}

class RowContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}