import 'package:craftmyplate/constants/constraints.dart';
import 'package:flutter/material.dart';

class IntroHeadText extends StatelessWidget {
  final String text;
  const IntroHeadText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style:  TextStyle(
          color: const Color(0xFF030303),
          fontSize: getScreenWidth(context) * 0.07,
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
