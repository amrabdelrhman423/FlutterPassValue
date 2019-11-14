import 'package:flutter/material.dart';
import 'GUI/Home.dart';
import 'GUI/Second.dart';
import 'GUI/Thired.dart';

void main(){
  runApp(new MaterialApp(
    home:  Myapp(),
    title: "Hello Route",
  ));
}


class Myapp extends StatelessWidget{
  TextEditingController _name;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "ROUTE",
      routes: <String,WidgetBuilder> {
    '/Home': (BuildContext context)=>new Home(),
    '/Second': (BuildContext context)=>new Second(),
    '/Thired': (BuildContext context)=>new Thired('Test'),
      },
      home: new Home(),
    );
  }
}