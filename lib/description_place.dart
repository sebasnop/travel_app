import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viajes_app/button_purple.dart';
import 'review_list.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  int starsNumber;
  String descriptionText;

  DescriptionPlace(this.namePlace, this.starsNumber, this.descriptionText);

  @override
  Widget build(BuildContext context) {

    final star = Container(
      margin: EdgeInsets.only(
        top: 331,
        right: 3
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611) //0x es para hexagesimales
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(
          top: 331,
          right: 3
      ),
      child: Icon(
          Icons.star_half,
          color: Color(0xFFf2C611) //0x es para hexagesimales
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
          top: 331,
          right: 3
      ),
      child: Icon(
          Icons.star_border,
          color: Color(0xFFf2C611) //0x es para hexagesimales
      ),
    );

    //List <Widget> stars;

    //for (int i = 1; i<= starsNumber; i++){
      //stars.add(star);
    //}

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 330,
            left: 20,
            right: 20
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w900
            ),
          )
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star_border
          ],
        )
      ],
    );


    final description_text = Container(
      margin: EdgeInsets.only(
          top: 15,
          left: 20,
          right: 20
      ),
      child: Text(
        descriptionText,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 16,
          color: Color(0xFF56575a),
          fontWeight: FontWeight.w400,
          fontFamily: "Lato"
        ),
      ),
    );

    final reviews = new ReviewList();

    final first_part = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        description_text,
        ButtonPurple("Navigate")
        //reviews
      ],
    );

    return first_part;
  }

}