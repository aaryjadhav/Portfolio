import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/home/components/fluttercodedtext.dart';
import 'package:portfolio/home/home_screen.dart';
import 'package:portfolio/screens/constants.dart';
import 'package:portfolio/screens/responsive.dart';

class AnimatedTextCode extends StatelessWidget {
  const AnimatedTextCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      //Same style for every animated text
      style: GoogleFonts.poppins(color: Colors.white),
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context))
            FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text("I Build "),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText(
              "Responsive Web And Mobile App.",
              speed: Duration(milliseconds: 60),

            ),
            TyperAnimatedText("Complete E-Commerce App UI",speed: Duration(milliseconds: 60),),
            TyperAnimatedText(
              "Chat App With Dark And Light Theme.",speed: Duration(milliseconds: 60),),
          ]),
          SizedBox(
            width: defaultPadding / 2,
          ),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding / 2,
            ),
            if (!Responsive.isMobileLarge(context))
          FlutterCodedText(),
        ],
      ),
    );
  }
}