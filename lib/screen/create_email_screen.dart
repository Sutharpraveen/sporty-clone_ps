  import 'package:flutter/material.dart';
import 'package:spotifyclone/constants/app_text.dart';
  import 'package:spotifyclone/constants/constants.dart';
  import 'package:spotifyclone/main.dart';
  import 'package:spotifyclone/screen/create_password_screen.dart';
import 'package:spotifyclone/widgets/custom_button.dart';
  import 'package:spotifyclone/widgets/custom_text.dart';
import 'package:spotifyclone/widgets/custom_textField.dart';

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
                  const Header(),
                  const SizedBox(height: 10),
                  const CustomText(
                    text: AppText.whatsYourEmail,
                    fontSize: 20,
                  ),
                  const SizedBox(height: 10),

                  CustomTextField(
                    hintText: 'Enter your email',
                    onChanged: (value) {
                      setState(() => text = value);
                    },
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    AppText.confirmEmailLater,
                    style: TextStyle(
                      fontFamily: "AB",
                      fontSize: 10,
                      color: MyColors.whiteColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 35),
                  Center(
                    child: CustomButton(
                      validateText: true,
                      text: text, // Pass your text value here
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreatePasswordScreen(),
                          ),
                        );
                      },
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


  class Header extends StatelessWidget {
    const Header({super.key});

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
