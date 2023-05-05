import 'package:better_player/better_player.dart';
import 'package:drone_sports/components/custom_appbar.dart';

import 'package:drone_sports/screens/home/events_cardview.dart';
import 'package:drone_sports/screens/home/popular_video_card.dart';
import 'package:drone_sports/screens/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String pageId = "Home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabID = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      appBar: const CustomAppBar(
        imageUrl: 'assets/images/logo.png',
      ),
      body: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(24)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Overview",
                style: TextStyle(
                    color: Colors.red[300], fontWeight: FontWeight.bold),
              ),
              Container(
                  width: 2,
                  height: 30,
                  decoration: const BoxDecoration(color: Colors.white)),
              const Text(
                "Live",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Container(
                  width: 2,
                  height: 30,
                  decoration: const BoxDecoration(color: Colors.white)),
              const Text(
                "Upcoming",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: Colors.red,
                child: const Text(
                  " Go Live ",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: BetterPlayer.network(
                    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
                    betterPlayerConfiguration: const BetterPlayerConfiguration(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      looping: false,
                      autoDispose: true,
                    ),
                  ),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(2)),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "FEATURED\nUDINESE  TV",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 18,
                      ),
                      Text(
                        "33100,Italy",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: const [
                      Icon(
                        Icons.live_tv_sharp,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        "Udiness tv",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: getProportionateScreenHeight(8)),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Popular Live Events",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        InkWell(
                          child: Text(
                            "View All >",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(8)),
                  Padding(
                    padding: const EdgeInsets.only(left: 3, right: 3, bottom: 5),
                    child: SizedBox(
                      height: getProportionateScreenHeight(120),
                      child: const EventCardView(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Popular Videos",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        InkWell(
                          child: Text(
                            "View All >",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Padding(
                    padding:const EdgeInsets.only(left: 3, right: 3, bottom: 5),
                    child: SizedBox(
                     height: getProportionateScreenHeight(120),
                      // color: Colors.white,
                      child:const PopularVideoCardview(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Sports Videos",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        InkWell(
                          child: Text(
                            "View All >",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                   Padding(
                    padding:const EdgeInsets.only(left: 3, right: 3, bottom: 5),
                    child: SizedBox(
                     height: getProportionateScreenHeight(120),
                      // color: Colors.white,
                      child:const PopularVideoCardview(),
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
