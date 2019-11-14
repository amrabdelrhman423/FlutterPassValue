import 'package:flutter/material.dart';
import 'package:flutterroute/Functions/GlobalState.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomeState();
  }

}
class _HomeState extends State<Home>{
  TextEditingController _name;
  GlobalState _store =GlobalState.instance;
  @override
  void initState() {
    _name=new TextEditingController();
    _store.set('name', '');
    _name.text =_store.get('name');
  }
  onClickbtn(){
    _store.set('name', _name.text);
    Navigator.pushNamed(context, '/Second');
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
            new Text("Hello Home"),
            new TextField(
              decoration: InputDecoration(labelText: "Enter name"),
              controller: _name,
            ),
            new FlatButton(onPressed:onClickbtn, child: Text("Next page"))
          ],
        ),
      ),
    );
  }


}