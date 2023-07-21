import 'package:project1/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  // final int index ;
  final Color color ;
  final Color backgroundColor;
  final double size ;
  final Color borderColor;
  String? text;
  IconData? icon ;
  bool isIcon  ;

  AppButtons({this.isIcon = false ,  this.text , this.icon ,super.key , required this.color, required this.backgroundColor, required this.size, required this.borderColor });


  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right:10,),
        height:size,
        width:size,
        decoration: BoxDecoration(
            color:backgroundColor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                color: borderColor,
                width:1.0
            )
        ),
        child: Center(
          child:
          isIcon==false? AppText(
              text: text!,
              color:color) : Icon(
              icon
          ),
        )
    );
  }
}
