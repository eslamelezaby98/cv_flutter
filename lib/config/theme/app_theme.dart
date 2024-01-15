import 'package:cv_flutter/config/setting/app_setting.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() {
    return ThemeData(
      useMaterial3: false,
      fontFamily: AppSetting.fontFamliy,
    );
  }
}
