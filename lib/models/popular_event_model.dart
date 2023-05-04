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

List<PopularEvents> demoevents = [
  PopularEvents(
    id: 1,
    image: "assets/images/channel1.jpg",
    title: "Udinese Tv",
    description: "On \n  Udinese Tv",
  ),
  PopularEvents(
    id: 2,
    image: "assets/images/channel2.jpg",
    title: "Arise Tv",
    description: " On \n Oil & Gas",
  ),
  PopularEvents(
    id: 3,
    image: "assets/images/channel3.png",
    title: "Denail",
    description: " On \n VITOTVO",
  ),
  PopularEvents(
    id: 4,
    image: "assets/images/channel5.jpg",
    title: "Felt soul",
    description: " On \n Basketball",
  ),
  PopularEvents(
    id: 5,
    image: "assets/images/channel1.jpg",
    title: "Tabel tennis",
    description: "1.5k viewers",
  ),
  // PopularEvents(
  //   id: 6,
  //   image: "assets/images/volleyball.png",
  //   title: "Fifa 23",
  //   description: "1.5k viewers",
  // ),
  // PopularEvents(
  //   id: 7,
  //   image: "assets/images/basketball.png",
  //   title: "Basketball",
  //   description: "1.5k viewers",
  // ),
  // PopularEvents(
  //   id: 8,
  //   image: "assets/images/volleyball.png",
  //   title: "Volleyball",
  //   description: "1.5k viewers",
  // ),
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
