import 'package:flutter/material.dart';
import 'horizonatal_list.dart';

List city = ["Vienna", "Vennice", "Porto", "Berlin"];
List cityImage = [
  "images/vienna.jpg",
  "images/venice.jpg",
  "images/porto.jpg",
  "images/berlin.jpg"
];

class TopCities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HorizontalList(
      title: city,
      image: cityImage,
    );
  }
}
