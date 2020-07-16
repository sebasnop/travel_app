import 'package:flutter/material.dart';
import 'package:viajes_app/profile_widgets/profile_card_image.dart';

class ProfileCardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(
        top: 260
      ),
      child: ListView(
        padding: EdgeInsets.only(
          left: 12,
          right: 12,
          top: 20
        ),
        children: <Widget>[
          ProfileCardImage("assets/img/cerezo.jpg", "Osaka Park", "Relaxation place, Bautiful trees, Family space & Picture integration activities.", 157324),
          ProfileCardImage("assets/img/mountain.jpg", "Knuckles Mountains Range", "Hiking, Water tall hunting, Natural bath, Scenery & Photography.", 1087629),
          ProfileCardImage("assets/img/medellin.jpg", "Medellin City", "Gastronomy, Culture, Hiking, Living & Discovering new tech things.", 28050),
          ProfileCardImage("assets/img/barcelona.jpg", "Barcelona City", "Beach, Sports, Camp Nou visits, Science & Tech fairs.", 48773),
        ],
      ),
    );

  }

}