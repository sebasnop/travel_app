import 'package:flutter/material.dart';
import 'package:viajes_app/floating_action_button_green.dart';
import 'package:viajes_app/profile_widgets/profile_card_details.dart';

class ProfileCardImage extends StatelessWidget {

  String pathImage;
  String name;
  String description;
  int steps;

  ProfileCardImage(this.pathImage, this.name, this.description, this.steps);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: 200,
      width: 500,
      margin: EdgeInsets.only(
          bottom: 75
      ),

      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          ),
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

    );

    return Stack(
      alignment: Alignment(0,0.7),
      children: <Widget>[
        card,
        ProfileCardDetails(name, description, steps)
      ],
    );
  }

}