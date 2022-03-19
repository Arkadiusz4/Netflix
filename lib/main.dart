import 'package:flutter/material.dart';
import 'package:netflix/provider/movie_provider.dart';
import 'package:netflix/screens/main_home.dart';
import 'package:netflix/screens/detail_screen/film_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MovieProvider(),
      child: MaterialApp(
        title: 'Netflix',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainHome(),
        routes: {
          // MovieScreen.routeName: (ctx) => MovieScreen(),
        },
      ),
    );
  }
}
