import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class HomeScreen extends StatelessWidget {
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome'.tr),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => Get.toNamed('/settings'),
          ),
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              authController.logout();
              Get.offAllNamed('/login');
            },
          ),
        ],
      ),
      body: Center(
        child: Text('${'welcome'.tr}, ${authController.username.value}!'),
      ),
    );
  }
}
