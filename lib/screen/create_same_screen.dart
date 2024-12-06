import 'package:flutter/material.dart';
import 'package:spotifyclone/constants/app_text.dart';
import 'package:spotifyclone/constants/constants.dart';
import 'package:spotifyclone/main.dart';
import 'package:spotifyclone/screen/create_email_screen.dart';

class CreateNameScreen extends StatefulWidget {
  const CreateNameScreen({super.key});

  @override
  State<CreateNameScreen> createState() => _CreateNameScreenState();
}

class _CreateNameScreenState extends State<CreateNameScreen> {
  bool newsCheck = false;
  bool marketPurposeCheck = false;
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.darGreyColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            const SizedBox(height: 10),
            Text(
              "What's your name?",
              style: TextStyle(
                fontFamily: "AB",
                fontSize: 20,
                color: MyColors.whiteColor,
              ),
              textAlign: TextAlign.start,
            ),
            Container(
              height: 51,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xff777777),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            text = value;
                          });
                        },
                        style: const TextStyle(
                          fontFamily: "AM",
                          fontSize: 14,
                          color: MyColors.whiteColor,
                        ),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.none,
                              width: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: (text.length > 6) ? true : false,
                      child: Image.asset("images/icon_tic.png"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "This appears on your spotify profile",
              style: TextStyle(
                fontFamily: "AM",
                fontSize: 10,
                color: MyColors.whiteColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Divider(
              thickness: 1.3,
              color: MyColors.lightGrey,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'By tapping on "Create account" you agree to the spotify Terms of Use.',
              style: TextStyle(
                fontFamily: "AM",
                fontSize: 12,
                color: MyColors.whiteColor,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Terms of Use',
              style: TextStyle(
                fontFamily: "AM",
                fontSize: 12,
                color: MyColors.greenColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              'To learn more about how spotify collect, uses, shares and portects your personal data, Please see the spotify Privacy Policy.',
              style: TextStyle(
                fontFamily: "AM",
                fontSize: 12,
                color: MyColors.whiteColor,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Privacy Policy',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: "AB",
                fontSize: 12,
                color: MyColors.greenColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "Please send me news and offers from spotify.",
                  style: TextStyle(
                      fontFamily: "AB",
                      fontSize: 12,
                      color: MyColors.whiteColor),
                ),
                Spacer(),
                Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                    value: newsCheck,
                    onChanged: (value) {
                      setState(() {
                        newsCheck = value!;
                      });
                    },
                    shape: const CircleBorder(),
                    activeColor: MyColors.greenColor,
                    checkColor: MyColors.whiteColor,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),



              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 290,
                  child: Text("Share my registration data with Spotify's content providers for marketing purposes.",
                    style: TextStyle(
                        fontFamily: "AB",
                        fontSize: 12,
                        color: MyColors.whiteColor
                    ),),
                ),

                const Spacer(),

                Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                    value: marketPurposeCheck,
                    onChanged: (value) {
                      setState(() {
                        marketPurposeCheck = value!;
                      });
                    },
                    shape: const CircleBorder(),
                    activeColor: MyColors.greenColor,
                    checkColor: MyColors.whiteColor,
                  ),
                ),

              ],
            ),

            const Spacer(),

            Center(
              child: GestureDetector(
                onTap: () {
                  if(text.length>6){
//fsdfsdfsad
                  }

                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
