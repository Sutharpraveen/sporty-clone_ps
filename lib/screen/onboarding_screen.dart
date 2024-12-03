import 'package:flutter/material.dart';
import 'package:spotifyclone/constants/constants.dart';
import 'package:spotifyclone/screen/create_email_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.blackColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/onboarding_background.png"),
            const SizedBox(height: 10),
            const CustomText("Millions of songs."),
            const CustomText("Free on Spotify."),
            const SizedBox(height: 25),
            const _AuthButtons(),
          ],
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;

  const CustomText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: "AB",
        fontSize: 28,
        color: MyColors.whiteColor,
      ),
    );
  }
}

class _AuthButtons extends StatelessWidget {
  const _AuthButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          // Sign up button
          _buildButton(
            context,
            text: "Sign up free",
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CreateEmailScreen(),
                ),
              );
            },
            backgroundColor: MyColors.greenColor,
            textColor: MyColors.blackColor,
          ),
          const SizedBox(height: 15),

          // Continue with Google button
          _buildButton(
            context,
            text: "Continue with Google  kk",
            onPressed: () {},
            icon: "assets/images/icon_google.png",
            borderColor: MyColors.lightGrey,
            textColor: MyColors.whiteColor,
          ),
          const SizedBox(height: 15),

          // Continue with Facebook button
          _buildButton(
            context,
            text: "Continue with Facebook",
            onPressed: () {},
            icon: "assets/images/icon_facebook.png",
            borderColor: MyColors.lightGrey,
            textColor: MyColors.whiteColor,
          ),
          const SizedBox(height: 15),

          // Continue with Apple button
          _buildButton(
            context,
            text: "Continue with Apple",
            onPressed: () {},
            icon: "assets/images/icon_apple.png",
            borderColor: MyColors.lightGrey,
            textColor: MyColors.whiteColor,
          ),
          const SizedBox(height: 15),

          // Log in text
          const Text(
            "Log in",
            style: TextStyle(
                fontFamily: "AB", fontSize: 16, color: MyColors.whiteColor),
          ),
        ],
      ),
    );
  }

  // Helper function to build buttons
  Widget _buildButton(
    BuildContext context, {
    required String text,
    required VoidCallback onPressed,
    String? icon,
    Color? backgroundColor,
    Color? borderColor,
    required Color textColor,
  }) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(MediaQuery.of(context).size.width, 49),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        side: BorderSide(width: 1, color: borderColor ?? Colors.transparent),
        backgroundColor: backgroundColor ?? Colors.transparent,
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: icon == null
            ? MainAxisAlignment.center // Center text when icon is null
            : MainAxisAlignment.spaceBetween,
        // Space between if icon is present
        children: [
          if (icon != null) Image.asset(icon),
          Text(
            text,
            style: TextStyle(
              fontFamily: "AB",
              fontSize: 16,
              color: textColor,
            ),
          ),
          const SizedBox(width: 18, height: 18),
        ],
      ),
    );
  }
}
