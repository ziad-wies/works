import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class LoginScreen extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('login'.tr)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'username'.tr),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'password'.tr),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

                authController.login(usernameController.text);
                Get.offNamed('/home');
              },
              child: Text('submit'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
