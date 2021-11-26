import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        style: GoogleFonts.lato(
            color: active ? Colors.red : Colors.black,
            fontWeight: active ? FontWeight.w700 : FontWeight.w400,
            fontSize: 23),
      ),
    );
  }
}
