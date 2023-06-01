import 'package:flutter/material.dart';
import 'package:portfolio/screens/components/animated_circular_progress_indicator.dart';
import 'package:portfolio/screens/constants.dart';
class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        //Animation
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.85,
                label: "Accounting",
              ),
            ),
            SizedBox(width: defaultPadding,),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                label: "Taxation",
                percentage: 0.75,
              ),
            ),
            SizedBox(width: defaultPadding,),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.55,
                label: "Auditing ",
              ),
            ),

          ],

        ),

      ],
    );
  }
}