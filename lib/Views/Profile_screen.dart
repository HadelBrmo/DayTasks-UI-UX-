import 'package:day_tasks/Core/constant/color.dart';
import 'package:day_tasks/Core/constant/customButton.dart';
import 'package:day_tasks/Core/constant/customText.dart';
import 'package:day_tasks/Core/constant/font.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../Core/constant/customTextForm.dart';

class Profile_Screen extends StatefulWidget {
  @override
  _Profile_ScreenState createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController task = TextEditingController();
  TextEditingController privacy = TextEditingController();
  TextEditingController setting = TextEditingController();
  File? _image;
  final picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    final pickedFile1 = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(100.0),
          child: customText(
            text: "Profile",
            fontfamily: fontFamily2,
            fontsize: screenWidth * 0.05,
            bold: true,
            color: color_title,
            max: 1,
          ),
        ),
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: screenHeight * 0.01,
            horizontal: screenWidth * 0.04,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 86,
                      backgroundColor: springYellow,
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 80,
                          backgroundColor: Colors.grey[350],
                          child: _image == null
                              ? Icon(Icons.person,
                            size: screenWidth * 0.25,
                            color: Colors.grey,
                          )  : Image.file(
                            _image!,
                            width: screenWidth * 0.4,
                            height: screenWidth * 0.4,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: springYellow,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.camera_alt, color: Colors.white),
                            onPressed: () {
                              _pickImage();
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                CustomTextForm(
                  mycontroller: name,
                  hinttext: 'Name',
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "It mustn't be empty";
                    }
                    return null;
                  },
                  prefixIcon: Icon(Icons.person_add_rounded),
                  suffixIcon: Icon(Icons.edit),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                CustomTextForm(
                  mycontroller: email,
                  hinttext: 'email',
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "It mustn't be empty";
                    }
                    return null;
                  },
                  prefixIcon: Icon(Icons.account_circle_outlined),
                  suffixIcon: Icon(Icons.edit),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                CustomTextForm(
                  mycontroller: password,
                  hinttext: 'Password',
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "It mustn't be empty";
                    }
                    return null;
                  },
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.edit),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                CustomTextForm(
                  mycontroller: task,
                  hinttext: 'Task',
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "It mustn't be empty";
                    }
                    return null;
                  },
                  prefixIcon: Icon(Icons.checklist_sharp),
                  suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                CustomTextForm(
                  mycontroller: privacy,
                  hinttext: 'Privacy',
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "It mustn't be empty";
                    }
                    return null;
                  },
                  prefixIcon: Icon(Icons.privacy_tip_rounded),
                  suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                CustomTextForm(
                  mycontroller: setting,
                  hinttext: 'Setting',
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "It mustn't be empty";
                    }
                    return null;
                  },
                  prefixIcon: Icon(Icons.settings),
                  suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: springYellow,
                  ),
                  width: screenWidth * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout,
                      color: color_text,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: customText(
                          text: "Logout",
                          fontfamily: fontFamily2,
                          fontsize: 25,
                          bold: true,
                          color: color_text, max: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
