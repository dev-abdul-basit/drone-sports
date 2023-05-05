import 'package:drone_sports/models/popular_videos_model.dart';
import 'package:flutter/material.dart';

class PopularVideoCardview extends StatefulWidget {
  static const String pageId = "Events";

  const PopularVideoCardview({super.key});

  @override
  State<PopularVideoCardview> createState() => _SportsScreenState();
}

class _SportsScreenState extends State<PopularVideoCardview> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: demopopular.length,
      itemBuilder: (context, index) {
        final events = demopopular[index];
        return Container(
          decoration: const BoxDecoration(),
          height: 70,
          width: 85,
          child: Card(
            color: const Color.fromARGB(255, 199, 195, 195),
            elevation: 2,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.asset(
                events.image,
                height: 40,
                width: 80,
                fit: BoxFit.cover,
              ),
              Container(
                width: 80,
                color: const Color.fromARGB(255, 199, 195, 195),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      events.title,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      events.description,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.start,
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
