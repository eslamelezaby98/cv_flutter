import 'package:flutter/material.dart';
import '../../config/launch/app_luncher.dart';

class BuildIcon extends StatelessWidget {
  const BuildIcon({
    super.key,
    required this.icon,
    required this.url,
  });
  final IconData icon;
  final String url;

  @override
  Widget build(BuildContext context) {
    return url.isEmpty
        ? const SizedBox()
        : InkWell(
            onTap: () {
              AppLaunch.openLink(url);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Icon(icon, size: 15),
            ),
          );
  }
}
