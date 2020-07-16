import 'package:flutter/material.dart';

import '../floating_action_button_green.dart';

class ProfileCardDetails extends StatelessWidget {

  String name;
  String description;
  int steps;

  ProfileCardDetails(this.name, this.description, this.steps);

  @override
  Widget build(BuildContext context) {

    final nameText = Text(
      name,
      maxLines: 1,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 17
      ),
    );

    final descriptionText = Container(
      child: Text(
      description,
      maxLines: 2,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontWeight: FontWeight.w200,
          fontSize: 10
      ),
    ),
      padding: EdgeInsets.only(
        top: 4,
        bottom: 4
      ),
    );

    final stepsText = Text(
      "Steps   ${steps.toString()}",
      maxLines: 1,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
          color: Colors.amber
      ),
    );

    final card = Container(
      height: 100,
      width: 250,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
                offset: Offset(0, 5)
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          nameText,
          descriptionText,
          stepsText
        ],
      ),
    );

    return Stack(
      alignment: Alignment(0.8,1.1),
      children: <Widget>[
      card,
      FloatingActionButtonGreen()
    ],
    );
  }

}