import 'package:drone_sports/constants.dart';
import 'package:drone_sports/screens/auth/auth_screen.dart';
import 'package:drone_sports/screens/error_screen/error_screen.dart';
import 'package:drone_sports/screens/home/home_screen.dart';
import 'package:drone_sports/screens/my_teams/teams_screen.dart';
import 'package:drone_sports/screens/search/search_screen.dart';
import 'package:drone_sports/screens/splash_screen/splash_screen.dart';
import 'package:drone_sports/screens/sports/sports_screen.dart';
import 'package:drone_sports/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        title: 'Twitter Clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: kcolorPrimary,
            fontFamily: 'regular',
            scaffoldBackgroundColor: kBgColor),
        home: const SplashScreen(),
        routes: {
          BottomMenuTabs.pageId: (context) => BottomMenuTabs(),
          WelcomeScreen.pageId: (context) => WelcomeScreen(),
          AuthScreen.pageId: (context) => AuthScreen(),
          HomeScreen.pageId: (context) => HomeScreen(),
          TeamsScreen.pageId: (context) => TeamsScreen(),
          SportsScreen.pageId: (context) => SportsScreen(),
          SearchScreen.pageId: (context) => SearchScreen(),
          ErrorScreen.pageId: (context) => ErrorScreen(),
        },
      ),
    );
  }
}
