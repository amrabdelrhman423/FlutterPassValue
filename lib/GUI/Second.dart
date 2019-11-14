import 'package:flutter/material.dart';
import 'package:flutterroute/Functions/GlobalState.dart';
import 'package:flutterroute/GUI/Thired.dart';


class Second extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _SecondState();
  }

}
class _SecondState extends State<Second> {
  GlobalState _store =GlobalState.instance;
  TextEditingController _name;
  onClickSendValue(){
    Navigator.push(context,
        new MaterialPageRoute(builder: (BuildContext context)=> new Thired(_name.text) ) );
  }
  @override
  void initState() {
    _name=new TextEditingController();
  }
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
            new Text("Hello Second page"),
            new Text("your name is ${_store.get('name')}"),
            new TextField(
              decoration: InputDecoration(labelText: "Enter name"),
              controller: _name,
            ),
            new FlatButton(onPressed: onClickSendValue , child: Text("Next page")),
            new FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("previous page"))
          ],
        ),
      ),
    );
  }
}
