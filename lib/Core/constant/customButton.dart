import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart';
import 'customText.dart';
import 'font.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onTap});
  final String? text;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        height:MediaQuery.of(context).size.height * 0.07 ,
        color: springYellow,
        child: InkWell(
           onTap: (){
             onTap!();
           },
          child:Center(
            child: customText(text: text!,
                fontfamily: fontFamily2,
                fontsize: 25,
                bold: true,
                color: color_text, max: 1,
            ),
          ),
        ),
      ),
    );
  }
}
