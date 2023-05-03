import 'package:drone_sports/components/primary_btn.dart';
import 'package:drone_sports/components/secondary_btn.dart';
import 'package:drone_sports/constants.dart';
import 'package:drone_sports/screens/auth/auth_screen.dart';
import 'package:drone_sports/screens/size_config.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String pageId = "Welcome";

  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(children: [
          SizedBox(height: getProportionateScreenHeight(48)),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 350,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              const Positioned(
                top: 18,
                child: Text(
                  'Welcome to',
                  style: headingStyleOne,
                  textAlign: TextAlign.center,
                ),
              ),
              const Positioned(
                bottom: 18,
                child: Text(
                  'Join us Today',
                  style: headingStyleOne,
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(48)),
          PrimaryButton(
            primaryBtnColor: kcolorPrimary,
            primaryTextStyle: textStyleLargeOne,
            btnText: 'Login',
            btnPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AuthScreen(),
                ),
              );
            },
          ),
          SizedBox(height: getProportionateScreenHeight(24)),
          SecondaryButton(
              primaryBtnColor: kcolorPrimary,
              primaryTextStyle: textStyleLargeOne,
              btnText: 'Register',
              btnPress: () {})
        ]),
      ),
    );
  }
}
