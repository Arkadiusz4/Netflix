import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoText extends StatelessWidget {
  const InfoText({
    Key? key,
    required this.text,
    required this.subtitle,
  }) : super(key: key);
  final String text, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          subtitle,
          style: GoogleFonts.oxygen(
            color: Colors.black54,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          text,
          style: GoogleFonts.openSans(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
