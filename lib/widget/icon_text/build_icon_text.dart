import 'package:flutter/material.dart';

class BuildIconText extends StatelessWidget {
  const BuildIconText({
    super.key,
    required this.theme,
    required this.icon,
    required this.onTap,
    required this.text,
  });
  final ThemeData theme;
  final String text;
  final Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, size: 15),
          const SizedBox(width: 5),
          Text(
            text,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
