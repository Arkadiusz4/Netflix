import 'package:flutter/material.dart';
import 'package:netflix/screens/my_list.dart';
import 'package:netflix/screens/series_screen.dart';
import 'package:netflix/widgets/head_menu/head_menu_text.dart';

class HeadMenuFilm extends StatefulWidget {
  @override
  _HeadMenuFilmState createState() => _HeadMenuFilmState();
}

class _HeadMenuFilmState extends State<HeadMenuFilm> {
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
              HeadMenuText(text: 'Films', active: true),
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
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => MyList(),
                    ),
                  );
                },
                child: HeadMenuText(text: 'My List', active: false),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
