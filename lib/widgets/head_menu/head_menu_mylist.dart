import 'package:flutter/material.dart';
import 'package:netflix/screens/main_home.dart';
import 'package:netflix/screens/my_list.dart';
import 'package:netflix/screens/series_screen.dart';
import 'package:netflix/widgets/head_menu/head_menu_text.dart';

class HeadMenuMylist extends StatefulWidget {
  @override
  _HeadMenuMylistState createState() => _HeadMenuMylistState();
}

class _HeadMenuMylistState extends State<HeadMenuMylist> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => MainHome(),
                    ),
                  );
                },
                child: HeadMenuText(text: 'Films', active: false),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => SeriesScreen(),
                    ),
                  );
                },
                child: HeadMenuText(text: 'Series', active: false),
              ),
              HeadMenuText(text: 'My List', active: true),
            ],
          ),
        ),
      ],
    );
  }
}
