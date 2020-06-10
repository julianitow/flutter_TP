import 'package:flutter/material.dart';
import 'package:flutterapp/header.dart';


class Bullet extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  const Bullet({Key key, this.text, this.onPressed}) : super(key: key);
  @override
  _BulletState createState() => _BulletState();
}

class _BulletState extends State<Bullet> {
  Color _color = Colors.grey;
  void _updateColor() {
    setState(() {
      _color = _color == Colors.grey ? Colors.yellow : Colors.grey;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(10.0),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.7,
      ),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(
            color: this._color
          )
        ),
        color: this._color,
        child: Text(widget.text,
            style: TextStyle(color: Colors.black)
        ),
        onPressed: () {
        _updateColor();
        widget.onPressed();

      },
      )
    );
  }
}

class HeaderBullet extends StatefulWidget {
  String text;
  Key key;
  HeaderBullet({this.key, this.text}): super(key: key);
  @override
  _HeaderBulletState createState() => _HeaderBulletState();
}

class _HeaderBulletState extends State<HeaderBullet>{
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blue
        ),
      child: Text(widget.text),
    );
  }
}