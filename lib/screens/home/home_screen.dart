import 'package:better_player/better_player.dart';
import 'package:drone_sports/components/custom_appbar.dart';
import 'package:drone_sports/constants.dart';
import 'package:drone_sports/screens/home/Events_cardview.dart';
import 'package:drone_sports/screens/home/popular_video_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String pageId = "Home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabID = 1;

  // String videoUrl =
  //     "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      appBar: const CustomAppBar(
        imageUrl: 'assets/images/logo.png',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Container(
                    width: 2,
                    height: 30,
                    decoration: const BoxDecoration(color: Colors.white)),
                const Text(
                  "Upcoming",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: const Text(
                    " Go Live ",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.red,
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 270,
                  child: AspectRatio(
                    aspectRatio: 16 / 8,
                    child: BetterPlayer.file(
                      "assets/images/footbal.mp4",
                      betterPlayerConfiguration:
                          const BetterPlayerConfiguration(
                        aspectRatio: 16 / 8,
                      ),
                    ),
                  ),
                  // height: 300,
                  // child: Expanded(
                  // child: AspectRatio(
                  //     aspectRatio: 16 / 8,
                  //     child: BetterPlayer.network(
                  //       "assets/images/footbal.mp4",
                  //       betterPlayerConfiguration:
                  //           BetterPlayerConfiguration(aspectRatio: 16 / 8),
                  //     )),
                  //),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "FEATURED \nUDINESE  TV",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 18,
                          ),
                          const Text(
                            "33100,Italy",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Container(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.live_tv_sharp,
                            color: Colors.white,
                            size: 15,
                          ),
                          const Text(
                            "Udiness tv",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Live Events",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  const InkWell(
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
            const Padding(
              padding: EdgeInsets.only(left: 3, right: 3, bottom: 5),
              child: SizedBox(
                height: 100,
                // color: Colors.white,
                child: EventCardview(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Videos",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  const InkWell(
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
            const Padding(
              padding: EdgeInsets.only(left: 3, right: 3, bottom: 5),
              child: SizedBox(
                height: 100,
                // color: Colors.white,
                child: PopularVideoCardview(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Sports Videos",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  const InkWell(
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
            const Padding(
              padding: EdgeInsets.only(left: 3, right: 3, bottom: 5),
              child: SizedBox(
                height: 100,
                // color: Colors.white,
                child: PopularVideoCardview(),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
