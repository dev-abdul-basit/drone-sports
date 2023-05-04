import 'package:drone_sports/constants.dart';
import 'package:flutter/material.dart';

import '../../components/custom_appbar.dart';
import '../../models/popular_event_model.dart';
import '../../models/sports_model.dart';

class EventCardview extends StatefulWidget {
  static const String pageId = "Events";

  const EventCardview({super.key});

  @override
  State<EventCardview> createState() => _SportsScreenState();
}

class _SportsScreenState extends State<EventCardview> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // bool _isLoading = true;

  @override
  // void initState() {
  //   super.initState();
  //   // Simulate loading data from an API or database
  //   Future.delayed(const Duration(seconds: 1), () {
  //     setState(() {
  //       _isLoading = false;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: demoevents.length,
      itemBuilder: (context, index) {
        final events = demoevents[index];
        return Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
          height: 70,
          width: 85,
          child: Card(
            color: Color.fromARGB(255, 199, 195, 195),
            elevation: 2,
            child: Column(children: [
              Image.asset(
                events.image,
                height: 40,
                width: 80,
                fit: BoxFit.fill,
              ),
              Container(
                width: 80,
                color: Color.fromARGB(255, 199, 195, 195),
                child: Column(
                  children: [
                    Text(
                      events.title,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      events.description,
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}
