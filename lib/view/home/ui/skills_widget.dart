import 'package:flutter/material.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Skills", style: theme.textTheme.bodyLarge),
        Wrap(
          children: [
            ...List.generate(
              15,
              (index) {
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 15, 15, 15),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        "GitOps",
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ],
    );
  }
}
