import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'login': 'Login',
          'username': 'Username',
          'password': 'Password',
          'submit': 'Submit',
          'welcome': 'Welcome',
          'logout': 'Logout',
          'settings': 'Settings',
          'language': 'Language',
        },
        'ar': {
          'login': 'تسجيل الدخول',
          'username': 'اسم المستخدم',
          'password': 'كلمة المرور',
          'submit': 'إرسال',
          'welcome': 'مرحبًا',
          'logout': 'تسجيل الخروج',
          'settings': 'الإعدادات',
          'language': 'اللغة',
        },
      };
}
