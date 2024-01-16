import 'package:cv_flutter/widget/shape/gray_shape.dart';
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
        Text("Projects", style: theme.textTheme.bodyLarge),
        const SizedBox(height: 10),
        StaggeredGrid.count(
          crossAxisCount: isSmall ? 1 : 3,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          children: [
            for (int i = 0; i < 3; i++)
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
                        "VMWare",
                        style: theme.textTheme.bodySmall,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Enhancing accessibility of bible and theology with AI-assisted learning and cited sources.",
                        style: theme.textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 15),
                      Wrap(
                        children: [
                          ...List.generate(
                            15,
                            (index) {
                              return BuildGrayShape(theme: theme);
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
          ],
        ),
        // GridView.builder(
        //   itemCount: 10,
        //   shrinkWrap: true,
        //   physics: const NeverScrollableScrollPhysics(),
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: isSmall ? 1 : 3,
        //     childAspectRatio: 3.5,
        //   ),
        //   itemBuilder: (context, index) {
        //     return Card(
        //       shape: RoundedRectangleBorder(
        //         side: const BorderSide(
        //           color: Color(0xffF3F4F6),
        //           width: 0.6,
        //         ),
        //         borderRadius: BorderRadius.circular(10),
        //       ),
        //       child: Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Wrap(
        //           children: [
        //             Text(
        //               "VMWare",
        //               style: theme.textTheme.bodySmall,
        //             ),
        //             const SizedBox(height: 15),
        //             Text(
        //               "Enhancing accessibility of bible and theology with AI-assisted learning and cited sources.",
        //               style: theme.textTheme.bodyMedium,
        //             ),
        //             const SizedBox(height: 15),
        //             Wrap(
        //               children: [
        //                 ...List.generate(
        //                   100,
        //                   (index) {
        //                     return BuildGrayShape(theme: theme);
        //                   },
        //                 )
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //     );
        //   },
        // ),
      ],
    );
  }
}
