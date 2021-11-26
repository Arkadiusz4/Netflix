import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextMenu extends StatelessWidget {
  const TextMenu({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: GoogleFonts.raleway(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          Icon(
            Icons.arrow_forward,
            size: 30,
          ),
        ],
      ),
    );
  }
}
