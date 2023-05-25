import 'package:flutter/material.dart';
import 'package:portfolio/screens/components/animated_linear_progress_indicator.dart';
import 'package:portfolio/screens/components/editing_animated_linear_progress_indicator.dart';
import 'package:portfolio/screens/constants.dart';

class Editing extends StatelessWidget {
  const Editing({
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
              "Editing",
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          EditingAnimatedLinearProgressIndicator(percentage: 0.7,label: "Dart",),
          SizedBox(height: defaultPadding/2,),
          EditingAnimatedLinearProgressIndicator(percentage: 0.55,label: "Python",),
          SizedBox(height: defaultPadding/2,),
          EditingAnimatedLinearProgressIndicator(percentage: 0.80,label: "Flutter",),
          SizedBox(height: defaultPadding/2,),
          EditingAnimatedLinearProgressIndicator(percentage: 0.3,label: "HTML",),
          SizedBox(height: defaultPadding/2,),
          EditingAnimatedLinearProgressIndicator(percentage: 0.43,label: "Firebase",),
          SizedBox(height: defaultPadding/2,),
        ]

    );
  }
}

