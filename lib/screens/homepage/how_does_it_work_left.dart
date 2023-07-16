import 'package:craftmyplate/constants/colors.dart';
import 'package:craftmyplate/constants/constraints.dart';
import 'package:flutter/material.dart';

class HowDoesItWorkLeft extends StatelessWidget {
  final String img;
  final String headText;
  final String bodyText;
  const HowDoesItWorkLeft({
    required this.img,
    required this.headText,
    required this.bodyText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getScreenWidth(context) * 0.06),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(img),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(headText,
                  style: TextStyle(
                      color: purpleColor,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w500,
                      fontSize: getScreenWidth(context) * 0.04)),
              SizedBox(
                width: getScreenWidth(context) * 0.5,
                child: Text(
                  bodyText,
                  style: TextStyle(
                      color: blackColor,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w300,
                      fontSize: getScreenWidth(context) * 0.035),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
