import 'package:flutter/material.dart';
import 'package:spotifyclone/constants/app_text.dart';
import 'package:spotifyclone/constants/constants.dart';
import 'package:spotifyclone/screen/create_email_screen.dart';

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
               const Row(
                 children: [
                   SizedBox(width: 2,),
                   Text(AppText.createAPassword,)
                 ],
               )


             ],
            ),
      )),
    );
  }
}
