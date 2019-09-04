import 'package:movie_app/model/data.dart';

List getAllData() {
  return [
    Data(
      text1: "Iron Man",
      text2: "2 hrs 20 mins",
      text3: "Comedy",
      text4: "assets/images/iron_man.jpg",
    ),
    Data(
      text1: "Avengers EndGame",
      text2: "1 hr 45 mins",
      text3: "Sci-Fi",
      text4: "assets/images/avenger.jpg",
    ),
    Data(
      text1: "Xmen",
      text2: "3 hrs",
      text3: "Sci-Fi",
      text4: "assets/images/xmen.jpg",
    ),
  ];
}
List getNowPlayingData() {
  return [
    Data(
      text1: "Fast & Furious",
      text2: "2h 16m",
      text3: "Comedy",
      text4: "assets/images/fast.jpg",
    ),
    Data(
      text1: "The Lion King",
      text2: "1h 58m",
      text3: "Family",
      text4: "assets/images/lionking.jpg",
    ),
    Data(
      text1: "Aladdin",
      text2: "2h 9m",
      text3: "Romance",
      text4: "assets/images/aladin.jpg",
    ),
  ];
}
