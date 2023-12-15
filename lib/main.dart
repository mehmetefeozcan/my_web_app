import 'package:my_web_app/core/theme/app_theme.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_web_app/core/enums/index.dart';
import 'package:my_web_app/core/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: NavigationEnums.login.toPath,
      getPages: AppNavigation.routes,
    );
  }
}
