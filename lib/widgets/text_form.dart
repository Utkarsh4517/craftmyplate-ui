import 'package:craftmyplate/constants/constraints.dart';
import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final TextEditingController controller;
  final Widget leading;
  final Widget trailing;
  final String hintText;
  const CustomTextForm({
    required this.controller,
    required this.leading,
    required this.trailing,
    required this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getScreenWidth(context) * 0.06)
          .copyWith(top: getScreenWidth(context) * 0.04),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          prefix: leading,
          contentPadding: EdgeInsets.symmetric(horizontal: getScreenWidth(context) * 0.02, vertical: getScreenWidth(context) * 0.04),
          hintText: hintText,
          hintStyle: const TextStyle(
              fontFamily: 'Lexend',
              color: Color(0xFFAAAAAA),
              fontWeight: FontWeight.w400),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(color: Color(0xFFD6D6D6)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(color: Color(0xFFD6D6D6)),
          ),
        ),
      ),
    );
  }
}
