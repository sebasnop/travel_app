import 'package:flutter/material.dart';

class ProfileButtons extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProfileButtons();
  }

}

class _ProfileButtons extends State<ProfileButtons> {

  bool saved = true;
  bool gift = false;
  bool mail = false;
  bool person = false;

  @override
  Widget build(BuildContext context) {

    void onPressedSaved() {
      setState(() {
        saved = true;
        gift = false;
        mail = false;
        person = false;
      });
    }

    void onPressedGift() {
      setState(() {
        saved = false;
        gift = true;
        mail = false;
        person = false;
      });
    }

    void onPressedMail() {
      setState(() {
        saved = false;
        gift = false;
        mail = true;
        person = false;
      });
    }

    void onPressedPerson() {
      setState(() {
        saved = false;
        gift = false;
        mail = false;
        person = true;
      });
    }


    final savedButton = Container(
      margin: EdgeInsets.only(
        right: 10
      ),
      child: FloatingActionButton(
        onPressed: onPressedSaved,
        elevation: 0,
        backgroundColor:
        saved ? Colors.white :
        Colors.white54,
        mini: true,
        tooltip: "Saved",
        child: Icon(
          Icons.bookmark_border,
          color: Color(0xFF516CD7),
          size: 20,
        ),
      )
    );

    final giftButton = Container(
        margin: EdgeInsets.only(
            right: 15
        ),
      child: FloatingActionButton(
        onPressed: onPressedGift,
        elevation: 0,
        backgroundColor:
          gift ? Colors.white :
          Colors.white54,
        mini: true,
        tooltip: "Gift",
        child: Icon(
          Icons.card_giftcard,
          color: Color(0xFF516CD7),
          size: 20,
        ),
      )
    );

    final addButton = FloatingActionButton(
      onPressed: (){
        Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("¡Añadiendo Publicación!"),
              backgroundColor: Color(0xFF564CB7),
              duration: Duration(
                milliseconds: 1300
              ),
            )
        );
      },
      elevation: 0,
      backgroundColor: Colors.white,
      tooltip: "Add",
      child: Icon(
        Icons.add,
        color: Color(0xFF516CD7),
        size: 40,
      ),
    );

    final mailButton = Container(
        margin: EdgeInsets.only(
            left: 15
        ),
    child: FloatingActionButton(
      onPressed: onPressedMail,
      elevation: 0,
      backgroundColor:
        mail ? Colors.white :
        Colors.white54,
      mini: true,
      tooltip: "Mail",
      child: Icon(
        Icons.mail_outline,
        color: Color(0xFF516CD7),
        size: 20,
      ),
    )
    );

    final personButton = Container(
      margin: EdgeInsets.only(
          left: 10
      ),
    child: FloatingActionButton(
      onPressed: onPressedPerson,
      elevation: 0,
      backgroundColor:
        person ? Colors.white :
        Colors.white54,
      mini: true,
      tooltip: "Person",
      child: Icon(
        Icons.person,
        color: Color(0xFF516CD7),
        size: 20,
      ),
    )
    );

    return ButtonBar(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
    savedButton,
    giftButton,
    addButton,
    mailButton,
    personButton
    ],
    );
  }

}