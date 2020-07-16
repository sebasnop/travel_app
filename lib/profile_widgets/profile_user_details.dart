import 'package:flutter/material.dart';

class ProfileUserDetails extends StatelessWidget {

  String pathImage ;
  String name;
  String email;

  ProfileUserDetails(this.pathImage, this.name, this.email);

  @override
  Widget build(BuildContext context) {

    final photo = Container (
      margin: EdgeInsets.only(
          top: 20,
          left: 20,
          bottom: 10
      ),

      width: 80,
      height: 80,

      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: Colors.white,
              width: 1.5
          ),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage),
          )
      ),

    );

    final userName = Container(
      margin: EdgeInsets.only(
          left: 20
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 17,
            fontFamily: "Lato",
            color: Colors.white,
            fontWeight: FontWeight.w700
        ),
      ),

    );

    final userEmail = Container(
      margin: EdgeInsets.only(
          left: 20
      ),

      child: Text(
        email,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13,
            fontFamily: "Lato",
            color: Colors.white70,
            fontWeight: FontWeight.w100
        ),
      ),

    );

    final details = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userEmail
      ],
    );

    return Row(
      children: <Widget>[
        photo,
        details
      ],
    );
  }

}