import 'package:flutter/material.dart';

import 'CustomWidgets.dart';
import 'Util.dart';

class HelloRectangule extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.black87,
        height: textHeight(),
        width: textWidth(),
        child: Center(
            child: CustomTextView(text())
        ),
      ),
    );
  }
}

