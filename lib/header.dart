import 'package:flutter/material.dart';
import 'package:flutterapp/choice_item.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  List<Widget> _bullets = List.generate(1, (_) => Text("Cliquez sur les choix en dessous !", style: TextStyle(color: Colors.white, fontSize: 20)));

  void updateBullets(List<Widget> bullets) {
    if(bullets.length == 0){
      this._bullets.add(Text("Cliquez sur les choix en dessous !", style: TextStyle(color: Colors.white, fontSize: 20)));
    } else {
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.only(top: 50.0, left: 10.0),
            color: Colors.deepPurpleAccent,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Vos choix:", style: TextStyle(color: Colors.white, fontSize: 30)),
                Column(
                  children: this._bullets,
                )
              ],
            ),
          ),
        );
  }
}