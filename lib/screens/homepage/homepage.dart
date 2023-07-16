import 'package:craftmyplate/constants/colors.dart';
import 'package:craftmyplate/constants/constraints.dart';
import 'package:craftmyplate/constants/images.dart';
import 'package:craftmyplate/screens/homepage/categories.dart';
import 'package:craftmyplate/screens/homepage/default_menu.dart';
import 'package:craftmyplate/screens/homepage/offer_list_tile.dart';
import 'package:craftmyplate/screens/homepage/platters.dart';
import 'package:craftmyplate/screens/homepage/services_container.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final offerlistTileText = [
    'Enjoy your first order, the taste of our delicious food!',
    'Delicious food\nfor happy life'
  ];
  final offerListtilePictures = [offer1png, offer1png];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            ),

            // first horizontal listview
            SizedBox(
              height: getScreenWidth(context) * 0.42,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  OfferListTile(
                      picture: offer1png,
                      text:
                          'Enjoy your first order, the taste of our delicious food!'),
                  OfferListTile(
                      picture: offer1png,
                      text: 'Delicious food\nfor happy life')
                ],
              ),
            ),

            // search food or events

            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(context) * 0.06,
                  vertical: getScreenWidth(context) * 0.04),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: getScreenWidth(context) * 0.015,
                    horizontal: getScreenWidth(context) * 0.03,
                  ),
                  suffixIcon: const Icon(
                    FeatherIcons.search,
                    color: purpleColor,
                  ),
                  // suffix:
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 0.5, color: Colors.black.withOpacity(0.1)),
                      borderRadius: BorderRadius.circular(8)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 0.5, color: Colors.black.withOpacity(0.1)),
                      borderRadius: BorderRadius.circular(8)),
                  hintText: 'Search food or events',
                  hintStyle: const TextStyle(
                      color: blackColor,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),

            // Start crafting
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(context) * 0.07,
                  vertical: getScreenWidth(context) * 0.01),
              child: Text(
                'Start crafting',
                style: TextStyle(
                    color: purpleColor,
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.w400,
                    fontSize: getScreenWidth(context) * 0.06),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(context) * 0.05),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Platter(
                    text: 'Default platter',
                    img: defaultPlatter,
                    width: 0.42,
                    height: 0.33,
                    fontSize: 0.04,
                  ),
                  Platter(
                    text: 'Craft your own',
                    img: craftYourOwn,
                    width: 0.42,
                    height: 0.33,
                    fontSize: 0.04,
                  )
                ],
              ),
            ),
            SizedBox(height: getScreenWidth(context) * 0.1),

            // default menu container
            Container(
              margin: EdgeInsets.only(left: getScreenWidth(context) * 0.04),
              height: getScreenWidth(context) * 0.42,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DefaultMenu(text: 'Default Menu 1'),
                  DefaultMenu(text: 'Default Menu 2'),
                  DefaultMenu(text: 'Default Menu 2'),
                  DefaultMenu(text: 'Default Menu 2'),
                  DefaultMenu(text: 'Default Menu 1'),
                ],
              ),
            ),

            // top categories
            Container(
                margin: EdgeInsets.symmetric(
                    horizontal: getScreenWidth(context) * 0.06),
                child: Text(
                  'Top Categories',
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w400,
                      fontSize: getScreenWidth(context) * 0.05),
                )),

            // category list view
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(context) * 0.06),
              height: getScreenWidth(context) * 0.3,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoriesContainer(
                      img: 'assets/pngs/image1.png', text: 'Starters'),
                  CategoriesContainer(
                      img: 'assets/pngs/image1.png', text: 'Drinks'),
                  CategoriesContainer(
                      img: 'assets/pngs/image1.png', text: 'Rice'),
                  CategoriesContainer(
                      img: 'assets/pngs/image1.png', text: 'Curry'),
                  CategoriesContainer(
                      img: 'assets/pngs/image1.png', text: 'Desserts'),
                  CategoriesContainer(
                      img: 'assets/pngs/image1.png', text: 'Starters'),
                ],
              ),
            ),

            // starters
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(context) * 0.06,
                  vertical: getScreenWidth(context) * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Starters',
                    style: TextStyle(
                        color: blackColor,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w400,
                        fontSize: getScreenWidth(context) * 0.05),
                  ),
                  Text(
                    'More Starters',
                    style: TextStyle(
                        color: purpleColor,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w400,
                        fontSize: getScreenWidth(context) * 0.035),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(context) * 0.06),
              height: getScreenWidth(context) * 0.28,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Platter(
                    text: 'Grill Chicken',
                    img: 'assets/pngs/grill_chicken.png',
                    width: 0.3,
                    height: 0.28,
                    fontSize: 0.035,
                  ),
                  Platter(
                    text: 'Mushroom Fry',
                    img: 'assets/pngs/mushroom_fry.png',
                    width: 0.3,
                    height: 0.28,
                    fontSize: 0.035,
                  ),
                  Platter(
                    text: 'Grill Chicken',
                    img: 'assets/pngs/grill_chicken.png',
                    width: 0.3,
                    height: 0.28,
                    fontSize: 0.035,
                  ),
                  Platter(
                    text: 'Mushroom Fry',
                    img: 'assets/pngs/mushroom_fry.png',
                    width: 0.3,
                    height: 0.28,
                    fontSize: 0.035,
                  ),
                  Platter(
                    text: 'Grill Chicken',
                    img: 'assets/pngs/grill_chicken.png',
                    width: 0.3,
                    height: 0.28,
                    fontSize: 0.035,
                  ),
                ],
              ),
            ),

            // main course

            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(context) * 0.06,
                  vertical: getScreenWidth(context) * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Main Course',
                    style: TextStyle(
                        color: blackColor,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w400,
                        fontSize: getScreenWidth(context) * 0.05),
                  ),
                  Text(
                    'More Main Course',
                    style: TextStyle(
                        color: purpleColor,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w400,
                        fontSize: getScreenWidth(context) * 0.035),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: getScreenWidth(context) * 0.06),
              height: getScreenWidth(context) * 0.28,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Platter(
                    text: 'Grill Chicken',
                    img: 'assets/pngs/grill_chicken.png',
                    width: 0.3,
                    height: 0.28,
                    fontSize: 0.035,
                  ),
                  Platter(
                    text: 'Mushroom Fry',
                    img: 'assets/pngs/mushroom_fry.png',
                    width: 0.3,
                    height: 0.28,
                    fontSize: 0.035,
                  ),
                  Platter(
                    text: 'Grill Chicken',
                    img: 'assets/pngs/grill_chicken.png',
                    width: 0.3,
                    height: 0.28,
                    fontSize: 0.035,
                  ),
                  Platter(
                    text: 'Mushroom Fry',
                    img: 'assets/pngs/mushroom_fry.png',
                    width: 0.3,
                    height: 0.28,
                    fontSize: 0.035,
                  ),
                  Platter(
                    text: 'Grill Chicken',
                    img: 'assets/pngs/grill_chicken.png',
                    width: 0.3,
                    height: 0.28,
                    fontSize: 0.035,
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: getScreenWidth(context) * 0.06, vertical: getScreenWidth(context) * 0.05),
              child: Text(
                'Services',
                style: TextStyle(
                    color: blackColor,
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.w400,
                    fontSize: getScreenWidth(context) * 0.05),
              ),
            ),
            ServiceContainer(icon: 'icon', img: 'img', isRecommended: true, text1: 'text1', text2: '', text3: 'text3', text4: 'text4')
          ],
        ),
      ),
    ));
  }
}
