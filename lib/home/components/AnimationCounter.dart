import 'package:flutter/material.dart';
import 'package:portfolio/screens/constants.dart';


class AnimationCounter extends StatelessWidget {
  const AnimationCounter({
    super.key, required this.value, this.text,
  });
final int value;
final String? text;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: Duration(milliseconds: 1000),
      builder: (context, value, child) => Text(
        "$value$text",
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: primaryColor),
      ),
    );
  }
}
