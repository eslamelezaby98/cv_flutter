import 'package:cv_flutter/config/launch/app_luncher.dart';
import 'package:cv_flutter/shared/icon_text/build_icon_text.dart';
import 'package:flutter/material.dart';
import '../../../config/setting/cv_data.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(myData.header.name, style: theme.textTheme.bodyLarge),
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
                      myData.header.bio,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  const SizedBox(height: 5),
                  BuildIconText(
                    theme: theme,
                    icon: Icons.language_outlined,
                    onTap: () {
                      AppLaunch.openLink(
                        'https://www.google.com/maps/search/?api=1&query=${myData.header.location.locationX},${myData.header.location.locationY}',
                      );
                    },
                    text: myData.header.location.address,
                  ),
                  const SizedBox(height: 5),
                  BuildIconText(
                    theme: theme,
                    icon: Icons.phone,
                    onTap: () {
                      AppLaunch.openLink(
                        "tel:${myData.header.phone.code}${myData.header.phone.number}",
                      );
                    },
                    text:
                        "${myData.header.phone.code} ${myData.header.phone.number}",
                  ),
                  const SizedBox(height: 5),
                  BuildIconText(
                    theme: theme,
                    icon: Icons.mail_outline,
                    onTap: () {
                      AppLaunch.openLink('mailto:${myData.header.email}');
                    },
                    text: myData.header.email,
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
            itemCount: myData.header.links.length,
            itemBuilder: (context, index) {
              var link = myData.header.links[index];
              return InkWell(
                onTap: () {
                  AppLaunch.openLink(link.url);
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(link.icon, size: 15),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
