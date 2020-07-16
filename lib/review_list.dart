import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final reviewsList = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/people.jpg", "Varuna Yasas", "1 review - 5 photos", "There is an amazing place in Sri Lanka", 4),
        Review ("assets/img/luisito.jpg", "Luisito Comunica", "3 review - 5 photos", "Oficialmente chido ¡Qué buen viaje!", 5),
        Review ("assets/img/girl.jpg", "Agatha Red", "1 review - 2 photos", "Amazing, I really enjoy the travel", 5)
      ],
    );

    return reviewsList;
  }

}