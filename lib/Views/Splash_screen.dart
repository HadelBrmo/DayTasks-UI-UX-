
import 'package:day_tasks/Core/constant/customButton.dart';
import 'package:day_tasks/Views/Sign_in_screen.dart';
import 'package:day_tasks/Views/Sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Core/constant/color.dart';
import '../Core/constant/customText.dart';
import '../Core/constant/font.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              "assets/images/vecteezy_vector-illustration-of-a-business-women-working-in-an-office_35644833-removebg-preview (1).png",
              width:MediaQuery.of(context).size.width * 0.9 ,
              height: MediaQuery.of(context).size.height * 0.47,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.06,
                bottom: MediaQuery.of(context).size.height * 0.06,
              ),
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: "Manage Your Task With ",
                  style: TextStyle(
                    fontFamily: fontFamily1,
                    color: color_title,
                    fontSize: 52,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "DayTask",
                  style: TextStyle(
                    fontFamily: fontFamily1,
                    fontSize: 52,
                    fontWeight: FontWeight.bold,
                    color: springYellow,
                  ),
                ),
              ])),
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width * 0.9,
            //   color: springYellow,
            //   child: TextButton(
            //     onPressed: () {
            //       Get.to(Sign_up());
            //     },
            //     child: customText(
            //       text: 'Lets start',
            //       fontfamily: fontFamily2,
            //       fontsize: 25,
            //       bold: true,
            //       color: color_text, max: 1,
            //     ),
            //   ),
            // ),
            CustomButton(text: "Lets start", onTap:(){
              setState(() {
                Get.to(Sign_up());
              });
            }),

          ],
        ),
      ),
    );
  }
}