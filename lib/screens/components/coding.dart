import 'package:flutter/material.dart';
import 'package:portfolio/screens/components/animated_linear_progress_indicator.dart';
import 'package:portfolio/screens/components/editing_animated_linear_progress_indicator.dart';
import 'package:portfolio/screens/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Divider(),
    Padding(
    padding: const EdgeInsets.symmetric(vertical: defaultPadding),
    child: Text(
    "Coding",
    style: Theme.of(context).textTheme.subtitle2,
    ),
    ),
    AnimatedLinearProgressIndicator(percentage: 0.7,label: "Dart",),
    SizedBox(height: defaultPadding/2,),
    AnimatedLinearProgressIndicator(percentage: 0.3,label: "HTML",),
    SizedBox(height: defaultPadding/2,),
    AnimatedLinearProgressIndicator(percentage: 0.30,label: "PHP",),
    SizedBox(height: defaultPadding/2,),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                    "Editing",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                EditingAnimatedLinearProgressIndicator(percentage: 0.70,label: "Adobe Photoshop",),
                SizedBox(height: defaultPadding/2,),
                EditingAnimatedLinearProgressIndicator(percentage: 0.90,label: "Adobe Premire Pro",),
                SizedBox(height: defaultPadding/2,),
                EditingAnimatedLinearProgressIndicator(percentage: 0.55,label: "Adobe After Effects",),
                SizedBox(height: defaultPadding/2,),
                EditingAnimatedLinearProgressIndicator(percentage: 0.90,label: "Canva",),
                SizedBox(height: defaultPadding/2,),
              ]

          )
    ]

    );

  }
}
