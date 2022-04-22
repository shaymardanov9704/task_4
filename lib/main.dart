import 'package:flutter/material.dart';
import 'package:task_4/routes/app_pages.dart';
import 'package:task_4/routes/app_routes.dart';
import 'package:task_4/theme/app_constants.dart';
import 'package:task_4/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppConstants.key,
      title: 'Task App',
      theme: AppThemes.light,
      themeMode: ThemeMode.light,
      darkTheme: AppThemes.dark,
      routes: AppPages.page,
      initialRoute: AppRoutes.logged,
      debugShowCheckedModeBanner: false,

    );
  }
}
