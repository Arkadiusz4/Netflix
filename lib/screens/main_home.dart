import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/widgets/head_menu/head_menu.dart';
import 'package:netflix/widgets/navbar/menu_main_icon.dart';
import 'package:netflix/widgets/navbar/navbar.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Navbar(),
          HeadMenu(),
        ],
      ),
    );
  }
}
