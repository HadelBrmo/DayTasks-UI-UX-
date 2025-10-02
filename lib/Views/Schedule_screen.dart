import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Core/constant/color.dart';
import '../Core/constant/customText.dart';
import '../Core/constant/font.dart';
import 'Home/Home_screen.dart';
import 'Messages/chat_messages.dart';

class schedule extends StatefulWidget {
  @override
  _scheduleState createState() => _scheduleState();
}

class _scheduleState extends State<schedule> {
  List<String> days = [
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
  ];

  int selectedIndex = -1;
  int selectedIndex1 = -1;

  Widget customSchedule(int index) => GestureDetector(
    onTap: () {
      setState(() {
        selectedIndex = index;
      });
    },
    child: Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.height * 0.1,
          color: selectedIndex == index ? springYellow : Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                customText(
                  text: "${index + 1}",
                  fontfamily: fontFamily2,
                  fontsize: MediaQuery.of(context).size.width * 0.05,
                  bold: true,
                  color: color_title,
                  max: 1,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                customText(
                  text: "${days[index % 7]}",
                  fontfamily: fontFamily2,
                  fontsize: MediaQuery.of(context).size.width * 0.04,
                  bold: true,
                  color: color_title,
                  max: 1,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  Widget getAllTodayTasks(int index1) => GestureDetector(
    onTap: () {
      setState(() {
        selectedIndex1 = index1;
      });
    },
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.12,
        color: selectedIndex1 == index1 ? springYellow : Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                      text: "User Interview",
                      fontfamily: fontFamily2,
                      fontsize: MediaQuery.of(context).size.width * 0.045,
                      bold: true,
                      color: color_title,
                      max: 1,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    customText(
                      text: "16:00 - 18:00",
                      fontfamily: fontFamily2,
                      fontsize: MediaQuery.of(context).size.width * 0.035,
                      bold: false,
                      color: color_title,
                      max: 1,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.025,
                    backgroundColor: Colors.grey[400],
                    child: Icon(
                      Icons.person,
                      size: MediaQuery.of(context).size.width * 0.025,
                      color: Colors.grey[300],
                    ),
                  ),
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.025,
                    backgroundColor: Colors.grey[400],
                    child: Icon(
                      Icons.person,
                      size: MediaQuery.of(context).size.width * 0.025,
                      color: Colors.grey[300],
                    ),
                  ),
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.025,
                    backgroundColor: Colors.grey[400],
                    child: Icon(
                      Icons.person,
                      size: MediaQuery.of(context).size.width * 0.025,
                      color: Colors.grey[300],
                    ),
                  ),
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.025,
                    backgroundColor: Colors.grey[400],
                    child: Icon(
                      Icons.person,
                      size: MediaQuery.of(context).size.width * 0.025,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: MediaQuery.of(context).size.height * 0.1,
        elevation: 0.0,
        selectedIndex: 3,
        destinations: [
          NavigationDestination(
            icon: IconButton(
              onPressed: () {
                Get.to(Home_Screen());
              },
              icon: Icon(Icons.home_filled),
            ),
            label: "Home",
          ),
          NavigationDestination(
            icon: IconButton(
              onPressed: () {
                Get.to(chat_messages());
              },
              icon: Icon(Icons.chat_rounded),
            ),
            label: "Chat",
          ),
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
          NavigationDestination(
            icon: IconButton(
              onPressed: () {
                Get.to(schedule());
              },
              icon: Icon(Icons.calendar_month_rounded),
            ),
            label: "Calendar",
          ),
          NavigationDestination(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_active),
            ),
            label: "Notifications",
          ),
        ],
      ),
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.arrow_back),
        title: Center(
          child: customText(
            text: "Schedule",
            fontfamily: fontFamily2,
            fontsize: MediaQuery.of(context).size.width * 0.055,
            bold: true,
            color: color_title,
            max: 1,
          ),
        ),
        actions: [
          Container(
            width: MediaQuery.of(context).size.width * 0.13,
            child: Icon(Icons.add_box_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Row(
                children: [
                  customText(
                    text: "November",
                    fontfamily: fontFamily2,
                    fontsize: MediaQuery.of(context).size.width * 0.05,
                    bold: true,
                    color: color_title,
                    max: 1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => customSchedule(index),
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Row(
                children: [
                  customText(
                    text: "Today's Tasks",
                    fontfamily: fontFamily2,
                    fontsize: MediaQuery.of(context).size.width * 0.05,
                    bold: true,
                    color: color_title,
                    max: 1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => getAllTodayTasks(index),
                separatorBuilder: (context, index) => SizedBox(height: 15),
                itemCount: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
