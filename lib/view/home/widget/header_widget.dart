import 'package:cv_flutter/config/data/dummy_data.dart';
import 'package:cv_flutter/shared/icon_text/build_icon_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(DummyData.name, style: theme.textTheme.bodyLarge),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 400,
                    child: Text(
                      DummyData.bio,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  const SizedBox(height: 5),
                  BuildIconText(
                    theme: theme,
                    icon: Icons.language_outlined,
                    onTap: () {},
                    text: "Lehi, Utah, United States (MST)",
                  ),
                  const SizedBox(height: 5),
                  BuildIconText(
                    theme: theme,
                    icon: Icons.phone,
                    onTap: () {},
                    text: "+20 1032390247",
                  ),
                  const SizedBox(height: 5),
                  BuildIconText(
                    theme: theme,
                    icon: Icons.mail_outline,
                    onTap: () {},
                    text: "eslamlelezaby98@gmail.com",
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage("assets/image/avater.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        //* links
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: const Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    child: Icon(FontAwesomeIcons.xTwitter, size: 15),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
