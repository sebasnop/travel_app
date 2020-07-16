import 'package:flutter/material.dart';

class ProfileTop extends StatelessWidget {

  String title;

  ProfileTop(this.title);

  @override
  Widget build(BuildContext context) {

    final settingsButton = InkWell (
      onTap: (){
        Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Configuración"),
              duration: Duration(milliseconds: 500),
            )
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top:60
        ),
        width: 60,
        height: 15,
        child: Icon(
          Icons.settings,
          color: Colors.white60,
          size: 13,
        ),
      ),
    );

    return Row(
      children: <Widget>[
        Container(
          width: 290,
          height: 70,
          child: Text(
            title,
            style: TextStyle(color: Colors.white,
            fontSize: 28,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
            )
          ),
            alignment: Alignment(-0.8, 1.5)
        ),
        settingsButton
      ],
    );

  }

}