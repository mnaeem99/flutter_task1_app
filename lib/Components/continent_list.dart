import 'package:flutter/material.dart';

class ContinentList extends StatelessWidget {
  final List<String> numbers = [
    'Asia',
    'Europe',
    'East',
    'Africa',
  ];
  final List<Color> textColour = [
    Colors.white,
    Colors.black,
    Colors.black,
    Colors.black,
  ];
  final List<Color> backgroundColour = [
    Colors.blue[900],
    Colors.black12,
    Colors.black12,
    Colors.black12,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 80.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  numbers[index].toString(),
                  style: TextStyle(color: textColour[index], fontSize: 14.0),
                ),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                color: backgroundColour[index],
              ),
            );
          }),
    );
  }
}
