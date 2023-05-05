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
    description: "On\nUdinese Tv",
  ),
  PopularEvents(
    id: 2,
    image: "assets/images/channel2.jpg",
    title: "Arise Tv",
    description: "On\nOil & Gas",
  ),
  PopularEvents(
    id: 3,
    image: "assets/images/channel3.png",
    title: "Denail",
    description: "On\nVITOTVO",
  ),
  PopularEvents(
    id: 4,
    image: "assets/images/channel5.jpg",
    title: "Felt soul",
    description: "On\nBasketball",
  ),
  PopularEvents(
    id: 5,
    image: "assets/images/channel3.png",
    title: "Denail",
    description: "On\nVITOTVO",
  ),
  PopularEvents(
    id: 6,
    image: "assets/images/channel5.jpg",
    title: "Felt soul",
    description: "On\nBasketball",
  ),
];
