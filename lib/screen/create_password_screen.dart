import 'package:flutter/material.dart';
import 'package:spotifyclone/constants/app_text.dart';
import 'package:spotifyclone/constants/constants.dart';
import 'package:spotifyclone/screen/choose_gender_screen.dart';
import 'package:spotifyclone/screen/create_email_screen.dart';
import 'package:spotifyclone/widgets/custom_button.dart';
import 'package:spotifyclone/widgets/custom_textField.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.darGreyColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            const SizedBox(height: 10),
            Text(
              AppText.createAPassword,
              style: TextStyle(
                  fontSize: 20, fontFamily: "Ab", color: MyColors.whiteColor),
            ),
            const SizedBox(height: 10),
            CustomTextField(
              hintText: 'Enter your password',
              onChanged: (value) {
                setState(() => text = value);
              },
              isPassword: true, // To hide text if it's a password
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                Text(
                  AppText.useAtleastCharacters,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: "AM",
                    fontSize: 10,
                    color: MyColors.whiteColor,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Center(
              child: CustomButton(
                validateText: true,
                text: text, // Pass your text value here
                onTap: () {
                  //Perform the action when button is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChooseGenderScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
