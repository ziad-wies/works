import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/login_screen.dart';
import 'views/home_screen.dart';
import 'views/settings_screen.dart';
import 'translations/app_translations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppTranslations(),
      locale: Locale('en'),
      fallbackLocale: Locale('en'),
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(name: '/settings', page: () => SettingsScreen()),
      ],
    );
  }
}
