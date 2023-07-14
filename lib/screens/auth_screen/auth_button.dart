import 'package:craftmyplate/constants/colors.dart';
import 'package:craftmyplate/constants/constraints.dart';
import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  final Function onTap;
  final String text;
  const CustomAuthButton({
    required this.onTap,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap;
      },
      child: Container(
        margin: EdgeInsets.all(getScreenWidth(context) * 0.06),
        padding:
            EdgeInsets.symmetric(vertical: getScreenWidth(context) * 0.035),
        decoration: BoxDecoration(
            color: purpleColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: whiteColor,
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w400,
                fontSize: getScreenWidth(context) * 0.04),
          ),
        ),
      ),
    );
  }
}
