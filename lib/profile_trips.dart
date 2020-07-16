import 'package:flutter/material.dart';
import 'package:viajes_app/profile_widgets/gradient_back_profile.dart';
import 'package:viajes_app/profile_widgets/profile_card_image_list.dart';

class ProfileTrips extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack (
      children: <Widget>[
        GradientBackProfile(),
        ProfileCardImageList()
      ],
    );
  }

}