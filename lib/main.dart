import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/choice_item.dart';
import 'package:flutterapp/header.dart';
import 'package:flutterapp/footer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> headerBullets = new List<Widget>();
  List<String> textSelected = new List<String>();

  void bulletChanged(text) {
    print(textSelected);
    if(textSelected.contains("text1")){
      headerBullets.removeAt(textSelected.indexOf("text1"));
      textSelected.removeAt(textSelected.indexOf("text1"));
    }
    if(textSelected.contains(text)){
      int index = textSelected.indexOf(text);
      headerBullets.removeAt(index);
      textSelected.remove(text);
      if(headerBullets.length == 1){
        headerBullets.add(Text("Cliquez sur les choix en dessous !", style: TextStyle(fontSize: 25, color: Colors.white)));
        textSelected.add("text1");
      }
    } else {
      headerBullets.add(HeaderBullet(text: text));
      textSelected.add(text);
    }
    print(textSelected);
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    if(headerBullets.isEmpty && textSelected.isEmpty){
      headerBullets.add(Text("Vos choix:                                            ", style: TextStyle(fontSize: 35, color: Colors.white)));
      textSelected.add("PERMANENT");
      headerBullets.add(Text("Cliquez sur les choix en dessous !", style: TextStyle(fontSize: 25, color: Colors.white)));
      textSelected.add("text1");
    }
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Header(
                  bullets: headerBullets,
                ),
              ),
              Expanded(
                flex: 1,
                child: Footer(
                  bulletChanged: bulletChanged,
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
