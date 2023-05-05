import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:drone_sports/components/primary_btn.dart';
import 'package:drone_sports/constants.dart';
import 'package:drone_sports/tabs.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatefulWidget {
  static const String pageId = "Error";

  const ErrorScreen({super.key});

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
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

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const BottomMenuTabs()),
      );
    } else {
      // Navigate to the error page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ErrorScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/connection_failed.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            bottom: 230,
            child: Text(
              'Connection Failed',
              style: textStyleLargeOne.copyWith(color: kBgColor),
            ),
          ),
          Positioned(
            bottom: 170,
            child: Text(
              'Your connection is offline,\nplease check your connection.',
              style: textStyleSmallOne.copyWith(color: kBgColor),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: 100,
            left: 48,
            right: 48,
            child: PrimaryButton(
              btnText: 'Retry',
              primaryTextStyle: textStyleLargeOne,
              primaryBtnColor: kcolorPrimary,
              btnPress: () {
                _checkInternetConnectivity();
              },
            ),
          ),
        ],
      ),
    );
  }
}
