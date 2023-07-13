import 'package:craftmyplate/constants/constraints.dart';
import 'package:craftmyplate/constants/images.dart';
import 'package:craftmyplate/screens/on_boarrding_screen/body_text.dart';
import 'package:craftmyplate/screens/on_boarrding_screen/head_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            SizedBox(height: getScreenheight(context) * 0.2),
            SvgPicture.asset(page1svg, height: getScreenWidth(context) * 0.6,),
            SizedBox(height: getScreenheight(context) * 0.03),
            const IntroHeadText(text: 'Create Your Own Plate'),
            const IntroBodyText(text: "Create unforgettable memories with our unique feature to curate your favorite cuisines and food, tailored to your special occasion."),
          ],
        ),
      )
    );
  }
}