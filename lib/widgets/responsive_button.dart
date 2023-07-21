import 'package:project1/misc/colors.dart';
import 'package:project1/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;

  const ResponsiveButton({
    super.key,
    this.width,
    this.isResponsive = false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height:60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isResponsive==true? AppText(text: "Book Trip now" , color: Colors.white) : Text(''),
          Image.asset("assets/images/button-one.png"),
        ],
      ),
    );
  }
}
