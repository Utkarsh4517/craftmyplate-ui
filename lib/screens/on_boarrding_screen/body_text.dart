import 'package:craftmyplate/constants/constraints.dart';
import 'package:flutter/material.dart';

class IntroBodyText extends StatelessWidget {
  final String text;
  const IntroBodyText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getScreenWidth(context) * 0.07),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: const Color(0xFF7B7B7B),
          fontSize: getScreenWidth(context) * 0.042,
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w300,
          height: getScreenWidth(context) * 0.0035,
        ),
      ),
    );
  }
}
