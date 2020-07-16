import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:viajes_app/profile_widgets/profile_buttons.dart';
import 'package:viajes_app/profile_widgets/profile_card_image_list.dart';
import 'package:viajes_app/profile_widgets/profile_top.dart';
import 'package:viajes_app/profile_widgets/profile_user_details.dart';

class GradientBackProfile extends StatelessWidget {

  String title = "Profile";
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
        height: 380,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFF516CD7),
              Color(0xFF564CB7)
            ],
                begin: FractionalOffset(0.6, 0),
                end: FractionalOffset(1.2, 0.5),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp
            )
        ),
        child: Column(
          children: <Widget>[
            ProfileTop(title),
            ProfileUserDetails("assets/img/girl.jpg","Agata Valencia","example@example.com"),
            ProfileButtons()
          ],
        )
    );
  }
  
}