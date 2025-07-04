import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vchatz/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Welcome To VChatZ")),
      body: Stack(
        children: [
          Positioned(
            top: mq.height * .1,
            left: mq.width * .08,
            right: mq.width * .08,
            child: Image.asset("images/icon.png"),
          ),
          Positioned(
            bottom: mq.height * .1,
            left: mq.width * .08,
            right: mq.width * .08,
            height: mq.height * .07,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(elevation: 2),
              onPressed: () => Get.offAll(() => HomeScreen()),
              icon: Image.asset("images/google.png", height: mq.height * .04),
              label: Text("Login With Google"),
            ),
          ),
        ],
      ),
    );
  }
}
