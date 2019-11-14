import 'package:flutter/material.dart';


class Thired extends StatefulWidget{
  String name;
  Thired(this.name);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ThiredState(name);
  }

}
class _ThiredState extends State<Thired> {
  String name;
  _ThiredState(this.name);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Navigation"),
      ),
      body: new Container(
        padding: EdgeInsets.all(33.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Hello Thired page"),
            new Text("Your name is $name", style:new TextStyle(fontSize: 30.0),),
            new FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("previous page"))
          ],
        ),
      ),
    );
  }
}
