import 'package:flutter/material.dart';

class MainTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 100.00,
        child: InkWell(
          borderRadius: BorderRadius.circular(10.0),
          highlightColor: Colors.lightBlue,
        ),
      ),
    );
  }

}