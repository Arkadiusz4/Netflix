import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuMainIcon extends StatelessWidget {
  const MenuMainIcon({
    Key? key,
    required this.icon,
    required this.active,
  }) : super(key: key);
  final IconData icon;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          right:
              BorderSide(color: active ? Colors.red : Colors.black, width: 4),
        ),
      ),
      child: Icon(
        icon,
        color: active ? Colors.white : Colors.grey,
        size: 30,
      ),
    );
  }
}
