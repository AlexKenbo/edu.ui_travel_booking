import 'package:flutter/material.dart';
import './screens/search_screen.dart';

/* https://www.youtube.com/watch?v=haphTWNmIYE&feature=youtu.be */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel Booking UI',
      debugShowCheckedModeBanner: false,
      home: SearchScreen(),
    );
  }
}