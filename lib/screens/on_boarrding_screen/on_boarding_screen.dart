import 'package:craftmyplate/constants/colors.dart';
import 'package:craftmyplate/constants/constraints.dart';
import 'package:craftmyplate/screens/homepage/homepage.dart';
import 'package:craftmyplate/screens/on_boarrding_screen/intro_page1.dart';
import 'package:craftmyplate/screens/on_boarrding_screen/intro_page2.dart';
import 'package:craftmyplate/screens/on_boarrding_screen/intro_page3.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();

  bool onLastPage = false;

  void _completeOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('hasSeenOnboarding', true);
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const HomePage())); // PageViewHome()
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 2);
                });
              },
              controller: _controller,
              children: const [IntroPage1(), IntroPage2(), IntroPage3()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(getScreenWidth(context) * 0.04),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(
                      color: purpleBg, borderRadius: BorderRadius.circular(5)),
                  child: const Text('Skip',
                      style: TextStyle(
                          color: purpleColor,
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w400)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: const AlignmentDirectional(0, 0.65),
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      dotColor: const Color(0xffE0D4EC),
                      activeDotColor: purpleColor,
                      dotWidth: getScreenWidth(context) * 0.033,
                      dotHeight: getScreenWidth(context) * 0.033,
                    ),
                  ),
                ),
              ],
            ),
            // next page button

            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              alignment: const AlignmentDirectional(0, 0.87),
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                      if (onLastPage) _completeOnboarding();
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      width: onLastPage
                          ? getScreenWidth(context) * 0.45
                          : getScreenWidth(context) * 0.15,
                      height: onLastPage
                          ? getScreenWidth(context) * 0.15
                          : getScreenWidth(context) * 0.15,
                      // padding: EdgeInsets.all(getScreenWidth(context) * 0.025),
                      decoration: BoxDecoration(
                          color: purpleBg,
                          borderRadius: BorderRadius.circular(
                              getScreenWidth(context) * 0.1)),
                      child: Row(
                        mainAxisAlignment: onLastPage
                            ? MainAxisAlignment.spaceEvenly
                            : MainAxisAlignment.center,
                        children: [
                          if (onLastPage)
                            const Text(
                              'Get Started',
                              style: TextStyle(
                                color: purpleColor,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          Container(
                            padding:
                                EdgeInsets.all(getScreenWidth(context) * 0.02),
                            decoration: const BoxDecoration(
                              color: purpleColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              FeatherIcons.arrowRight,
                              color: whiteColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
