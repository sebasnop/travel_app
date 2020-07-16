import 'package:flutter/material.dart';
import 'package:viajes_app/floating_action_button_green.dart';

class CardImage extends StatelessWidget {

  String pathImage1;
  String pathImage2;
  String pathImage3;
  String pathImage4;

  CardImage(this.pathImage1);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: 350,
      width: 250,
      margin: EdgeInsets.only(
        top: 80,
        left: 20
      ),

      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage1)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0, 7)
          )
        ]
      ),

    );

    final finalCard = Stack(
      alignment: Alignment(0.9,1.1),
      children: <Widget>[
        card,
        FloatingActionButtonGreen()
      ],
    );

    return finalCard;
  }

}