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
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Divider(),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child: Text(
          "Softwares",
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ),
      AnimatedLinearProgressIndicator(
        percentage: 0.95,
        label: "Tally ERP 9.0",
      ),
      SizedBox(
        height: defaultPadding / 2,
      ),
      AnimatedLinearProgressIndicator(
        percentage: 0.80,
        label: "Winman",
      ),
      SizedBox(
        height: defaultPadding / 2,
      ),
      AnimatedLinearProgressIndicator(
        percentage: 0.60,
        label: "Microsoft Excel",
      ),
      SizedBox(
        height: defaultPadding / 2,
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        EditingAnimatedLinearProgressIndicator(
          percentage: 0.70,
          label: "Financial Statements",
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        EditingAnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "Organization Skills",
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        EditingAnimatedLinearProgressIndicator(
          percentage: 0.55,
          label: "Team Management",
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        EditingAnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "Leadership",
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
      ])
    ]);
  }
}
