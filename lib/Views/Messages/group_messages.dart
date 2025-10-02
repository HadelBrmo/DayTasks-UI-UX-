import 'package:day_tasks/Core/constant/color.dart';
import 'package:day_tasks/Core/constant/customButton.dart';
import 'package:day_tasks/Core/constant/customText.dart';
import 'package:day_tasks/Core/constant/font.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'chat_messages.dart';
import 'group_messages.dart';

class group_messages extends StatefulWidget {
  group_messages({super.key});

  @override
  State<group_messages> createState() => _group_messagesState();
}

class _group_messagesState extends State<group_messages> {
  bool chat = true;

  Widget customMessages() => Row(
    children: [
      CircleAvatar(
        radius: 30,
        child: Icon(
          Icons.person,
          color: Colors.grey,
        ),
        backgroundColor: Colors.grey[350],
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.05,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: customText(
                    text: "Flutter Developer",
                    fontfamily: fontFamily2,
                    fontsize: MediaQuery.of(context).size.width * 0.04,
                    bold: true,
                    color: color_title,
                    max: 1,
                  ),
                ),
                Container(
                  child: customText(
                    text: "20 min",
                    fontfamily: fontFamily2,
                    fontsize: MediaQuery.of(context).size.width * 0.03,
                    bold: true,
                    color: color_title,
                    max: 1,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: customText(
                    text: "Hello my friends, How are you? Now we are starting",
                    fontfamily: fontFamily2,
                    fontsize: MediaQuery.of(context).size.width * 0.035,
                    bold: false,
                    color: color_title,
                    max: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: MediaQuery.of(context).size.height * 0.1,
        elevation: 0.0,
        selectedIndex: 1,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home_filled), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.chat_outlined), label: 'Chat'),
          NavigationDestination(
            icon: Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
              child: Container(
                height: MediaQuery.of(context).size.width * 0.15,
                width: MediaQuery.of(context).size.width * 0.15,
                color: springYellow,
                child: Center(
                  child: Icon(
                    Icons.add_box_outlined,
                    size: MediaQuery.of(context).size.width * 0.08,
                  ),
                ),
              ),
            ),
            label: '',
          ),
          NavigationDestination(icon: Icon(Icons.calendar_month_rounded), label: 'Calender'),
          NavigationDestination(icon: Icon(Icons.notifications_active), label: 'Notifications'),
        ],
      ),
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.arrow_back),
        title: Center(
          child: customText(
            text: "Messages",
            fontfamily: fontFamily2,
            fontsize: MediaQuery.of(context).size.width * 0.05,
            bold: true,
            color: color_title,
            max: 1,
          ),
        ),
        actions: [
          Container(
            width: MediaQuery.of(context).size.width * 0.1,
            child: Icon(Icons.mode_edit_outline_rounded),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.11,
                        width: MediaQuery.of(context).size.width * 0.3,
                        color: chat ? Colors.grey[350] : springYellow,
                        child: InkWell(
                          onTap: () {
                            Get.to(chat_messages());
                          },
                          child: Center(
                            child: customText(
                              text: "Chat",
                              fontfamily: fontFamily2,
                              fontsize: MediaQuery.of(context).size.width * 0.045,
                              bold: true,
                              color: color_text,
                              max: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.11,
                        width: MediaQuery.of(context).size.width * 0.3,
                        color: chat ? springYellow : Colors.grey[350],
                        child: InkWell(
                          onTap: () {
                            Get.to(group_messages());
                          },
                          child: Center(
                            child: customText(
                              text: "Groups",
                              fontfamily: fontFamily2,
                              fontsize: MediaQuery.of(context).size.width * 0.045,
                              bold: true,
                              color: color_text,
                              max: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => customMessages(),
                    separatorBuilder: (context, index) => SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    itemCount: 12,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.025),
              child: Container(
                height: MediaQuery.of(context).size.width * 0.11,
                width: MediaQuery.of(context).size.width * 0.35,
                color: springYellow,
                child: InkWell(
                  onTap: () {
                    // Add your onTap action here
                  },
                  child: Center(
                    child: customText(
                      text: "Start chat",
                      fontfamily: fontFamily2,
                      fontsize: MediaQuery.of(context).size.width * 0.045,
                      bold: true,
                      color: color_text,
                      max: 1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
