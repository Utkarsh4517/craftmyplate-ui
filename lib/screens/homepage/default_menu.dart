import 'package:craftmyplate/constants/colors.dart';
import 'package:craftmyplate/constants/constraints.dart';
import 'package:craftmyplate/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultMenu extends StatelessWidget {
  final String text;
  const DefaultMenu({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: getScreenWidth(context) * 0.04),
      width: getScreenWidth(context) * 0.5,
      height: getScreenWidth(context) * 0.5,
      
      child: Stack(
        children: [
          Positioned(
            right: 20,
            // bottom: 100,
            child: SizedBox(
              width: getScreenWidth(context) * 0.42,
              height: getScreenWidth(context) * 0.38,
              child: const Card(
                surfaceTintColor: whiteColor,
                elevation: 5,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 0,
            child: Card(
              elevation: 10,
              surfaceTintColor: whiteColor,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(getScreenWidth(context) * 0.42)),
              child: Image.asset(
                defaultMenu,
                width: getScreenWidth(context) * 0.18,
              ),
            ),
          ),

          // default menu text
          Positioned(
            top: 5,
            left: 30,
            child: Text(
              text,
              style: TextStyle(
                  color: blackColor,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w500,
                  fontSize: getScreenWidth(context) * 0.04),
            ),
          ),

          // details text
          Positioned(
            top: 40,
            left: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('3 starters',
                    style: TextStyle(
                        color: blackColor,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w300,
                        fontSize: getScreenWidth(context) * 0.025)),
                Text('3 maincourse',
                    style: TextStyle(
                        color: blackColor,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w300,
                        fontSize: getScreenWidth(context) * 0.025)),
                Text('3 desserts',
                    style: TextStyle(
                        color: blackColor,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w300,
                        fontSize: getScreenWidth(context) * 0.025)),
                Text('3 drinks',
                    style: TextStyle(
                        color: blackColor,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w300,
                        fontSize: getScreenWidth(context) * 0.025)),
              ],
            ),
          ),

          // minimum
          Positioned(
            top: 110,
            left: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  userPic,
                  width: getScreenWidth(context) * 0.025,
                ),
                Text(
                  ' Min 800',
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      color: const Color(0xFF7E7E7E),
                      fontWeight: FontWeight.w400,
                      fontSize: getScreenWidth(context) * 0.025),
                )
              ],
            ),
          ),

          Positioned(
            top: 125,
            left: 35,
              child: Text(
            'Starts at ₹ 777',
            style: TextStyle(
                color: purpleColor,
                fontWeight: FontWeight.w400,
                fontFamily: 'Lexend',
                fontSize: getScreenWidth(context) * 0.035),
          ))
        ],
      ),
    );
  }
}
