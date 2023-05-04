class PopularEvents {
  final int id;
  final String title, description;
  final String image;

  PopularEvents({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
  });
}

// Our demo Sports

List<PopularEvents> demopopular = [
  PopularEvents(
    id: 1,
    image: "assets/images/baseball.png",
    title: "Banma Tv",
    description: " On\n Udinese Tv",
  ),
  PopularEvents(
    id: 2,
    image: "assets/images/football.png",
    title: "Banma Tv",
    description: "On \n Udinese Tv",
  ),
  PopularEvents(
    id: 3,
    image: "assets/images/basketball.png",
    title: "Banma Tv",
    description: "On \n Udinese Tv",
  ),
  PopularEvents(
    id: 4,
    image: "assets/images/volleyball.png",
    title: "Banma Tv",
    description: "On \n Udinese Tv",
  ),
  PopularEvents(
    id: 5,
    image: "assets/images/table_tennis.png",
    title: "Banma Tv",
    description: "On \n Udinese Tv",
  ),
  PopularEvents(
    id: 6,
    image: "assets/images/volleyball.png",
    title: "Banma Tv",
    description: "On \n Udinese Tv",
  ),
  PopularEvents(
    id: 7,
    image: "assets/images/basketball.png",
    title: "Banma Tv",
    description: "On \n Udinese Tv",
  ),
  PopularEvents(
    id: 8,
    image: "assets/images/volleyball.png",
    title: "Banma Tv",
    description: "On \n dinese Tv",
  ),
  // PopularEvents(
  //   id: 9,
  //   image: "assets/images/table_tennis.png",
  //   title: "Tabel tennis",
  //   description: "1.5k viewers",
  // ),
  // PopularEvents(
  //   id: 10,
  //   image: "assets/images/volleyball.png",
  //   title: "Fifa 23",
  //   description: "1.5k viewers",
  // ),
];
