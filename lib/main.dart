import 'package:flutter/material.dart';
import 'package:netflix/screens/main_home.dart';
import 'package:netflix/screens/movie_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainHome(),
      routes: {
        // MovieScreen.routeName: (ctx) => MovieScreen(),
      },
    );
  }
}
