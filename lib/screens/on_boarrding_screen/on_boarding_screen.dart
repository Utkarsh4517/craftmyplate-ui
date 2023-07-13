import 'package:craftmyplate/screens/homepage/homepage.dart';
import 'package:craftmyplate/screens/on_boarrding_screen/intro_page1.dart';
import 'package:craftmyplate/screens/on_boarrding_screen/intro_page2.dart';
import 'package:craftmyplate/screens/on_boarrding_screen/intro_page3.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      body: Stack(
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
        ],
      ),
    );
  }
}
