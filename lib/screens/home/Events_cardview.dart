import 'package:flutter/material.dart';
import '../../models/popular_event_model.dart';

class EventCardView extends StatefulWidget {
  static const String pageId = "Events";

  const EventCardView({super.key});

  @override
  State<EventCardView> createState() => _SportsScreenState();
}

class _SportsScreenState extends State<EventCardView> {
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
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
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
