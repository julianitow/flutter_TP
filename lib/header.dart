import 'package:flutter/material.dart';
import 'package:flutterapp/choice_item.dart';

class Header extends StatelessWidget {
  List<Widget> bullets;
  Key key;
  Header({this.key, this.bullets}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 50, left: 5),
      child: Wrap(
        spacing: 5,
        runSpacing: 5,
        children: bullets,
      ),
    );
  }

}