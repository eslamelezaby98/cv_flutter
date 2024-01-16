import 'package:flutter/material.dart';

class BuildGrayShape extends StatelessWidget {
  const BuildGrayShape({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffF8F8FA),
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        child: Text(
          "Remote",
          style: theme.textTheme.displaySmall,
        ),
      ),
    );
  }
}
