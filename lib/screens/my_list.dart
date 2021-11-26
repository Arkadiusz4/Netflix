import 'package:flutter/material.dart';
import 'package:netflix/widgets/head_menu/head_menu_mylist.dart';
import 'package:netflix/widgets/navbar/navbar1.dart';

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Navbar1(),
      Container(
          width: MediaQuery.of(context).size.width - 60,
          child: ListView(children: <Widget>[
            SizedBox(
              height: 50,
            ),
            HeadMenuMylist(),
            SizedBox(
              height: 20,
            ),
          ]))
    ]));
  }
}
