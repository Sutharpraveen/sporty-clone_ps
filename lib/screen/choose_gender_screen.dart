import 'package:flutter/material.dart';
import 'package:spotifyclone/constants/app_text.dart';
import 'package:spotifyclone/constants/constants.dart';
import 'package:spotifyclone/screen/create_email_screen.dart';
import 'package:spotifyclone/screen/create_name_screen.dart';
import 'package:spotifyclone/widgets/custom_button.dart';

class ChooseGenderScreen extends StatefulWidget {
  const ChooseGenderScreen({super.key});

  @override
  State<ChooseGenderScreen> createState() => _ChooseGenderScreenState();
}

class _ChooseGenderScreenState extends State<ChooseGenderScreen> {
  String dropdownValue = "Select Gender"; // Default value is Select Gender
  bool isGenderSelected = false; // Track if the user changes the value

  final List<String> genderOptions = [
    "Male",
    "Female",
    "Prefer not to say",
  ];

  // Handle gender selection and enable button if modified
  void handleGenderSelection(String? newValue) {
    setState(() {
      dropdownValue = newValue!;
      isGenderSelected = newValue != "Select Gender"; // Enable button after changing default value
    });
  }

  // Navigate to next screen
  void goToNextScreen() {
    if (isGenderSelected) {
      // Implement navigation to the next screen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const CreateNameScreen(),
        ),
      );
      print("Navigating to next screen");
    }
  }

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
                AppText.gender_txt,
                style: TextStyle(
                    fontSize: 20, fontFamily: "Ab", color: MyColors.whiteColor),
              ),
              const SizedBox(height: 10),
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
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: DropdownButton<String>(
                    dropdownColor: MyColors.lightGrey,
                    itemHeight: 50.0,
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
                    underline: Container(),
                    items: [
                      DropdownMenuItem<String>(
                        value: "Select Gender", // Value for default option
                        child: Text(
                          "Select Gender", // Placeholder text
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "AM",
                          ),
                        ),
                      ),
                      ...genderOptions.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: "AM",
                            ),
                          ),
                        );
                      }).toList(),
                    ],
                    onChanged: handleGenderSelection,
                    value: dropdownValue,
                  ),
                ),
              ),
              const SizedBox(height: 35),
              Center(
                child: CustomButton(
                  onTap: goToNextScreen, // Call navigation function
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
