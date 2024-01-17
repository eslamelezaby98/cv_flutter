import 'package:cv_flutter/config/setting/cv_data.dart';
import 'package:cv_flutter/shared/shape/gray_shape.dart';
import 'package:flutter/material.dart';

import '../../../config/launch/app_luncher.dart';

class WorkWidget extends StatelessWidget {
  const WorkWidget({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(myData.workExperience.title, style: theme.textTheme.bodyLarge),
        const SizedBox(height: 5),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: myData.workExperience.works.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            var work = myData.workExperience.works[index];
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
                            InkWell(
                              onTap: () {
                                AppLaunch.openLink(work.companySite);
                              },
                              child: Text(
                                work.companyName,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            const SizedBox(width: 5),
                            BuildBadget(theme: theme, text: work.country),
                            BuildBadget(theme: theme, text: work.type),
                          ],
                        ),
                      ),
                      Text(
                        "${work.start}- ${work.end}",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),
                  Text(work.jobTitle, style: theme.textTheme.displayLarge),
                  const SizedBox(height: 2),
                  Text(work.description, style: theme.textTheme.bodyMedium),
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
