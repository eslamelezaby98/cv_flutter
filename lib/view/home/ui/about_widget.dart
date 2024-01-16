import 'package:flutter/material.dart';

import '../../../config/data/dummy_data.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(DummyData.about, style: theme.textTheme.bodyLarge),
        const SizedBox(height: 10),
        Text(DummyData.aboutValue, style: theme.textTheme.bodyMedium),
      ],
    );
  }
}
