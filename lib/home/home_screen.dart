import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/home/components/AnimatedTextCode.dart';
import 'package:portfolio/home/components/AnimationCounter.dart';
import 'package:portfolio/home/components/HighlightDisplay.dart';
import 'package:portfolio/home/components/Highlights.dart';
import 'package:portfolio/home/components/MyProjects.dart';
import 'package:portfolio/home/components/ProjectCard.dart';
import 'package:portfolio/home/components/homebanner.dart';
import 'package:portfolio/home/components/recommendation.dart';
import 'package:portfolio/home/home_screen.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/models/recommendation.dart';
import 'package:portfolio/screens/constants.dart';
import 'package:portfolio/screens/main/main_screen.dart';
import 'package:portfolio/home/components/AnimationCounter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        SizedBox(
          height: defaultPadding,
        ),
        HomeBanner(),
        SizedBox(
          height: defaultPadding,
        ),
        HighLightsInfo(),
        SizedBox(
          height: defaultPadding,
        ),
        MyProjects(),
        SizedBox(
          height: defaultPadding,
        ),
        Recommendations(),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
