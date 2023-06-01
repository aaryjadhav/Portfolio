import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: "<", children: [
      TextSpan(
        text: " ca ",
        style: GoogleFonts.poppins(color: Colors.amber),
      ),
      TextSpan(text: ">"),
    ]));
  }
}
