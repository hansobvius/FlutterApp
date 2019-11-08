import 'package:flutter/cupertino.dart';

import 'CustomWidget.dart';

class BlueBox extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: MyBoxDecoration()
    );
  }
}

//class BlueBox extends StatefulWidget{
//
//  final int intValue;
//
//  const BlueBox({Key key, this.intValue}) : super(key: key);
//
//  @override
//  State<StatefulWidget> createState() {
//    return Container(
//      width: 50.0,
//      height: 50.0,
//      decoration: MyBoxDecoration()
//    );
//  }
//}