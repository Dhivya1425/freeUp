import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  String text;
  int? maxLines;
  double? fontSize;
  FontWeight? fontWeight;

  CustomText({Key? key, required this.text, this.maxLines,this.fontSize,this.fontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, maxLines: maxLines, style: TextStyle(fontSize:fontSize,fontWeight: fontWeight
    ),);
  }
}
