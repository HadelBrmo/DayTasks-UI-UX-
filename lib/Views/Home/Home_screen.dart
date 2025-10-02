import 'dart:io';
import 'package:day_tasks/Core/constant/customText.dart';
import 'package:day_tasks/Core/constant/font.dart';
import 'package:day_tasks/Views/Home/Task_Details_screen.dart';
import 'package:day_tasks/Views/Profile_screen.dart';
import 'package:day_tasks/Views/Schedule_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../Core/constant/color.dart';
import '../Messages/chat_messages.dart';

class Home_Screen extends StatefulWidget {
  Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  Widget customCompleteTask() => InkWell(
    onTap: (){
      Get.to(TaskDetailsScreen(),
      );
    },
    child: Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            customText(text: "Day Task Mobile Applicition",
              fontfamily: fontFamily1,
              fontsize: 22,
              bold: true,
              color: color_title,
              max: 3,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                Expanded(child: customText(text: 'Team member', fontfamily: fontFamily2, fontsize: 14, bold: false, color: Colors.grey, max: 1,)),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.02,
                          backgroundColor: Colors.grey[400],
                          child: Icon(Icons.person,
                            size: MediaQuery.of(context).size.width * 0.025,
                            color: Colors.grey[300],
                          )  ,
                        ),
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.02,
                          backgroundColor: Colors.grey[400],
                          child: Icon(Icons.person,
                            size: MediaQuery.of(context).size.width * 0.025,
                            color: Colors.grey[300],
                          )  ,
                        ),
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.02,
                          backgroundColor: Colors.grey[400],
                          child: Icon(Icons.person,
                            size: MediaQuery.of(context).size.width * 0.025,
                            color: Colors.grey[300],
                          )  ,
                        ),
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.02,
                          backgroundColor: Colors.grey[400],
                          child: Icon(Icons.person,
                            size: MediaQuery.of(context).size.width * 0.025,
                            color: Colors.grey[300],
                          )  ,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              children: [
                Expanded(child: customText(text: 'completed', fontfamily: fontFamily2, fontsize: 14, bold: false, color: Colors.grey, max: 1,)),
                customText(text: '100%', fontfamily: fontFamily2, fontsize: 14, bold: false, color: Colors.grey, max: 1,),

              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.01,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[400],
              ),

            ),
          ],
        ),
      ),
    ),
  );
  Widget customOngoingTask() => InkWell(
    onTap: (){
      Get.to(TaskDetailsScreen());
    },
    child: Container(
      width: MediaQuery.of(context).size.width * 0.55,
      height: MediaQuery.of(context).size.height * 0.24,
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: customText(text: "Day Task Mobile Applicition",
                    fontfamily: fontFamily1,
                    fontsize: 22,
                    bold: true,
                    color: color_title,
                    max: 3,
                  ),
                ),
              ],
            ),
            SizedBox( height: MediaQuery.of(context).size.height * 0.015, ),
            Row(
              children: [
                customText(text: 'Team member',
                  fontfamily: fontFamily2,
                  fontsize: 14,
                  bold: false,
                  color: Colors.grey,
                  max: 1,
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.015,),
            Row(
              children: [
                CircleAvatar( radius: MediaQuery.of(context).size.width * 0.02, backgroundColor: Colors.grey[400],
                  child: Icon(Icons.person, size: MediaQuery.of(context).size.width * 0.025, color: Colors.grey[300],
                  ) ,
                ),
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.02,
                  backgroundColor: Colors.grey[400],
                  child: Icon(Icons.person, size: MediaQuery.of(context).size.width * 0.025, color: Colors.grey[300],
                  ) ,
                ),
                CircleAvatar( radius: MediaQuery.of(context).size.width * 0.02, backgroundColor: Colors.grey[400],
                  child: Icon(Icons.person, size: MediaQuery.of(context).size.width * 0.025, color: Colors.grey[300],
                  ) ,
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.015,),
            Row(
              children: [
                Expanded(
                  child: customText(text: "Due on: 21 March ",
                      fontfamily: fontFamily2, fontsize: 14, bold: false, color: Colors.grey, max:1
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return  SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          height: MediaQuery.of(context).size.height * 0.1,
          elevation: 0.0,
          selectedIndex: 0,
          destinations: [
            NavigationDestination(icon: IconButton(onPressed: (){
              Get.to(Home_Screen());
            },
                icon: Icon(Icons.home_filled)),
                label: "Home"),
            NavigationDestination(icon: IconButton(onPressed: (){
              Get.to(chat_messages());
            },
                icon: Icon(Icons.chat_rounded)),
                label: "Chat"),
            NavigationDestination(
              icon: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.15,
                  color: springYellow,
                  child: Center(
                    child: Icon(
                      Icons.add_box_outlined,
                      size: MediaQuery.of(context).size.width * 0.09,
                    ),
                  ),
                ),
              ),
              label: '',
            ),
            NavigationDestination(icon: IconButton(onPressed: (){
              Get.to(schedule());
            },
                icon: Icon(Icons.calendar_month_rounded)),
                label: "Calender"),
            NavigationDestination(icon: IconButton(onPressed: (){

            },
                icon: Icon(Icons.notifications_active)),
                label: "Notifications"),
          ],
        ),

        body: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText(text: "welcome back",
                            fontfamily: fontFamily2,
                            fontsize: 15,
                            bold: true,
                            color: springYellow,
                            max: 1
                        ),
                        customText(text: "Hadel smeer",
                            fontfamily: fontFamily1,
                            fontsize: 25,
                            bold: true,
                            color: color_title,
                            max:1
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: (){
                        Get.to(Profile_Screen());
                      },
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.width * 0.07,
                        backgroundColor: Colors.grey[300],
                        child: Icon(Icons.person,
                          color: Colors.grey,
                        )  ,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                children: [
                  Expanded(child: Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                      child: Row(
                        children: [
                          Icon(Icons.search,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          customText(text: "Search tasks",
                              fontfamily: fontFamily2,
                              fontsize: 15,
                              bold: true,
                              color: Colors.grey,
                              max: 1),
                        ],
                      ),
                    ),
                  )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.1,
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      color: springYellow,
                    ),
                    child: Center(child: Icon(Icons.filter_list)),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Row(
                children: [
                  Expanded(
                    child: customText(text: "Completed Tasks",
                        fontfamily: fontFamily2,
                        fontsize: 20,
                        bold: true,
                        color: color_title,
                        max:1
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: customText(text: "see all",
                        fontfamily: fontFamily2,
                        fontsize: 20,
                        bold: true,
                        color: springYellow,
                        max:1
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => customCompleteTask(),
                  separatorBuilder: (context, index) => SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                  itemCount: 15,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Row(
                children: [
                  Expanded(
                    child: customText(text: "Ongoing Projects",
                        fontfamily: fontFamily2,
                        fontsize: 20,
                        bold: true,
                        color: color_title,
                        max:1
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: customText(text: "see all",
                        fontfamily: fontFamily2,
                        fontsize: 20,
                        bold: true,
                        color: springYellow,
                        max:1
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                // width: 200,
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => customOngoingTask(),
                  separatorBuilder: (context, index) => SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  itemCount: 15,
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
