import 'package:flutter/material.dart';
import '../../../config/data/dummy_data.dart';

class WorkWidget extends StatelessWidget {
  const WorkWidget({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(DummyData.work, style: theme.textTheme.bodyLarge),
        const SizedBox(height: 5),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              "VMWare",
                              style: theme.textTheme.bodySmall,
                            ),
                            const SizedBox(width: 5),
                            Card(
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
                                  "USA",
                                  style: theme.textTheme.displaySmall,
                                ),
                              ),
                            ),
                            Card(
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
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "12/2021 - 06/2023",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),

                  //* job title
                  Text(
                    "Cloud Engineer",
                    style: theme.textTheme.displayLarge,
                  ),
                  const SizedBox(height: 2),
                  Text(DummyData.aboutValue, style: theme.textTheme.bodyMedium),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
