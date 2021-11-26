import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/screens/coming_soon_screen.dart';

import 'menu_main_icon.dart';

class Navbar1 extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar1> {
  String logo =
      'https://historia.org.pl/wp-content/uploads/2018/04/netflix-logo.jpg';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 80),
            child: Image.network(logo),
          ),
          Expanded(child: Container()),
          MenuMainIcon(
            icon: Icons.home,
            active: true,
          ),
          MenuMainIcon(
            icon: Icons.search,
            active: false,
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => ComingSoonScreen(),
              ),
            ),
            child: MenuMainIcon(
              icon: Icons.slideshow,
              active: false,
            ),
          ),
          MenuMainIcon(
            icon: Icons.save_alt,
            active: false,
          ),
          MenuMainIcon(
            icon: Icons.menu,
            active: false,
          ),
        ],
      ),
    );
  }
}
