import 'package:cv_flutter/config/setting/cv_data.dart';
import 'package:flutter/material.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(myData.skills.title, style: theme.textTheme.bodyLarge),
        ),
        Wrap(
          children: [
            ...List.generate(
              myData.skills.items.length,
              (index) {
                var skill = myData.skills.items[index];
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
                        skill,
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
