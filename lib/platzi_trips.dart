import 'package:flutter/material.dart';
import 'package:viajes_app/home_trips.dart';
import 'package:viajes_app/profile_trips.dart';
import 'package:viajes_app/search_trips.dart';

class PlatziTrips extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }

}

class _PlatziTrips extends State<PlatziTrips> {

  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped (int index) {

    setState(() {
      indexTap = index;
    });

  }

  @override
  Widget build(BuildContext context) {

    final structure = Scaffold(

      body: widgetsChildren[indexTap],

        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
          ),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
              items: [
            BottomNavigationBarItem (
                icon: Icon(Icons.home),
                title: Text("Home")
            ),
            BottomNavigationBarItem (
                icon: Icon(Icons.search),
                title: Text("Search")
            ),
            BottomNavigationBarItem (
                icon: Icon(Icons.person),
                title: Text("Profile")
            )
          ]),
        ),
    );

    return structure;
  }

}