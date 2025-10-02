import 'package:day_tasks/Core/constant/color.dart';
import 'package:day_tasks/Core/constant/customText.dart';
import 'package:day_tasks/Core/constant/font.dart';
import 'package:day_tasks/Views/Home/Create%20New%20Task_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TaskDetailsScreen extends StatefulWidget {
  TaskDetailsScreen({super.key});

  @override
  State<TaskDetailsScreen> createState() => _TaskDetailsScreenState();
}

class _TaskDetailsScreenState extends State<TaskDetailsScreen> {
  Widget getAllTasks()=> Padding(
    padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.01,
        horizontal: MediaQuery.of(context).size.width * 0.05
    ),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.06,
      color: Colors.grey[300],
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
        child: Row(
          children: [
            Expanded(
              child: customText(text: "User Interview",
                fontfamily: fontFamily2,
                fontsize: 17,
                bold: false,
                color: color_title,
                max: 1,
              ),
            ),
            Container(
                color:springYellow,
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.height * 0.06,
                child: Icon(Icons.check_circle_outline)),
          ],
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: MediaQuery.of(context).size.height * 0.1,
        child: InkWell(
          onTap: (){
            Get.to(createNewTask());
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: springYellow,
            child: Center(
              child: customText(text: "Add Task",
                  fontfamily: fontFamily2,
                  fontsize: 20,
                  bold: true,
                  color: color_title,
                  max: 1),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.arrow_back),
        title: Center(
          child: customText(
            text: "Task Details",
            fontfamily: fontFamily2,
            fontsize: 21,
            bold: true,
            color: color_title,
            max: 1,
          ),
        ),
        actions: [
          Container(
            width: MediaQuery.of(context).size.width * 0.12,
            child: Icon(Icons.mode_edit_outline_rounded),
          ),
        ],
      ),
      body:Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.04,
        ),
        child: Column(
          children: [
            Center(
              child: customText(text: "Day Task Mobile Applicition",
                fontfamily: fontFamily1,
                fontsize: 18,
                bold: true,
                color: color_title,
                max: 3,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.06),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                            color:springYellow,
                            width: MediaQuery.of(context).size.width * 0.12,
                            height: MediaQuery.of(context).size.height * 0.06,
                            child: Icon(Icons.calendar_today)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Column(
                          children: [
                            customText(text: "Due Date",
                                fontfamily: fontFamily2,
                                fontsize: 15,
                                bold: true,
                                color: Colors.grey,
                                max: 1
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.005,
                            ),
                            customText(text: "20 June",
                                fontfamily: fontFamily2,
                                fontsize: 15,
                                bold: true,
                                color: color_title,
                                max: 1
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                            color:springYellow,
                            width: MediaQuery.of(context).size.width * 0.12,
                            height: MediaQuery.of(context).size.height * 0.06,
                            child: Icon(Icons.people_alt)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Column(
                          children: [
                            customText(text: "Project Team",
                                fontfamily: fontFamily2,
                                fontsize: 15,
                                bold: true,
                                color: Colors.grey,
                                max: 1
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.005,
                            ),
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.01,
                  horizontal: MediaQuery.of(context).size.width * 0.05
              ),
              child: Row(
                children: [
                  customText(text: "Project Details",
                    fontfamily: fontFamily2,
                    fontsize: 18,
                    bold: true,
                    color: color_title,
                    max: 1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.01,
                  horizontal: MediaQuery.of(context).size.width * 0.05
              ),
              child: customText(text: "This project talks about how can organize your day by application which "
                  "contain alot of screens helping devide your bussiness and ideas ",
                fontfamily: fontFamily2,
                fontsize: 14,
                bold: true,
                color: Colors.grey,
                max: 3,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.02,
                  horizontal: MediaQuery.of(context).size.width * 0.05
              ),
              child: Row(
                children: [
                  Expanded(
                    child: customText(text: "Project Progress",
                      fontfamily: fontFamily2,
                      fontsize: 18,
                      bold: true,
                      color: color_title,
                      max: 1,
                    ),
                  ),
                  CircularPercentIndicator(radius: MediaQuery.of(context).size.width * 0.07,
                    center: Text("60%"),
                    percent: 0.6,
                    progressColor: springYellow,
                    lineWidth: MediaQuery.of(context).size.width * 0.01,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.01,
                  horizontal: MediaQuery.of(context).size.width * 0.05
              ),
              child: Row(
                children: [
                  customText(text: "All Tasks",
                    fontfamily: fontFamily2,
                    fontsize: 18,
                    bold: true,
                    color: color_title,
                    max: 1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => getAllTasks(),
                  separatorBuilder: (context, index) => SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                  itemCount: 15,
                ),
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
