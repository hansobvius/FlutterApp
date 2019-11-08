import 'package:flutter/material.dart';
import 'BlueBox.dart';

Widget CustomAppBar(){
  return AppBar(
    title: Text('Flutter App'),
    backgroundColor: Colors.black87,
  );
}


BoxDecoration MyBoxDecoration(){
  return BoxDecoration(
    color: Colors.blueGrey,
    borderRadius: new BorderRadius.only(
        topLeft: new Radius.circular(0.0),
        topRight:  new Radius.circular(0.0),
        bottomLeft:  new Radius.circular(20.0),
        bottomRight:  new Radius.circular(20.0)
    )
  );
}

Row MainRow(){
  return Row(
      children: [
        BlueBox(),
        BlueBox(),
        BlueBox()
      ]
  );
}