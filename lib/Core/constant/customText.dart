import 'package:flutter/material.dart';


class customText extends StatelessWidget {
   customText({super.key,required this.text,
     required this.fontfamily,
     required this.fontsize,
     required this.bold,
     required this.color,
     required this.max,
   });
   int max;
  String text;
  String fontfamily;
  double fontsize;
  bool bold;
  Color color;
  @override
  Widget build(BuildContext context) {
    return  Text(
      maxLines:max,
      overflow: TextOverflow.ellipsis,
      text,
      style: TextStyle(
        fontFamily:fontfamily,
        color: color,
        fontSize: fontsize,
        fontWeight: bold? FontWeight.bold:FontWeight.normal,
      ),
    );
  }
}
