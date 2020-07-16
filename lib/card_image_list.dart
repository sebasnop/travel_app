import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/santamarta_4.jpg"),
          CardImage("assets/img/santamarta_3.jpg"),
          CardImage("assets/img/santamarta_2.jpg"),
          CardImage("assets/img/santamarta_1.jpg"),
        ],
      ),
    );
    
  }

}