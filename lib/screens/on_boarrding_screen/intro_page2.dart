import 'package:craftmyplate/constants/constraints.dart';
import 'package:craftmyplate/constants/images.dart';
import 'package:craftmyplate/screens/on_boarrding_screen/body_text.dart';
import 'package:craftmyplate/screens/on_boarrding_screen/head_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            SizedBox(height: getScreenheight(context) * 0.2),
            SvgPicture.asset(page2svg, height: getScreenWidth(context) * 0.6,),
            SizedBox(height: getScreenheight(context) * 0.03),
            const IntroHeadText(text: 'Exquisite Catering'),
            const IntroBodyText(text: "Experience culinary artistry like never before with our innovative and exquisite cuisine creations"),
          ],
        ),
      )
    );
  }
}