import 'package:flutter/material.dart';
import 'package:portfolio/screens/components/knowledgetext.dart';
import 'package:portfolio/screens/constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding:
          const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledges",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(
          text: 'Flutter, Dart',
        ),
        KnowledgeText(
          text: 'Firebase',
        ),
        KnowledgeText(
          text: 'Photoshop,',
        ),
        KnowledgeText(
          text: 'Premire Pro, After Effects',
        ),
      ],
    );
  }
}
