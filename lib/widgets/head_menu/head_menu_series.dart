import 'package:flutter/material.dart';
import 'package:netflix/screens/main_home.dart';
import 'package:netflix/screens/my_list.dart';
import 'package:netflix/widgets/head_menu/head_menu_text.dart';

class HeadMenuSeries extends StatefulWidget {
  @override
  _HeadMenuSeriesState createState() => _HeadMenuSeriesState();
}

class _HeadMenuSeriesState extends State<HeadMenuSeries> {
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
              HeadMenuText(text: 'Series', active: true),
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
