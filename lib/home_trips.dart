import 'package:flutter/material.dart';
import 'package:viajes_app/description_place.dart';
import 'package:viajes_app/review_list.dart';

import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {

  final String description = '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean a turpis tempus, pretium eros a, facilisis orci. Nam consequat consectetur nunc quis fermentum. 
 
Nullam porttitor neque magna, ut ornare magna lobortis ut. Integer quis lorem condimentum quam fringilla mollis scelerisque in ante.''';

  final double starsNumber = 2.5 * 2;

  @override
  Widget build(BuildContext context) {

    final home = Stack (
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Duwili Ella", starsNumber.toInt(), description),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );

    return home;
  }

}