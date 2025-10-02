import 'package:day_tasks/Core/constant/font.dart';
import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm(
      {super.key,
      required this.mycontroller,
      required this.hinttext,
      required this.validator,
      required this.prefixIcon,
      required this.suffixIcon});
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final TextEditingController mycontroller;
  final String hinttext;
  final String? Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      validator: validator,
      controller: mycontroller,
      decoration: InputDecoration(
        hintText: hinttext,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(
          fontFamily: fontFamily2,
          fontSize: 16,
          color: Colors.grey[500],
        ),
        // filled: true,
        fillColor: Colors.grey[100],
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
