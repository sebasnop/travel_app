import 'package:flutter/material.dart';

class SearchTrips extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
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
        )
    );
  }

}