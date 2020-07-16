import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage = "assets/img/people.jpg";
  String name = "Varuna Yasas";
  String details = "1 review - 5 photos";
  String comment = "There is an amazing place in Sri Lanka";
  int starsNumber = 4;

  Review(this.pathImage, this.name, this.details, this.comment, this.starsNumber);

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
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage)
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
        fontFamily: "Lato"
      ),
    ),

  );

  final userDetails = Container(
    margin: EdgeInsets.only(
        left: 20
    ),

    child: Text(
      details,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontSize: 13,
          fontFamily: "Lato",
          color: Color(0xFFa3a5a7)
      ),
    ),

  );

  final star = Container(
    margin: EdgeInsets.only(
        top: 2,
        left: 3
    ),
    child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 15,
    ),
  );

  final star_half = Container(
    margin: EdgeInsets.only(
        top: 2,
        left: 3
    ),
    child: Icon(
      Icons.star_half,
      color: Color(0xFFf2C611),
      size: 15,
    ),
  );

  final star_border = Container(
    margin: EdgeInsets.only(
        top: 2,
        left: 3
    ),
    child: Icon(
      Icons.star_border,
      color: Color(0xFFf2C611),
      size: 15,
    ),
  );

  final detailsAndStars = Row(
    children: <Widget>[
      userDetails,
      star,
      star,
      star,
      star,
      star_border
    ],
  );

  final userComment = Container(
    margin: EdgeInsets.only(
        left: 20
    ),

    child: Text(
      comment,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontSize: 13,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900
      ),
    ),

  );

  final userInfo = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      userName,
      detailsAndStars,
      userComment
    ],
  );

  final oneReview = Row(
    children: <Widget>[
      photo,
      userInfo
    ],
  );


    return oneReview;
  }

}