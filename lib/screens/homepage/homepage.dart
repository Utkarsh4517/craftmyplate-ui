import 'package:craftmyplate/constants/colors.dart';
import 'package:craftmyplate/constants/constraints.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Hi, User Text
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(getScreenWidth(context) * 0.06)
                      .copyWith(bottom: 0),
                  child: Text(
                    'Hi, Monica!',
                    style: TextStyle(
                      color: purpleColor,
                      fontSize: getScreenWidth(context) * 0.07,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),

            // Row for Current Location and Tutorial video

            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(context) * 0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // current location column
                  Column(
                    children: [
                      // current location text
                      Text(
                        'Current location',
                        style: TextStyle(
                            color: const Color(0xFF7B7B7B),
                            fontFamily: 'Lexend',
                            fontWeight: FontWeight.w300,
                            fontSize: getScreenWidth(context) * 0.035),
                      ),

                      // current location with icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // map icon
                          Icon(
                            FeatherIcons.mapPin,
                            color: purpleColor,
                            size: getScreenWidth(context) * 0.03,
                          ),
                          Text(
                            ' Hyderabad',
                            style: TextStyle(
                              color: blackColor,
                              fontFamily: 'Lexend',
                              fontWeight: FontWeight.w400,
                              fontSize: getScreenWidth(context) * 0.035,
                            ),
                          )
                        ],
                      )
                    ],
                  ),

                  Column(
                    children: [
                      const Icon(
                        FeatherIcons.playCircle,
                        color: purpleColor,
                      ),
                      Text(
                        'How it works?',
                        style: TextStyle(
                            color: blackColor,
                            fontFamily: 'Lexend',
                            fontWeight: FontWeight.w300,
                            fontSize: getScreenWidth(context) * 0.03),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
