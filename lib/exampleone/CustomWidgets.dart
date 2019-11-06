import 'package:flutter/material.dart';
import 'package:flutter_app/exampleone/Util.dart';

Widget CustomTextView(String text){
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: textSize(),
      fontWeight: textWeight(),
      color: Colors.blueAccent
    )
  );
}

Widget CustomAppBar(){
  return AppBar(
    title: Text('Flutter App'),
    backgroundColor: Colors.black87,
  );
}

