import 'package:cv_flutter/config/setting/cv_data.dart';
import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(myData.about.title, style: theme.textTheme.bodyLarge),
        const SizedBox(height: 10),
        Text(myData.about.body, style: theme.textTheme.bodyMedium),
        const SizedBox(height: 20),
      ],
    );
  }
}
