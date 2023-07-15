import 'package:craftmyplate/constants/colors.dart';
import 'package:craftmyplate/constants/constraints.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class OfferListTile extends StatelessWidget {
  final String picture;
  final String text;
  const OfferListTile({
    required this.picture,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getScreenWidth(context) * 0.06,
        vertical: getScreenWidth(context) * 0.03,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image.asset(picture),
            Positioned(
              top: 15,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: getScreenWidth(context) * 0.45,
                    child: Text(
                      text,
                      style: TextStyle(
                        color: whiteColor,
                        fontFamily: 'Lexend',
                        fontSize: getScreenWidth(context) * 0.047,
                        height: getScreenWidth(context) * 0.0029,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: getScreenWidth(context) * 0.01),
                  DottedBorder(
                    color: const Color(0xFF7B7B7B),
                    child: Padding(
                      padding: EdgeInsets.all(getScreenWidth(context) * 0.02)
                          .copyWith(
                        left: getScreenWidth(context) * 0.06,
                        right: getScreenWidth(context) * 0.06,
                      ),
                      child: const Text(
                        '  FIRSTPLATE01  ',
                        style: TextStyle(
                            color: whiteColor,
                            fontFamily: 'Lexend',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
