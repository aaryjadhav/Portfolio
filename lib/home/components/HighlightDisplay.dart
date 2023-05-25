import 'package:flutter/material.dart';

import 'package:portfolio/home/components/AnimationCounter.dart';
import 'package:portfolio/home/components/HighlightDisplay.dart';
import 'package:portfolio/home/components/Highlights.dart';
import 'package:portfolio/screens/constants.dart';
import 'package:portfolio/screens/responsive.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Highlights(
                  counter: AnimationCounter(
                    value: 300,
                    text: "+",
                  ),
                  label: "Subscriber's",
                ),
                Highlights(
                  counter: AnimationCounter(
                    value: 50,
                    text: "+",
                  ),
                  label: "Videos",
                ),
              ],
            ),
          ),
          const SizedBox(height: defaultPadding),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Highlights(
                  counter: AnimationCounter(
                    value: 5,
                    text: "+",
                  ),
                  label: "GitHub Projects",
                ),
                Highlights(
                  counter: AnimationCounter(
                    value: 10,
                    text: "+",
                  ),
                  label: "Edited Stuff",
                ),
              ],
            ),
          ),
        ],
      )
          : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Highlights(
            counter: AnimationCounter(
              value: 300,
              text: "+",
            ),
            label: "Subscriber's",
          ),
          Highlights(
            counter: AnimationCounter(
              value: 50,
              text: "+",
            ),
            label: "Videos",
          ),
          Highlights(
            counter: AnimationCounter(
              value: 5,
              text: "+",
            ),
            label: "GitHub Projects",
          ),
          Highlights(
            counter: AnimationCounter(
              value: 10,
              text: "+",
            ),
            label: "Edited Stuff",
          ),
        ],
      ),
    );
  }
}
