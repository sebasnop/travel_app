import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButton();
  }

}

class _FloatingActionButton extends State<FloatingActionButtonGreen> {

  bool added = false;

  @override
  Widget build(BuildContext context) {

    void onPressedFav(){

      setState(() {
        added = !added;
      });

      Scaffold.of(context).showSnackBar(
          SnackBar(
              content: added ? Text("Añadido a tus favoritos") :
              Text("Removido de tus favoritos"),
            duration: Duration(
              milliseconds: 500
            ),
          )
      );
    }

    final button = FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        added ? Icons.favorite :
            Icons.favorite_border
      ),
    );

    return button;
  }

}