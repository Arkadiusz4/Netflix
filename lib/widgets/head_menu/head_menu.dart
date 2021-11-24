import 'package:flutter/material.dart';
import 'package:netflix/widgets/head_menu/head_menu_text.dart';

class HeadMenu extends StatefulWidget {
  @override
  _HeadMenuState createState() => _HeadMenuState();
}

class _HeadMenuState extends State<HeadMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 60,
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadMenuText(text: 'Films', active: true),
                    HeadMenuText(text: 'Series', active: false),
                    HeadMenuText(text: 'My List', active: false),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
