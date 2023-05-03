import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:drone_sports/constants.dart';
import 'package:drone_sports/screens/error_screen/error_screen.dart';
import 'package:drone_sports/screens/welcome_screen/welcome_screen.dart';
import 'package:drone_sports/tabs.dart';

import 'package:flutter/material.dart';

import '../size_config.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isConnectedToInternet = false;

  @override
  void initState() {
    _checkInternetConnectivity();
    super.initState();
  }

  Future<void> _checkInternetConnectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      setState(() {
        _isConnectedToInternet = true;
      });
    } else {
      setState(() {
        _isConnectedToInternet = false;
      });
    }
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() {
    if (_isConnectedToInternet) {
      // Navigate to the home page
      navigateToHomeScreen();
    } else {
      // Navigate to the error page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ErrorScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: double.infinity,
              height: 350,
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
          ),
          const Center(
            child: CircularProgressIndicator(
              color: kcolorPrimary,
              backgroundColor: ktextColor,
            ),
          ),
        ],
      ),
    );
  }

  void navigateToHomeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const WelcomeScreen(),
        ),
      );
    });
  }
}
