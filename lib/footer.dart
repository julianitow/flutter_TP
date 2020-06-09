import 'package:flutter/material.dart';
import 'package:flutterapp/choice_item.dart';
import 'package:flutterapp/header.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  final List<Widget> bullets = List.generate(12, ( _ ) => Bullet("test"));

  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        flex: 1,
        child: Container(
          color: Colors.grey,
          width: MediaQuery.of(context).size.width,
          child: Wrap(
              alignment: WrapAlignment.start,
              direction: Axis.horizontal,
              runSpacing: 0,
              spacing: 5,
              children: bullets
          ),
        ),
      );
  }
}