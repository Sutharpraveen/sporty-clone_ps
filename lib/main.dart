
import 'package:flutter/material.dart';
import 'package:spotifyclone/DI/service_locator.dart';
import 'package:spotifyclone/constants/app_text.dart';
import 'package:spotifyclone/screen/splash_screen.dart';

void main(){
  initServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppText.appName,
      theme: ThemeData(
          splashColor:Colors.transparent
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}