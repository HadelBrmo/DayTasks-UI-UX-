import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Core/constant/color.dart';
import '../../Core/constant/customText.dart';
import '../../Core/constant/customTextForm.dart';
import '../../Core/constant/font.dart';

class createNewTask extends StatefulWidget {
  const createNewTask({super.key});
  @override
  State<createNewTask> createState() => _createNewTaskState();
}

class _createNewTaskState extends State<createNewTask> {
  TextEditingController title=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.arrow_back),
        title: Center(
          child: customText(
            text: "Create New Task",
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
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            customText(
              text: "Task Title",
              fontfamily: fontFamily2,
              fontsize: 18,
              bold: true,
              color: color_title, max: 1,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CustomTextForm(
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "It mustn't be empty";
                }
                return null;
              },
              hinttext: "Hi-Fi Wireframe",
              mycontroller: title, prefixIcon: null, suffixIcon: null,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            customText(
              text: "Task Details",
              fontfamily: fontFamily2,
              fontsize: 18,
              bold: true,
              color: color_title, max: 1,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Please Enter Task Details ',
                hintStyle: TextStyle(
                  fontFamily: fontFamily2,
                  fontSize: 16,
                  color: Colors.grey[500],
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
                fillColor: Colors.grey[100],
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
                ),
              ),
              keyboardType: TextInputType.multiline,
              maxLines: null, // يسمح للنص بالتمدد لأكثر من سطر
              minLines: 3, // الحد الأدنى لعدد الأسطر
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            customText(
              text: "Add Team members",
              fontfamily: fontFamily2,
              fontsize: 18,
              bold: true,
              color: color_title, max: 1,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey[300],
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Row(
                      children: [
                        Expanded(
                          child: CircleAvatar(
                            radius: MediaQuery.of(context).size.width * 0.03,
                            backgroundColor: Colors.grey[400],
                            child: Icon(Icons.person,
                              size: MediaQuery.of(context).size.width * 0.025,
                              color: Colors.grey[300],
                            )  ,
                          ),
                        ),
                        Expanded(
                          child: customText(text: "Hadel",
                              fontfamily: fontFamily2,
                              fontsize: 14,
                              bold: true,
                              color: color_title,
                              max: 1
                          ),
                        ),
                        Expanded(
                            child: Icon(Icons.clear_outlined,
                              size: MediaQuery.of(context).size.width * 0.05,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey[300],
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Row(
                      children: [
                        Expanded(
                          child: CircleAvatar(
                            radius: MediaQuery.of(context).size.width * 0.03,
                            backgroundColor: Colors.grey[400],
                            child: Icon(Icons.person,
                              size: MediaQuery.of(context).size.width * 0.025,
                              color: Colors.grey[300],
                            )  ,
                          ),
                        ),
                        Expanded(
                          child: customText(text: "Farah",
                              fontfamily: fontFamily2,
                              fontsize: 14,
                              bold: true,
                              color: color_title,
                              max: 1
                          ),
                        ),
                        Expanded(
                            child: Icon(Icons.clear_outlined,
                              size: MediaQuery.of(context).size.width * 0.05,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.1,
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    color: springYellow,
                  ),
                  child: Center(child: Icon(Icons.add_box_outlined)),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            customText(
              text: "Time & Date",
              fontfamily: fontFamily2,
              fontsize: 18,
              bold: true,
              color: color_title, max: 1,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey[300],
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Row(
                      children: [
                        Container(
                          color:springYellow,
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: Icon(Icons.watch_later_outlined,
                            size: MediaQuery.of(context).size.width * 0.05,
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                        Expanded(
                          child: customText(text: "10:00  AM",
                              fontfamily: fontFamily2,
                              fontsize: 14,
                              bold: true,
                              color: color_title,
                              max: 1
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey[300],
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Row(
                      children: [
                        Container(
                          color:springYellow,
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: Icon(Icons.calendar_month_sharp,
                            size: MediaQuery.of(context).size.width * 0.05,
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                        Expanded(
                          child: customText(text: "25/11/2024",
                              fontfamily: fontFamily2,
                              fontsize: 14,
                              bold: true,
                              color: color_title,
                              max: 1
                          ),
                        ),

                      ],
                    ),
                  ),
                ),


              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Center(
              child: customText(text: "Add New",
                  fontfamily: fontFamily2,fontsize: 17,
                  bold: true,
                  color: color_title, max: 1),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.height * 0.08,
                color: springYellow,
                child: Center(
                  child: customText(text: "Create",
                      fontfamily: fontFamily2,fontsize: 17,
                      bold: true,
                      color: color_title, max: 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
