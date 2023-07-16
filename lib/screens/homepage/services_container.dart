import 'package:craftmyplate/constants/colors.dart';
import 'package:craftmyplate/constants/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ServiceContainer extends StatelessWidget {
  final String img;
  final String icon;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final bool isRecommended;
  const ServiceContainer({
    required this.icon,
    required this.img,
    required this.isRecommended,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getScreenWidth(context) * 0.04),
      width: getScreenWidth(context) * 0.75,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        color: whiteColor,
        surfaceTintColor: whiteColor,
        elevation: 5,
        child: Stack(
          children: [
            // positioned recommended

            Positioned(
              child: Container(
                margin: EdgeInsets.all(getScreenWidth(context) * 0.051),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(img),
                    ),
                    SizedBox(height: getScreenWidth(context) * 0.02),
                    Row(
                      children: [
                        Image.asset(icon),
                        Text(
                          ' Signature',
                          style: TextStyle(
                              color: purpleColor,
                              fontFamily: 'Lexend',
                              fontSize: getScreenWidth(context) * 0.05,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(height: getScreenWidth(context) * 0.01),
                    Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/svgs/sparkle.svg'),
                            Flexible(
                              child: Text(' $text1',
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: blackColor,
                                      fontFamily: 'Lexend',
                                      fontWeight: FontWeight.w300,
                                      fontSize:
                                          getScreenWidth(context) * 0.035)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/svgs/sparkle.svg'),
                            Flexible(
                              child: Text(
                                  ' $text2',
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: blackColor,
                                      fontFamily: 'Lexend',
                                      fontWeight: FontWeight.w300,
                                      fontSize:
                                          getScreenWidth(context) * 0.035)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/svgs/sparkle.svg'),
                            Flexible(
                              child: Text(' $text3',
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: blackColor,
                                      fontFamily: 'Lexend',
                                      fontWeight: FontWeight.w300,
                                      fontSize:
                                          getScreenWidth(context) * 0.035)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/svgs/sparkle.svg'),
                            Flexible(
                              child: Text(
                                  ' $text4',
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: blackColor,
                                      fontFamily: 'Lexend',
                                      fontWeight: FontWeight.w300,
                                      fontSize:
                                          getScreenWidth(context) * 0.035)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: getScreenWidth(context) * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Know More',
                          style: TextStyle(
                              color: purpleColor,
                              fontFamily: 'Lexend',
                              fontWeight: FontWeight.w500,
                              fontSize: getScreenWidth(context) * 0.035),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: getScreenWidth(context) * 0.48,
              child: Visibility(
                visible: isRecommended,
                child: Container(
                  width: getScreenWidth(context) * 0.25,
                  height: getScreenWidth(context) * 0.08,
                  decoration: const BoxDecoration(
                      color: purpleColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6),
                          bottomLeft: Radius.circular(6))),
                  child: Center(
                      child: Text(
                    'Recommended',
                    style: TextStyle(
                        color: whiteColor,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w400,
                        fontSize: getScreenWidth(context) * 0.03),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
