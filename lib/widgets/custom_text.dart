import 'package:flutter/material.dart';
import 'package:spotifyclone/constants/constants.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;

  const CustomText({
    Key? key,
    required this.text,
    this.fontSize = 20,
    this.color, // No default value here
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "AB",
        fontSize: fontSize,
        color: color ?? MyColors.whiteColor, // Fallback to white
        fontWeight: fontWeight,
      ),
    );
  }
}
