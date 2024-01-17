import 'package:flutter/material.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Education", style: theme.textTheme.bodyLarge),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 2,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Maharishi University of Management",
                        style: theme.textTheme.bodySmall,
                      ),
                      Text(
                        "12/2021 - 06/2023",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Master's Degree in Computer Science",
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
