import 'package:flutter/material.dart';

class DataApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(
           title: Text('Flutter Data Persistence'),
         centerTitle: true,
         backgroundColor: Colors.cyan[900],
       ),
       body: Container(
         child: getTextField(),
       )
     )
    );
  }
}

class ValuePesistence extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return null;
  }
}


class AppState extends State{

  @override
  void setState(fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return null;
  }

}

TextField getTextField(){
  return TextField(
    obscureText: true,
    decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'value'
    ),
  );
}