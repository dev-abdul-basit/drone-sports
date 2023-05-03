class SportsModel {
  final int id;
  final String title, viewers;
  final String image;

  SportsModel({
    required this.id,
    required this.image,
    required this.title,
    required this.viewers,
  });
}

// Our demo Sports

List<SportsModel> demoSports = [
  SportsModel(
    id: 1,
    image: "assets/images/baseball.png",
    title: "Baseball",
    viewers: "1.5k viewers",
  ),
  SportsModel(
    id: 2,
    image: "assets/images/football.png",
    title: "Football",
    viewers: "1.5k viewers",
  ),
  SportsModel(
    id: 3,
    image: "assets/images/basketball.png",
    title: "Basketball",
    viewers: "1.5k viewers",
  ),
  SportsModel(
    id: 4,
    image: "assets/images/volleyball.png",
    title: "Volleyball",
    viewers: "1.5k viewers",
  ),
  SportsModel(
    id: 5,
    image: "assets/images/table_tennis.png",
    title: "Tabel tennis",
    viewers: "1.5k viewers",
  ),
  SportsModel(
    id: 6,
    image: "assets/images/volleyball.png",
    title: "Fifa 23",
    viewers: "1.5k viewers",
  ),
  SportsModel(
    id: 7,
    image: "assets/images/basketball.png",
    title: "Basketball",
    viewers: "1.5k viewers",
  ),
  SportsModel(
    id: 8,
    image: "assets/images/volleyball.png",
    title: "Volleyball",
    viewers: "1.5k viewers",
  ),
  SportsModel(
    id: 9,
    image: "assets/images/table_tennis.png",
    title: "Tabel tennis",
    viewers: "1.5k viewers",
  ),
  SportsModel(
    id: 10,
    image: "assets/images/volleyball.png",
    title: "Fifa 23",
    viewers: "1.5k viewers",
  ),
];
