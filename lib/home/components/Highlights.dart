import 'package:flutter/material.dart';
import 'package:portfolio/home/components/AnimationCounter.dart';
import 'package:portfolio/screens/constants.dart';

class Highlights extends StatefulWidget {
  const Highlights({
    super.key, required this.counter, this.label,
  });
final Widget counter;
final String? label;

  @override
  State<Highlights> createState() => _HighlightsState();
}

class _HighlightsState extends State<Highlights> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Animate Text
       widget.counter,
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          widget.label!,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    );
  }
}
