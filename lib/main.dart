import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vchatz/screens/splash_screen.dart';

late Size mq;
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return GetMaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: CupertinoColors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
          backgroundColor: CupertinoColors.white,
          foregroundColor: CupertinoColors.black,
        ),
        iconTheme: IconThemeData(color: CupertinoColors.black),
      ),
      debugShowCheckedModeBanner: false,
      title: 'V-ChatZ',
      home: const SplashScreen(),
    );
  }
}
