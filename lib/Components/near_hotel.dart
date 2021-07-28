import 'package:flutter/material.dart';
import 'horizonatal_list.dart';

var hotel = ["Le Meridien", "Radisson Blu", "Momm Inn", "The Lalit"];
var hotelImage = [
  "images/leMeridien.jpg",
  "images/radissonBlu.jpg",
  "images/mommInn.jpg",
  "images/theLalit.jpg"
];

class NearYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HorizontalList(
      title: hotel,
      image: hotelImage,
    );
  }
}
