import 'package:craftmyplate/constants/colors.dart';
import 'package:craftmyplate/constants/constraints.dart';
import 'package:flutter/material.dart';

class CategoriesContainer extends StatelessWidget {
  final String img;
  final String text;
  const CategoriesContainer({
    required this.img,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(getScreenWidth(context) * 0.02),
      child: Column(
        children: [
          Image.asset(img, width: getScreenWidth(context) * 0.18,),
          Text(text, style: TextStyle(color: blackColor, fontFamily: 'Lexend', fontWeight: FontWeight.w300, fontSize: getScreenWidth(context) * 0.03),)
        ],
      ),
    );
  }
}
