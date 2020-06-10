import 'package:flutter/material.dart';
import 'package:flutterapp/choice_item.dart';

class Footer extends StatelessWidget {
  final Function(String) bulletChanged;
  Key key;
  Footer({ this.key, this.bulletChanged }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5),
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
      child: Wrap(
        spacing: 5,
        children: <Widget>[
          Bullet(text: "Cinema", onPressed: () { bulletChanged("Cinema"); } ),
          Bullet(text: "Pétanque", onPressed: () { bulletChanged("Pétanque"); } ),
          Bullet(text: "Fitness", onPressed: () { bulletChanged("Fitness"); } ),
          Bullet(text: "Julien", onPressed: () { bulletChanged("Julien"); } ),
          Bullet(text: "League of Legends", onPressed: () { bulletChanged("League of Legends"); } ),
          Bullet(text: "Basket", onPressed: () { bulletChanged("Basket"); } ),
        ],
      )
    );
  }
}