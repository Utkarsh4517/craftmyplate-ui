import 'package:craftmyplate/constants/constraints.dart';
import 'package:craftmyplate/constants/images.dart';
import 'package:craftmyplate/screens/on_boarrding_screen/body_text.dart';
import 'package:craftmyplate/screens/on_boarrding_screen/head_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            SizedBox(height: getScreenheight(context) * 0.2),
            SvgPicture.asset(page3svg, height: getScreenWidth(context) * 0.6,),
            SizedBox(height: getScreenheight(context) * 0.03),
            const IntroHeadText(text: 'Personal Order Executive'),
            const IntroBodyText(text: "Embark on a personalized culinary journey with our dedicated one-to-one customer support, ensuring a seamless and satisfying experience every step of the way."),
          ],
        ),
      )
    );
  }
}