import 'package:craftmyplate/constants/colors.dart';
import 'package:craftmyplate/constants/constraints.dart';
import 'package:flutter/material.dart';

class Platter extends StatelessWidget {
  final String text;
  final String img;
  final double width;
  final double height;
  final double fontSize;
  const Platter({
    required this.text,
    required this.img,
    required this.height,
    required this.width,
    required this.fontSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getScreenWidth(context) * 0.01),
      width: getScreenWidth(context) * width,
      height: getScreenWidth(context) * height,
      child: Card(
        color: Colors.white,
        surfaceTintColor: whiteColor,
        elevation: 5,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image.asset(img),
            ),
            SizedBox(height: getScreenWidth(context) * 0.01),
            Text(
              text,
              style: TextStyle(
                  color: blackColor,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w400,
                  fontSize: getScreenWidth(context) * fontSize),
            )
          ],
        ),
      ),
    );
  }
}
