import 'package:cv_flutter/config/routes/app_routes.dart';
import 'package:cv_flutter/config/routes/generate_routes.dart';
import 'package:cv_flutter/config/setting/app_setting.dart';
import 'package:cv_flutter/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      theme: AppTheme().getTheme(),
      title: AppSetting.appName,
      onGenerateRoute: GenerateRoutes().generate,
    );
  }
}
