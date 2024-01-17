import 'package:cv_flutter/config/setting/cv_data.dart';
import 'package:cv_flutter/shared/shape/gray_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({
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
        Text(myData.projects.title, style: theme.textTheme.bodyLarge),
        const SizedBox(height: 10),
        StaggeredGrid.count(
          crossAxisCount: isSmall ? 1 : 3,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          children: [
            for (int i = 0; i < myData.projects.items.length; i++)
              Card(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Color(0xffF3F4F6),
                    width: 0.6,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    children: [
                      Text(
                        myData.projects.items[i].name,
                        style: theme.textTheme.bodySmall,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          myData.projects.items[i].description,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      Wrap(
                        children: [
                          ...List.generate(
                            myData.projects.items[i].badgets.length,
                            (index) {
                              return BuildBadget(
                                theme: theme,
                                text: myData.projects.items[i].badgets[index],
                              );
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
