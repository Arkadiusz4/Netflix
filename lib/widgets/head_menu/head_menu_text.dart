import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeadMenuText extends StatelessWidget {
  const HeadMenuText({
    Key? key,
    required this.text,
    required this.active,
  }) : super(key: key);
  final String text;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Text(
        text,
        style: TextStyle(
            color: active ? Colors.red : Colors.black,
            fontWeight: active ? FontWeight.w600 : FontWeight.w400,
            fontSize: 20),
      ),
    );
  }
}
