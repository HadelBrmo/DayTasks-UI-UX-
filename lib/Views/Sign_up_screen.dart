import 'package:day_tasks/Core/constant/customText.dart';
import 'package:day_tasks/Views/Sign_in_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Core/constant/color.dart';
import '../Core/constant/customButton.dart';
import '../Core/constant/customTextForm.dart';
import '../Core/constant/font.dart';
import 'Home/Home_screen.dart';


class Sign_up extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController fullName = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey();
  Sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: ListView(
              children: [
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
                      customText(text: "Create your account",
                          fontfamily: fontFamily2,
                          fontsize: 30,
                          bold: true,
                          color: color_title, max: 1,
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      customText(text: "Full Name",
                          fontfamily: fontFamily2,
                          fontsize: 18,
                          bold: true,
                          color: color_title, max: 1,
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      CustomTextForm(
                        prefixIcon: const Icon(Icons.person),
                        suffixIcon: null,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            print("it mustn't be empty");
                          }
                          return null;
                        },
                        mycontroller: fullName,
                        hinttext: "Enter Your Name",
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      customText(text: "Email Address",
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
                            print("it mustn't be empty");
                          }
                          return null;
                        },
                        mycontroller: email,
                        hinttext: "Enter Your Email",
                      ),
                      SizedBox(
                        height: screenHeight * 0.015,
                      ),
                      customText(text: "Password",
                          fontfamily: fontFamily2,
                          fontsize: 18,
                          bold: true,
                          color: color_title, max: 1,
                      ),
                      SizedBox(
                        height: screenHeight * 0.015,
                      ),
                      CustomTextForm(
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            print("it mustn't be empty");
                          }
                          return null;
                        },
                        hinttext: "Enter Your Password",
                        mycontroller: password,
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: const Icon(Icons.visibility_off_outlined),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: screenHeight * 0.015,
                            bottom: screenHeight * 0.02,
                            left: screenWidth * 0.03
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.check_box_outlined,
                              color: springYellow,
                            ),
                            SizedBox(width: screenWidth * 0.015,),
                            Expanded(
                              child: Text.rich(
                                  maxLines: 2,
                                  TextSpan(
                                      children: [
                                        const TextSpan(
                                          text: "I have read & ageeed to DayTask ",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: fontFamily2,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Privacy Policy, Terms & Condition",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: springYellow,
                                            fontFamily: fontFamily2,
                                          ),
                                        ),
                                      ])),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      CustomButton(text: 'Sign up',
                        onTap: (){
                          Get.off(Home_Screen());
                        },
                      ),
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                      Center(
                        child: Container(
                          alignment: Alignment.center,
                          child:
                          customText(text: "_________Or Continue With_________",
                              fontfamily: fontFamily2,
                              fontsize: 15,
                              bold: true,
                              color: color_title, max: 1,
                          ),
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
                            Image.asset("assets/images/4.png",width: screenWidth * 0.07,height: screenHeight * 0.07,),
                            TextButton(
                              onPressed: (){},
                              child: customText(text: "Google",
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
                        height: screenHeight * 0.02,
                      ),
                      Center(
                        child: InkWell(
                          onTap: (){
                            Get.to(sign_in());
                          },
                          child: Text.rich(TextSpan(children: [
                            const TextSpan(text: "Already you have an account?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: fontFamily2
                              ),
                            ),
                            TextSpan(
                              text: "  Log in",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: springYellow,
                                fontFamily: fontFamily2,
                              ),
                            ),
                          ])),
                        ),
                      ),
                    ],
                  ),
                )
              ]
          ),
        )
    );
  }
}
