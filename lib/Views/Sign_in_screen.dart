import 'package:day_tasks/Views/Sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/Core/constant/color.dart';
import '/Core/constant/customButton.dart';
import '/Core/constant/customText.dart';
import '/Core/constant/customTextForm.dart';
import '/Core/constant/font.dart';
import 'Home/Home_screen.dart';



class sign_in extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey();
  sign_in({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: ListView(children: [
            Form(
              key: formState,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: screenHeight * 0.05,
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  customText(
                    text: 'Welcome Back!',
                    fontfamily: fontFamily2,
                    fontsize: 30,
                    bold: true,
                    color: color_title, max: 1,
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  customText(
                    text: "Email Address",
                    fontfamily: fontFamily2,
                    fontsize: 18,
                    bold: true,
                    color: color_title, max: 1,
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  CustomTextForm(
                    prefixIcon: const Icon(Icons.account_box_outlined),
                    suffixIcon: null,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return "It mustn't be empty";
                      }
                      return null;
                    },
                    mycontroller: email,
                    hinttext: "Enter Your Email",
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  customText(
                    text: "Password",
                    fontfamily: fontFamily2,
                    fontsize: 18,
                    bold: true,
                    color: color_title, max: 1,
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  CustomTextForm(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.visibility_off_outlined),
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return "It mustn't be empty";
                      }
                      return null;
                    },
                    hinttext: "Enter Your Password",
                    mycontroller: password,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: screenHeight * 0.02, bottom: screenHeight * 0.02),
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: fontFamily2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  CustomButton(
                    text: 'Log in',
                    onTap: () {
                      Get.off(Home_Screen());
                    },
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: customText(
                      text: "___________Or Continue With_________",
                      fontfamily: fontFamily2,
                      fontsize: 15,
                      bold: true,
                      color: color_title, max: 1,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    width: screenWidth * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/4.png",
                          width: screenWidth * 0.07,
                          height: screenHeight * 0.07,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: customText(
                            text: "Google",
                            fontfamily: fontFamily2,
                            fontsize: 25,
                            bold: true,
                            color: color_title, max: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Get.to(Sign_up());
                      },
                      child: Text.rich(TextSpan(children: [
                        const TextSpan(
                          text: "Don't have an account?",
                          style: TextStyle(
                            fontFamily: fontFamily2,
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "  Sign Up",
                          style: TextStyle(
                            fontFamily: fontFamily2,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: springYellow,
                          ),
                        ),
                      ])),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
