import 'package:flutter/material.dart';
import 'package:spotifyclone/constants/constants.dart';
import 'package:spotifyclone/main.dart';

class CreateEmailScreen extends StatefulWidget {
  const CreateEmailScreen({super.key});

  @override
  State<CreateEmailScreen> createState() => _CreateEmailScreenState();
}

class _CreateEmailScreenState extends State<CreateEmailScreen> {
  String text = "";

  @override
  Widget build(BuildContext context) {
    final bool isNextEnabled = text.length >= 6;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: MyColors.darGreyColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _Header(),
                const SizedBox(height: 10),
                const Text(
                  "What's your email?",
                  style: TextStyle(
                    fontFamily: "AB",
                    fontSize: 20,
                    color: MyColors.whiteColor,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 51,
                  decoration: BoxDecoration(
                    color: const Color(0xff777777),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    onChanged: (value) {
                      setState(() => text = value);
                    },
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: "AM",
                      color: MyColors.whiteColor,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "You'll need to confirm this email later.",
                  style: TextStyle(
                    fontFamily: "AB",
                    fontSize: 10,
                    color: MyColors.whiteColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 35),
                Center(
                  child: GestureDetector(
                    onTap: isNextEnabled
                        ? () {
                      // Navigate to next screen
                    }
                        : null,
                    child: Container(
                      height: 45,
                      width: 90,
                      decoration: BoxDecoration(
                        color: isNextEnabled
                            ? MyColors.whiteColor
                            : MyColors.lightGrey,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          "Next ",
                          style: TextStyle(
                            fontFamily: "AB",
                            color: isNextEnabled
                                ? Colors.black
                                : MyColors.darGreyColor,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class _Header extends StatelessWidget {
  const _Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35, top: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 32,
              width: 32,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: MyColors.blackColor,
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/icon_arrow_left.png",
                  height: 16,
                  width: 16,
                ),
              ),
            ),
          ),
          const Text(
            "Create Account",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "AB",
              color: MyColors.whiteColor,
            ),
          ),
          const SizedBox(
            height: 32,
            width: 32,
          )
        ],
      ),
    );
  }
}
