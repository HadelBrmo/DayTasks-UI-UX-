import 'package:day_tasks/Core/constant/color.dart';
import 'package:day_tasks/Core/constant/customButton.dart';
import 'package:day_tasks/Core/constant/customText.dart';
import 'package:day_tasks/Core/constant/font.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Home/Home_screen.dart';
import '../Schedule_screen.dart';
import 'chat_messages.dart';
import 'group_messages.dart';
//single message
class chat_messages extends StatelessWidget {
  chat_messages({super.key});
  bool chat = false;

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
        width: 20,
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
                    text: "Hadel",
                    fontfamily: fontFamily2,
                    fontsize: 16,
                    bold: true,
                    color: color_title,
                    max: 1,
                  ),
                ),
                Container(
                  child: customText(
                    text: "34 min",
                    fontfamily: fontFamily2,
                    fontsize: 12,
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
                    text: "Hi Hadel, I am waiting for you in the collage",
                    fontfamily: fontFamily2,
                    fontsize: 14,
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
        height: 70,
        elevation: 0.0,
        selectedIndex: 1,
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
                height: 60,
                width: 60,
                color: springYellow,
                child: Center(
                  child: Icon(
                    Icons.add_box_outlined,
                    size: 35,
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
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.arrow_back),
        title: Center(
          child: customText(
            text: "Messages",
            fontfamily: fontFamily2,
            fontsize: 21,
            bold: true,
            color: color_title,
            max: 1,
          ),
        ),
        actions: [
          Container(
            width: 50,
            child: Icon(Icons.mode_edit_outline_rounded),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                              fontsize: 18,
                              bold: true,
                              color: color_text,
                              max: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
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
                              fontsize: 18,
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
                SizedBox(height: 35),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => customMessages(),
                    separatorBuilder: (context, index) => SizedBox(height: 25),
                    itemCount: 12,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
                      fontsize: 18,
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
