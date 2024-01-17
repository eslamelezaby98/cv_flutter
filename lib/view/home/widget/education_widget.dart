import 'package:cv_flutter/config/setting/cv_data.dart';
import 'package:flutter/material.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({
    super.key,
    required this.theme,
    required this.isSmall,
  });
  final ThemeData theme;
  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(myData.education.title, style: theme.textTheme.bodyLarge),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: myData.education.items.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            var item = myData.education.items[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.universityName,
                        style: theme.textTheme.bodySmall,
                      ),
                      isSmall
                          ? const SizedBox()
                          : Text(
                              "${item.start} - ${item.end}",
                              style: theme.textTheme.bodyMedium,
                            ),
                    ],
                  ),
                  !isSmall
                      ? const SizedBox()
                      : Text(
                          "${item.start} - ${item.end}",
                          style: theme.textTheme.bodyMedium,
                        ),
                  const SizedBox(height: 5),
                  Text(
                    item.specialization,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            );
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
