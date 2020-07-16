import 'package:flutter/material.dart';
import 'package:viajes_app/platzi_trips.dart';
import 'package:viajes_app/platzi_trips_cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlatziTrips(),
      //PlatziTripsCupertino()
    );
  }
}

