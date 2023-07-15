import 'package:craftmyplate/constants/colors.dart';
import 'package:craftmyplate/constants/constraints.dart';
import 'package:craftmyplate/constants/images.dart';
import 'package:craftmyplate/screens/auth_screen/auth_button.dart';
import 'package:craftmyplate/widgets/text_form.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginOrSignupPage extends StatefulWidget {
  const LoginOrSignupPage({super.key});

  @override
  State<LoginOrSignupPage> createState() => _LoginOrSignupPageState();
}

class _LoginOrSignupPageState extends State<LoginOrSignupPage> {
  final phoneController = TextEditingController();

  var verificationId = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                loginPageSvg,
                width: getScreenWidth(context),
              ),
              Positioned(
                  top: getScreenWidth(context) * 0.175,
                  left: getScreenWidth(context) * 0.41,
                  child: Image.asset(
                    logo,
                    height: getScreenWidth(context) * 0.2,
                  )),
              Positioned(
                  top: getScreenWidth(context) * 0.4,
                  left: getScreenWidth(context) * 0.33,
                  child: Text(
                    'CraftMyPlate',
                    style: TextStyle(
                      fontSize: getScreenWidth(context) * 0.06,
                      color: whiteColor,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w400,
                    ),
                  ))
            ],
          ),
          SizedBox(height: getScreenheight(context) * 0.05),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: getScreenWidth(context) * 0.06),
            child: Text(
              'Login or Signup',
              style: TextStyle(
                color: const Color(0xFF787878),
                fontSize: getScreenWidth(context) * 0.04,
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          CustomTextForm(
            controller: phoneController,
            leading: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: getScreenWidth(context) * 0.02),
                child: const Text('+91',
                    style: TextStyle(
                        color: blackColor,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w400))),
            trailing: Container(),
            hintText: 'Enter Phone Number',
          ),
          CustomAuthButton(
            onTap: () {},
            text: 'Continue',
          )
        ],
      ),
    );
  }

  Future<void> phoneAuthentication(String phoneNumber) async {
    final auth = FirebaseAuth.instance;
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (credential) async {
        await auth.signInWithCredential(credential);
      },
      verificationFailed: (e) {},
      codeSent: (verificationId, resendToken) {},
      codeAutoRetrievalTimeout: (verificationId) {},
    );
  }
}
