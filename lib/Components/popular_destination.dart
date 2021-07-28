import 'package:flutter/material.dart';
import 'horizonatal_list.dart';

var dest = ["India", "Las Vegas", "Dubai", "Greece"];
var destImage = [
  "images/india.jpg",
  "images/lasVegas.jpg",
  "images/dubai.jpg",
  "images/greece.jpg"
];

class PopularDestination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HorizontalList(
      title: dest,
      image: destImage,
    );
  }
}
