import 'package:cv_flutter/config/setting/app_setting.dart';
import 'package:cv_flutter/config/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() {
    return ThemeData(
      fontFamily: AppSetting.fontFamliy,
      useMaterial3: false,
      cardColor: Colors.white,
      cardTheme: CardTheme(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColor.text, width: 0.4),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      iconTheme: IconThemeData(color: AppColor.text),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: AppColor.header,
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          height: 1.5,
          letterSpacing: 1,
          wordSpacing: 2,
          color: AppColor.text,
        ),
      ),
    );
  }
}
