import 'package:flutter/material.dart';
import 'package:spotifyclone/constants/app_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool validateText; // Boolean flag to control validation

  const CustomButton({
    Key? key,
    required this.onTap,
    this.text = "", // Default empty string
    this.validateText = false, // Default is no validation
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Proceed only if validation is true and text length is >= 8
        if (validateText) {
          if (text.isNotEmpty && text.length >= 8) {
            onTap();
          }
        } else {
          // If validation is false, always call onTap
          onTap();
        }
      },
      child: Container(
        height: 45,
        width: 90,
        decoration: BoxDecoration(
          color: (text.isNotEmpty && text.length >= 8) || !validateText
              ? Colors.white
              : Colors.grey,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
           AppText.next,
            style: TextStyle(
              fontFamily: "AB",
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
