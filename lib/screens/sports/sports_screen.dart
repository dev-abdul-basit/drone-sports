import 'package:drone_sports/constants.dart';
import 'package:flutter/material.dart';

import '../../components/custom_appbar.dart';
import '../../models/sports_model.dart';

class SportsScreen extends StatefulWidget {
  static const String pageId = "Sports";

  const SportsScreen({super.key});

  @override
  State<SportsScreen> createState() => _SportsScreenState();
}

class _SportsScreenState extends State<SportsScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate loading data from an API or database
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: const CustomAppBar(
        imageUrl: 'assets/images/logo.png',
      ),
      body: Padding(
        padding: const EdgeInsets.all(4),
        child: _isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: kcolorPrimary,
                  backgroundColor: ktextColor,
                ),
              )
            : ListView.builder(
                itemCount: demoSports.length,
                itemBuilder: (context, index) {
                  final sport = demoSports[index];
                  return ListTile(
                    leading: Image.asset(
                      sport.image,
                      height: 72,
                      width: 72,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      sport.title,
                      style: textStyleLargeOne,
                    ),
                    subtitle: Text(
                      sport.viewers,
                      style: textStyleSmallOne,
                    ),
                  );
                },
              ),
      ),
    );
  }
}
