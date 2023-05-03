import 'package:drone_sports/constants.dart';
import 'package:drone_sports/screens/home/home_screen.dart';
import 'package:drone_sports/screens/my_teams/teams_screen.dart';
import 'package:drone_sports/screens/search/search_screen.dart';
import 'package:drone_sports/screens/sports/sports_screen.dart';
import 'package:flutter/material.dart';

class BottomMenuTabs extends StatefulWidget {
  const BottomMenuTabs({Key? key}) : super(key: key);

  static const String pageId = "Tabs";

  @override
  State<BottomMenuTabs> createState() => _BottomMenuTabsState();
}

class _BottomMenuTabsState extends State<BottomMenuTabs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: (TabBar(
            labelColor: kcolorPrimary,
            indicatorColor: Colors.transparent,
            unselectedLabelColor: kcolorPrimary,
            labelPadding: const EdgeInsets.symmetric(horizontal: 0),
            labelStyle: const TextStyle(
              fontFamily: 'regular',
              fontSize: 12,
            ),
            onTap: (int index) => setState(() => _currentIndex = index),
            tabs: [
              Tab(
                icon: _currentIndex == 0
                    ? Column(
                        children: [
                          Image.asset(
                            'assets/images/menu.png',
                            width: 24,
                            height: 24,
                          ),
                          const Text(
                            'Home',
                            style: textStyleBlueTwo,
                          ),
                        ],
                      )
                    : Column(
                        children: const [
                          Icon(
                            Icons.home,
                            color: ktextColor,
                          ),
                          Text(
                            'Home',
                            style: textStyleSmallOne,
                          ),
                        ],
                      ),
              ),
              Tab(
                icon: _currentIndex == 1
                    ? Column(
                        children: [
                          Image.asset(
                            'assets/images/menu.png',
                            width: 24,
                            height: 24,
                          ),
                          const Text(
                            'My Team',
                            style: textStyleBlueTwo,
                          ),
                        ],
                      )
                    : Column(
                        children: const [
                          Icon(
                            Icons.groups_3_rounded,
                            color: ktextColor,
                          ),
                          Text(
                            'My Team',
                            style: textStyleSmallOne,
                          ),
                        ],
                      ),
              ),
              Tab(
                icon: _currentIndex == 2
                    ? Column(
                        children: [
                          Image.asset(
                            'assets/images/menu.png',
                            width: 24,
                            height: 24,
                          ),
                          const Text(
                            'Sports',
                            style: textStyleBlueTwo,
                          ),
                        ],
                      )
                    : Column(
                        children: const [
                          Icon(
                            Icons.screen_share_rounded,
                            color: ktextColor,
                          ),
                          Text(
                            'Sports',
                            style: textStyleSmallOne,
                          ),
                        ],
                      ),
              ),
              Tab(
                icon: _currentIndex == 3
                    ? Column(
                        children: [
                          Image.asset(
                            'assets/images/menu.png',
                            width: 24,
                            height: 24,
                          ),
                          const Text(
                            'Search',
                            style: textStyleBlueTwo,
                          ),
                        ],
                      )
                    : Column(
                        children: const [
                          Icon(
                            Icons.search,
                            color: ktextColor,
                          ),
                          Text(
                            'Search',
                            style: textStyleSmallOne,
                          ),
                        ],
                      ),
              ),
            ],
          )),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomeScreen(),
            TeamsScreen(),
            SportsScreen(),
            SearchScreen(),
          ],
        ),
      ),
    );
  }
}
