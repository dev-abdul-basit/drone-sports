import 'package:drone_sports/constants.dart';
import 'package:drone_sports/models/myteam_model.dart';
import 'package:flutter/material.dart';

import '../../components/custom_appbar.dart';

class TeamsScreen extends StatefulWidget {
  static const String pageId = "Teams";

  const TeamsScreen({super.key});

  @override
  State<TeamsScreen> createState() => _TeamsScreenState();
}

class _TeamsScreenState extends State<TeamsScreen> {
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
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: kcolorPrimary,
                backgroundColor: ktextColor,
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Founder',
                        style: textStyleLargeOne,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Center(
                        child: Image.asset(
                          'assets/images/thumb_one.png',
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                        style: textStyleSmallOne,
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 23,
                      mainAxisSpacing: 25,
                    ),
                    itemCount: demoTeams.length,
                    itemBuilder: (context, index) {
                      final item = demoTeams[index];
                      return GridItem(
                        title: item.title,
                        image: item.image,
                        description: item.description,
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  const GridItem({
    super.key,
    required this.title,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textStyleLargeOne,
        ),
        const SizedBox(height: 4),
        Image.asset(
          image,
          height: 96,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 4),
        Expanded(
          child: Text(
            description,
            style: textStyleSmallTwo,
          ),
        ),
      ],
    );
  }
}
