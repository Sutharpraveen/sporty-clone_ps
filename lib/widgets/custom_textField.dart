import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;
  final bool isPassword;
  final TextEditingController? controller;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.onChanged,
    this.controller,
    this.isPassword = false, // Default is false if not specified
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xff777777),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        obscureText: isPassword, // Hide text if it's a password field
        style: const TextStyle(
          fontFamily: "AM",
          fontSize: 14,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: "AM",
            fontSize: 14,
            color: Colors.white54,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.none,
              width: 0,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        ),
      ),
    );
  }
}
