import 'package:flutter/material.dart';
import 'package:spotifyclone/constants/image_paths.dart';
import 'package:spotifyclone/screen/onboarding_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen(){
    Future.delayed(const Duration(seconds: 3),() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoardingScreen(),));
    },);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          ImagePaths.logo,
          width: 200,
          height: 200,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) => Icon(
            Icons.error_outline,
            size: 100,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
